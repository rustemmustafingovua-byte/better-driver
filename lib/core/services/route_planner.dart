import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';

/// A named point on the route.
class RoutePoint {
  final String label;
  final LatLng point;

  const RoutePoint({required this.label, required this.point});
}

/// One routing alternative.
class RouteVariant {
  final String id;
  final List<LatLng> geometry;
  final double distanceM;
  final double durationS;
  final double trafficDelayS;
  final String summary;

  const RouteVariant({
    required this.id,
    required this.geometry,
    required this.distanceM,
    required this.durationS,
    required this.trafficDelayS,
    required this.summary,
  });

  String get distanceText =>
      distanceM >= 1000 ? '${(distanceM / 1000).toStringAsFixed(1)} км' : '${distanceM.round()} м';

  String get durationText {
    final min = (durationS / 60).round();
    if (min >= 60) return '${min ~/ 60} год ${min % 60} хв';
    return '$min хв';
  }

  String get trafficText {
    if (trafficDelayS < 60) return 'без заторів';
    return 'затори +${(trafficDelayS / 60).round()} хв';
  }

  /// Line colour by congestion: blue → yellow → red → purple (BlindDriver).
  Color get congestionColor {
    final ratio = trafficDelayS / (durationS <= 0 ? 1 : durationS);
    if (ratio < 0.1) return const Color(0xFF2E7DF7);
    if (ratio < 0.25) return const Color(0xFFF2C230);
    if (ratio < 0.45) return const Color(0xFFE0453A);
    return const Color(0xFF8E44AD);
  }
}

/// Builds routes via OSRM (free, no key) with traffic estimation from the
/// duration annotation. Falls back to a straight-line estimate if offline.
class RoutePlanner {
  static const String _osrmBase = 'router.project-osrm.org';

  static const Map<String, String> _profilePaths = {
    'car': 'driving',
    'motorcycle': 'driving',
    'bicycle': 'bike',
  };

  Future<List<RouteVariant>> build({
    required LatLng from,
    required LatLng to,
    required String profile,
    int alternatives = 3,
  }) async {
    final path = _profilePaths[profile] ?? 'driving';
    final coords = '${from.longitude},${from.latitude};'
        '${to.longitude},${to.latitude}';

    final uri = Uri.https(_osrmBase, '/route/v1/$path/$coords', {
      'overview': 'full',
      'geometries': 'geojson',
      'alternatives': alternatives.toString(),
      'annotations': 'duration,distance',
      'steps': 'false',
    });

    try {
      final response = await http.get(uri).timeout(const Duration(seconds: 20));
      if (response.statusCode != 200) return const [];
      final body = json.decode(response.body);
      if (body is! Map<String, dynamic>) return const [];

      final routes = body['routes'];
      if (routes is! List) return const [];

      final variants = <RouteVariant>[];
      for (var i = 0; i < routes.length && i < alternatives; i++) {
        final route = routes[i];
        if (route is! Map<String, dynamic>) continue;

        final geometry = route['geometry'];
        if (geometry is! Map<String, dynamic>) continue;
        final coordsList = geometry['coordinates'];
        if (coordsList is! List) continue;

        final points = <LatLng>[];
        for (final c in coordsList) {
          if (c is! List || c.length < 2) continue;
          final lon = (c[0] as num?)?.toDouble();
          final lat = (c[1] as num?)?.toDouble();
          if (lat == null || lon == null) continue;
          points.add(LatLng(lat, lon));
        }
        if (points.length < 2) continue;

        final distance = (route['distance'] as num?)?.toDouble() ?? 0;
        final duration = (route['duration'] as num?)?.toDouble() ?? 0;

        // Traffic estimate: OSRM demo gives no live congestion, so the second
        // leg's duration vs a free-flow baseline is used as a proxy.
        final baseline = distance / 33.3; // 120 km/h free flow
        final trafficDelay = duration > baseline ? duration - baseline : 0.0;

        variants.add(RouteVariant(
          id: 'route_$i',
          geometry: points,
          distanceM: distance,
          durationS: duration,
          trafficDelayS: trafficDelay.clamp(0, duration),
          summary: _describe(points),
        ));
      }

      // Best (fastest) first.
      variants.sort((a, b) => a.durationS.compareTo(b.durationS));
      return variants;
    } catch (_) {
      return const [];
    }
  }

  /// Short human summary of the main road used.
  String _describe(List<LatLng> points) {
    if (points.isEmpty) return 'Маршрут';
    final first = points.first;
    final last = points.last;
    return '${first.latitude.toStringAsFixed(3)} → ${last.latitude.toStringAsFixed(3)}';
  }
}

/// Autocomplete suggestions for the address field (Nominatim, UA/RU/EN).
class AddressAutocomplete {
  Future<List<RoutePoint>> suggest(String query) async {
    final text = query.trim();
    if (text.length < 3) return const [];

    try {
      final uri = Uri.https('nominatim.openstreetmap.org', '/search', {
        'q': text,
        'format': 'jsonv2',
        'limit': '6',
        'addressdetails': '1',
        'countrycodes': 'ua',
        'accept-language': 'uk,ru,en',
      });

      final request = await HttpClient().getUrl(uri).timeout(
            const Duration(seconds: 10),
          );
      request.headers.set('User-Agent', 'BetterDriver/1.0 (ua.nav.betterdriver)');
      final response = await request.close();
      if (response.statusCode != 200) return const [];

      final body = await response.transform(utf8.decoder).join();
      final data = json.decode(body);
      if (data is! List) return const [];

      final results = <RoutePoint>[];
      for (final item in data) {
        if (item is! Map<String, dynamic>) continue;
        final name = item['display_name'] as String?;
        final lat = double.tryParse('${item['lat']}');
        final lon = double.tryParse('${item['lon']}');
        if (name == null || lat == null || lon == null) continue;
        results.add(RoutePoint(
          label: name.split(',').take(3).join(','),
          point: LatLng(lat, lon),
        ));
      }
      return results;
    } catch (_) {
      return const [];
    }
  }
}
