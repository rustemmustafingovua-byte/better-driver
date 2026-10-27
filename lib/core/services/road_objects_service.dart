import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:latlong2/latlong.dart';

class RoadObject {
  final LatLng point;
  final String type;
  final String? name;

  const RoadObject({
    required this.point,
    required this.type,
    this.name,
  });

  IconData get icon {
    switch (type) {
      case 'signal':
        return Icons.traffic_rounded;
      case 'crossing':
        return Icons.railway_alert;
      case 'rail':
        return Icons.train;
      case 'bump':
        return Icons.warning_amber_rounded;
      case 'hump':
        return Icons.waves;
      case 'table':
        return Icons.height;
      case 'cushion':
        return Icons.check_circle_outline;
      case 'bike':
        return Icons.directions_bike;
      default:
        return Icons.warning_rounded;
    }
  }

  Color get color {
    switch (type) {
      case 'signal':
        return const Color(0xFFF2C230);
      case 'crossing':
        return const Color(0xFFE0453A);
      case 'rail':
        return const Color(0xFF8E44AD);
      case 'bump':
        return const Color(0xFFE67E22);
      case 'hump':
        return const Color(0xFF27AE60);
      case 'table':
        return const Color(0xFF2980B9);
      case 'cushion':
        return const Color(0xFF1ABC9C);
      case 'bike':
        return const Color(0xFF3498DB);
      default:
        return Colors.blueGrey;
    }
  }
}

class RoadObjectsService {
  static const _assetPath = 'assets/data/road_objects_ua.json';
  List<RoadObject> _objects = const [];
  bool _loaded = false;

  bool get isLoaded => _loaded;
  List<RoadObject> get objects => _objects;

  Future<void> load() async {
    if (_loaded) return;
    try {
      final raw = await rootBundle.loadString(_assetPath);
      final decoded = json.decode(raw) as Map<String, dynamic>;
      final points = decoded['points'] as List? ?? const [];

      final parsed = <RoadObject>[];
      for (final item in points) {
        if (item is! List || item.length < 3) continue;
        final lat = (item[0] as num?)?.toDouble();
        final lon = (item[1] as num?)?.toDouble();
        final type = item[2] as String?;
        if (lat == null || lon == null || type == null) continue;

        parsed.add(RoadObject(
          point: LatLng(lat, lon),
          type: type,
        ));
      }

      _objects = parsed;
      _loaded = true;
    } catch (_) {
      _objects = const [];
      _loaded = false;
    }
  }

  Future<void> loadTrafficCalmingKyiv() async {
    if (!_loaded) return;
    try {
      final raw = await rootBundle.loadString('assets/data/traffic_calming_kyiv.json');
      final decoded = json.decode(raw) as Map<String, dynamic>;
      final points = decoded['points'] as List? ?? const [];

      final parsed = <RoadObject>[];
      for (final item in points) {
        if (item is! List || item.length < 3) continue;
        final lat = (item[0] as num?)?.toDouble();
        final lon = (item[1] as num?)?.toDouble();
        final type = item[2] as String?;
        if (lat == null || lon == null || type == null) continue;

        parsed.add(RoadObject(
          point: LatLng(lat, lon),
          type: type,
        ));
      }

      _objects = [..._objects, ...parsed];
    } catch (_) {
      // Traffic calming is optional.
    }
  }

  List<RoadObject> nearby(LatLng position, {double radiusM = 500}) {
    if (!_loaded) return const [];
    final latDelta = radiusM / 111320;
    final lonDelta = radiusM / (111320 * math.cos(position.latitude * math.pi / 180));

    return _objects.where((obj) {
      final dLat = (obj.point.latitude - position.latitude).abs();
      final dLon = (obj.point.longitude - position.longitude).abs();
      return dLat <= latDelta && dLon <= lonDelta;
    }).toList();
  }
}
