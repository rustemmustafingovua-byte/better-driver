import 'dart:async';
import 'dart:convert';
import 'dart:math' as math;
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TripAnalytics {
  static const _storageKey = 'trip_analytics';

  final List<TripPoint> _points = [];
  StreamController<TripStats>? _statsController;
  StreamSubscription<Position>? _positionSub;

  bool _isRecording = false;
  DateTime? _tripStart;
  double _totalDistanceM = 0;
  int _stopCount = 0;
  DateTime? _lastMoveTime;
  double _stationarySeconds = 0;

  bool get isRecording => _isRecording;
  Stream<TripStats>? get statsStream => _statsController?.stream;

  Future<void> startRecording() async {
    if (_isRecording) return;
    _isRecording = true;
    _tripStart = DateTime.now();
    _totalDistanceM = 0;
    _stopCount = 0;
    _stationarySeconds = 0;
    _points.clear();

    _statsController = StreamController.broadcast();

    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getString(_storageKey);
    if (saved != null) {
      try {
        final data = json.decode(saved) as Map<String, dynamic>;
        _totalDistanceM = (data['totalDistanceM'] as num?)?.toDouble() ?? 0;
      } catch (_) {}
    }
  }

  void onPosition(Position position) {
    if (!_isRecording) return;

    final point = TripPoint(
      lat: position.latitude,
      lng: position.longitude,
      speedKmh: position.speed * 3.6,
      at: DateTime.now(),
    );

    if (_points.isNotEmpty) {
      final last = _points.last;
      final dist = _distanceBetween(last.lat, last.lng, point.lat, point.lng);
      if (dist > 5) {
        _totalDistanceM += dist;
        _lastMoveTime = DateTime.now();
      }
    }

    _points.add(point);

    if (_lastMoveTime != null && DateTime.now().difference(_lastMoveTime!).inSeconds > 30) {
      if (_points.length > 1 && _points[_points.length - 2].speedKmh > 5) {
        _stopCount++;
      }
    }

    _statsController?.add(_computeStats());
  }

  Future<void> stopRecording() async {
    if (!_isRecording) return;
    _isRecording = false;

    await _positionSub?.cancel();
    _positionSub = null;

    final stats = _computeStats();
    final trip = TripRecord(
      start: _tripStart ?? DateTime.now(),
      end: DateTime.now(),
      distanceM: _totalDistanceM,
      durationS: _tripStart != null ? DateTime.now().difference(_tripStart!).inSeconds : 0,
      stopCount: _stopCount,
      avgSpeedKmh: stats.avgSpeedKmh,
    );

    await _saveTrip(trip);
    await _persistTotalDistance();

    _statsController?.close();
    _statsController = null;
  }

  TripStats _computeStats() {
    final duration = _tripStart != null ? DateTime.now().difference(_tripStart!).inSeconds : 0;
    final avgSpeed = duration > 0 ? _totalDistanceM / duration * 3.6 : 0.0;

    return TripStats(
      distanceM: _totalDistanceM,
      durationS: duration,
      avgSpeedKmh: avgSpeed,
      stopCount: _stopCount,
      pointCount: _points.length,
    );
  }

  Future<void> _saveTrip(TripRecord trip) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getStringList('trip_records') ?? <String>[];
      raw.add(json.encode(trip.toJson()));
      await prefs.setStringList('trip_records', raw.take(500).toList());
    } catch (_) {}
  }

  Future<void> _persistTotalDistance() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setDouble('total_distance_m', _totalDistanceM);
    } catch (_) {}
  }

  Future<List<TripRecord>> getHistory() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getStringList('trip_records') ?? <String>[];
      final trips = <TripRecord>[];
      for (final entry in raw) {
        try {
          final data = json.decode(entry) as Map<String, dynamic>;
          trips.add(TripRecord.fromJson(data));
        } catch (_) {}
      }
      return trips.reversed.toList();
    } catch (_) {
      return [];
    }
  }

  Future<double> getTotalDistanceKm() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return (prefs.getDouble('total_distance_m') ?? 0) / 1000;
    } catch (_) {
      return 0;
    }
  }

  double _distanceBetween(double lat1, double lon1, double lat2, double lon2) {
    return Geolocator.distanceBetween(lat1, lon1, lat2, lon2);
  }

  void dispose() {
    _positionSub?.cancel();
    _statsController?.close();
  }
}

class TripPoint {
  final double lat;
  final double lng;
  final double speedKmh;
  final DateTime at;

  const TripPoint({
    required this.lat,
    required this.lng,
    required this.speedKmh,
    required this.at,
  });

  Map<String, dynamic> toJson() => {
    'lat': lat,
    'lng': lng,
    'speed': speedKmh,
    'at': at.toIso8601String(),
  };
}

class TripStats {
  final double distanceM;
  final int durationS;
  final double avgSpeedKmh;
  final int stopCount;
  final int pointCount;

  const TripStats({
    required this.distanceM,
    required this.durationS,
    required this.avgSpeedKmh,
    required this.stopCount,
    required this.pointCount,
  });

  String get distanceText => distanceM >= 1000 ? '${(distanceM / 1000).toStringAsFixed(1)} км' : '${distanceM.round()} м';
  String get durationText {
    final h = durationS ~/ 3600;
    final m = (durationS % 3600) ~/ 60;
    if (h > 0) return '$h год $m хв';
    return '$m хв';
  }
}

class TripRecord {
  final DateTime start;
  final DateTime end;
  final double distanceM;
  final int durationS;
  final int stopCount;
  final double avgSpeedKmh;

  const TripRecord({
    required this.start,
    required this.end,
    required this.distanceM,
    required this.durationS,
    required this.stopCount,
    required this.avgSpeedKmh,
  });

  Map<String, dynamic> toJson() => {
    'start': start.toIso8601String(),
    'end': end.toIso8601String(),
    'distanceM': distanceM,
    'durationS': durationS,
    'stopCount': stopCount,
    'avgSpeedKmh': avgSpeedKmh,
  };

  factory TripRecord.fromJson(Map<String, dynamic> json) => TripRecord(
    start: DateTime.parse(json['start'] as String),
    end: DateTime.parse(json['end'] as String),
    distanceM: (json['distanceM'] as num).toDouble(),
    durationS: json['durationS'] as int,
    stopCount: json['stopCount'] as int,
    avgSpeedKmh: (json['avgSpeedKmh'] as num).toDouble(),
  );
}
