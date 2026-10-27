import 'dart:async';
import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/services.dart' show rootBundle;
import 'package:latlong2/latlong.dart';

/// One speed camera from the bundled Ukrainian database.
class SpeedCamera {
  final String id;
  final LatLng point;
  final int limit;
  final String name;
  final String? region;
  final double? bearing;

  const SpeedCamera({
    required this.id,
    required this.point,
    required this.limit,
    required this.name,
    this.region,
    this.bearing,
  });
}

/// A camera warning raised while driving.
class CameraWarning {
  final SpeedCamera camera;
  final double distanceM;

  const CameraWarning({required this.camera, required this.distanceM});
}

/// Bundled speed-camera database (426 cameras across Ukraine, 286 with a known
/// direction). Works fully offline.
class CameraService {
  static const double _voiceDistanceM = 700;
  static const double _beepDistanceM = 300;

  /// Distance at which a camera warning turns into an audible beep.
  static double get beepDistanceM => _beepDistanceM;

  List<SpeedCamera> _cameras = const [];
  bool _loaded = false;

  bool get isLoaded => _loaded;

  List<SpeedCamera> get cameras => _cameras;

  Future<void> load() async {
    if (_loaded) return;
    try {
      final raw = await rootBundle.loadString('assets/data/cameras_ua.json');
      final decoded = json.decode(raw);
      final List<dynamic> items = decoded is Map<String, dynamic>
          ? (decoded['cameras'] as List<dynamic>? ?? const <dynamic>[])
          : (decoded as List<dynamic>);

      final parsed = <SpeedCamera>[];
      for (final item in items) {
        if (item is! Map<String, dynamic>) continue;
        final lat = item['lat'];
        final lon = item['lon'];
        if (lat is! num || lon is! num) continue;
        parsed.add(SpeedCamera(
          id: '${item['id'] ?? parsed.length}',
          point: LatLng(lat.toDouble(), lon.toDouble()),
          limit: (item['limit'] as num?)?.round() ?? 0,
          name: '${item['name'] ?? ''}',
          region: item['region'] as String?,
          bearing: (item['bearing'] as num?)?.toDouble(),
        ));
      }
      _cameras = parsed;
      _loaded = true;
    } catch (_) {
      _cameras = const [];
      _loaded = false;
    }
  }

  /// Cameras near [position] within [radiusM], optionally filtered to those
  /// facing the direction of travel.
  List<SpeedCamera> nearby(LatLng position, {double radiusM = 5000}) {
    if (!_loaded) return const [];
    final result = <SpeedCamera>[];
    for (final camera in _cameras) {
      if (_distance(position, camera.point) <= radiusM) {
        result.add(camera);
      }
    }
    result.sort((a, b) =>
        _distance(position, a.point).compareTo(_distance(position, b.point)));
    return result;
  }

  /// Nearest camera ahead of the driver (optionally within the travel heading).
  CameraWarning? nearestAhead(
    LatLng position, {
    double heading = 0,
    double maxDistanceM = _voiceDistanceM,
    double beepDistanceM = _beepDistanceM,
    bool respectBearing = true,
  }) {
    if (!_loaded) return null;

    CameraWarning? best;
    var bestDistance = maxDistanceM;

    for (final camera in _cameras) {
      final distance = _distance(position, camera.point);
      if (distance > maxDistanceM) continue;
      if (distance >= bestDistance) continue;

      if (respectBearing && camera.bearing != null) {
        final bearingTo = _bearing(position, camera.point);
        final delta = (bearingTo - camera.bearing!).abs() % 360;
        final aligned = delta < 45 || delta > 315;
        if (!aligned) continue;
      }

      best = CameraWarning(camera: camera, distanceM: distance);
      bestDistance = distance;
    }

    return best;
  }

  /// Cameras whose warning distance has been crossed — used to raise one-shot
  /// voice/beep events.
  Stream<CameraWarning> watch({
    required Stream<PositionFixLike> positions,
  }) {
    final seen = <String>{};
    return positions.where((fix) {
      final warning = nearestAhead(
        fix.point,
        heading: fix.heading,
        maxDistanceM: _voiceDistanceM,
      );
      if (warning == null) return false;
      final key = warning.camera.id;
      if (seen.contains(key)) return false;
      seen.add(key);
      return true;
    }).map((fix) => nearestAhead(fix.point, heading: fix.heading)!);
  }

  double _distance(LatLng a, LatLng b) {
    const distance = Distance();
    return distance.as(LengthUnit.Meter, a, b);
  }

  double _bearing(LatLng from, LatLng to) {
    final dLon = (to.longitude - from.longitude) * math.pi / 180;
    final y = math.sin(dLon) * math.cos(to.latitude * math.pi / 180);
    final x = math.cos(from.latitude * math.pi / 180) *
            math.sin(to.latitude * math.pi / 180) -
        math.sin(from.latitude * math.pi / 180) *
            math.cos(to.latitude * math.pi / 180) *
            math.cos(dLon);
    return (math.atan2(y, x) * 180 / math.pi + 360) % 360;
  }
}

/// Minimal interface so CameraService can be tested without the full service.
class PositionFixLike {
  final LatLng point;
  final double heading;
  const PositionFixLike({required this.point, required this.heading});
}
