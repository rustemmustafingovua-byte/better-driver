import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;
import 'package:flutter/services.dart' show rootBundle;
import 'package:latlong2/latlong.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RouteGraphService {
  static const _graphAsset = 'assets/data/ukraine_road_graph.json';
  static const _downloadedGraphKey = 'downloaded_graph_path';
  List<Map<String, dynamic>> _nodes = const [];
  List<Map<String, dynamic>> _edges = const [];
  bool _loaded = false;

  bool get isLoaded => _loaded;
  int get nodeCount => _nodes.length;
  int get edgeCount => _edges.length;

  Future<void> load() async {
    if (_loaded) return;

    try {
      final prefs = await SharedPreferences.getInstance();
      final downloadedPath = prefs.getString(_downloadedGraphKey);

      if (downloadedPath != null && await File(downloadedPath).exists()) {
        final raw = await File(downloadedPath).readAsString();
        await _parseGraph(raw);
        return;
      }

      final raw = await rootBundle.loadString(_graphAsset);
      await _parseGraph(raw);
    } catch (e) {
      _nodes = const [];
      _edges = const [];
      _loaded = false;
    }
  }

  Future<void> _parseGraph(String raw) async {
    try {
      final data = json.decode(raw) as Map<String, dynamic>;
      _nodes = (data['nodes'] as List).cast<Map<String, dynamic>>();
      _edges = (data['edges'] as List).cast<Map<String, dynamic>>();
      _loaded = true;
    } catch (_) {
      rethrow;
    }
  }

  Future<void> downloadGraph(String url) async {
    try {
      final response = await HttpClient().getUrl(Uri.parse(url))
          .then((req) => req.close())
          .then((resp) => resp.transform(utf8.decoder).join());

      final dir = await getApplicationSupportDirectory();
      final file = File('${dir.path}/ukraine_road_graph.json');
      await file.writeAsString(response);

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_downloadedGraphKey, file.path);

      await _parseGraph(response);
    } catch (e) {
      throw Exception('Failed to download graph: $e');
    }
  }

  List<LatLng>? findPath(LatLng from, LatLng to) {
    if (!_loaded || _nodes.isEmpty) return null;

    final fromNode = _nearestNode(from.latitude, from.longitude, 200);
    final toNode = _nearestNode(to.latitude, to.longitude, 200);

    if (fromNode == null || toNode == null) return null;

    final path = _dijkstra(fromNode['id'] as int, toNode['id'] as int);
    if (path.isEmpty) return null;

    return path.map((id) {
      final node = _nodes.firstWhere((n) => n['id'] == id);
      return LatLng(
        (node['lat'] as num).toDouble(),
        (node['lon'] as num).toDouble(),
      );
    }).toList();
  }

  Map<String, dynamic>? _nearestNode(double lat, double lon, double radiusM) {
    Map<String, dynamic>? nearest;
    double minDist = double.infinity;

    for (final node in _nodes) {
      final nLat = (node['lat'] as num).toDouble();
      final nLon = (node['lon'] as num).toDouble();
      final dist = _haversineDistance(lat, lon, nLat, nLon);
      if (dist < minDist && dist <= radiusM) {
        minDist = dist;
        nearest = node;
      }
    }

    return nearest;
  }

  List<int> _dijkstra(int startId, int endId) {
    final distances = <int, double>{};
    final previous = <int, int?>{};
    final visited = <int>{};
    final queue = <int>[];

    for (final node in _nodes) {
      final id = node['id'] as int;
      distances[id] = double.infinity;
      previous[id] = null;
      queue.add(id);
    }

    distances[startId] = 0;

    while (queue.isNotEmpty) {
      queue.sort((a, b) => (distances[a] ?? double.infinity).compareTo(distances[b] ?? double.infinity));
      final current = queue.removeAt(0);

      if (current == endId) break;
      if (visited.contains(current)) continue;
      visited.add(current);

      for (final edge in _edges) {
        int? neighbor;
        double weight;

        if ((edge['from'] as int) == current) {
          neighbor = edge['to'] as int;
          weight = (edge['weight'] as num?)?.toDouble() ?? 1.0;
        } else if ((edge['to'] as int) == current) {
          neighbor = edge['from'] as int;
          weight = (edge['weight'] as num?)?.toDouble() ?? 1.0;
        } else {
          continue;
        }

        if (!queue.contains(neighbor)) continue;

        final alt = (distances[current] ?? double.infinity) + weight;
        if (alt < (distances[neighbor] ?? double.infinity)) {
          distances[neighbor] = alt;
          previous[neighbor] = current;
        }
      }
    }

    final path = <int>[];
    int? curr = endId;
    while (curr != null && curr != startId) {
      path.add(curr);
      curr = previous[curr];
    }
    if (curr == startId) {
      path.add(startId);
      return path.reversed.toList();
    }
    return [];
  }

  double _haversineDistance(double lat1, double lon1, double lat2, double lon2) {
    const r = 6371000;
    final phi1 = lat1 * math.pi / 180;
    final phi2 = lat2 * math.pi / 180;
    final dPhi = (lat2 - lat1) * math.pi / 180;
    final dLambda = (lon2 - lon1) * math.pi / 180;

    final a = math.sin(dPhi / 2) * math.sin(dPhi / 2) +
        math.cos(phi1) * math.cos(phi2) *
            math.sin(dLambda / 2) * math.sin(dLambda / 2);
    final c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
    return r * c;
  }
}
