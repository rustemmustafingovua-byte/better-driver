import 'dart:async';
import 'dart:math' as math;

import 'package:geolocator/geolocator.dart';
import 'package:sensors_plus/sensors_plus.dart';

/// GPS trust state, mirroring BlindDriver's on-screen indicator:
/// ✓ trusted, ⚠ weak, ✕ lost, ⚡ jammed.
enum GpsTrust { trusted, weak, lost, jammed, unknown }

/// Position source used to draw the marker.
enum PositionSource { gps, network, deadReckoning }

class PositionFix {
  final double latitude;
  final double longitude;
  final double accuracy;
  final double speedKmh;
  final double heading;
  final GpsTrust trust;
  final PositionSource source;
  final DateTime at;
  final Duration sinceLastGps;

  const PositionFix({
    required this.latitude,
    required this.longitude,
    required this.accuracy,
    required this.speedKmh,
    required this.heading,
    required this.trust,
    required this.source,
    required this.at,
    required this.sinceLastGps,
  });
}

/// Fuses GPS, motion sensors and network position into one trustworthy fix.
///
/// Rejects implausible jumps (GPS spoofing), detects jamming via accelerometer
/// behaviour + frozen coordinates, and keeps the marker moving along the route
/// by dead reckoning when no trusted fix exists.
class PositionService {
  static const double _maxPlausibleJumpM = 300.0;
  static const double _weakAccuracyM = 30.0;
  static const Duration _jammingWindow = Duration(seconds: 15);

  final _controller = StreamController<PositionFix>.broadcast();
  Stream<PositionFix> get fixes => _controller.stream;

  StreamSubscription<Position>? _gpsSub;
  StreamSubscription<AccelerometerEvent>? _accelSub;
  StreamSubscription<GyroscopeEvent>? _gyroSub;
  StreamSubscription<Position>? _networkSub;

  Position? _lastTrustedGps;
  DateTime? _lastTrustedAt;

  double _speedKmh = 0;
  double _heading = 0;
  double _estimatedErrorM = 0;
  DateTime? _jammingSince;
  GpsTrust _lastTrust = GpsTrust.unknown;
  bool _frozenCoordinates = false;
  Position? _lastRawPosition;

  double _gyroHeading = 0;

  /// Distance (meters) walked by dead reckoning since the last trusted GPS.
  double _reckonedDistance = 0;

  /// Manual offset applied by the driver via ↑100 / ↓100.
  double _manualOffsetM = 0;

  bool get hasTrustedGps => _lastTrustedGps != null;

  DateTime? get lastTrustedAt => _lastTrustedAt;

  GpsTrust get currentTrust => _lastTrust;

  Position? get lastTrustedPosition => _lastTrustedGps;

  double get estimatedErrorM => _estimatedErrorM;

  double get manualOffsetM => _manualOffsetM;

  /// Start listening to GPS, sensors and network position.
  Future<void> start() async {
    await stop();

    _gpsSub = Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.bestForNavigation,
        distanceFilter: 1,
      ),
    ).listen(_onGps, onError: (_) => _markLost());

    try {
      _accelSub = accelerometerEventStream().listen(_onAccelerometer);
    } catch (_) {}

    try {
      _gyroSub = gyroscopeEventStream().listen(_onGyro);
    } catch (_) {}

    try {
      _networkSub = Geolocator.getPositionStream(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.low,
          distanceFilter: 50,
        ),
      ).listen(_onNetwork);
    } catch (_) {}
  }

  Future<void> stop() async {
    await _gpsSub?.cancel();
    await _accelSub?.cancel();
    await _gyroSub?.cancel();
    await _networkSub?.cancel();
    _gpsSub = null;
    _accelSub = null;
    _gyroSub = null;
    _networkSub = null;
  }

  // ---------------------------------------------------------------------------

  void _onGps(Position position) {
    final raw = position;

    // Detect frozen coordinates (spoofers often hold a fixed point).
    if (_lastRawPosition != null) {
      final moved = _distanceBetween(_lastRawPosition!, raw);
      _frozenCoordinates = moved < 1.0 && raw.speed < 0.5;
    } else {
      _frozenCoordinates = false;
    }
    _lastRawPosition = raw;

    final jump = _lastTrustedGps == null
        ? 0.0
        : _distanceBetween(_lastTrustedGps!, raw);

    // Reject implausible teleport.
    if (_lastTrustedGps != null && jump > _maxPlausibleJumpM) {
      _emit(raw, GpsTrust.jammed, PositionSource.network);
      return;
    }

    GpsTrust trust;
    if (raw.accuracy <= 15) {
      trust = GpsTrust.trusted;
    } else if (raw.accuracy <= _weakAccuracyM) {
      trust = GpsTrust.weak;
    } else {
      trust = GpsTrust.lost;
    }

    if (_frozenCoordinates || _isJamming()) {
      trust = GpsTrust.jammed;
    }

    _acceptTrusted(raw, trust);
  }

  void _acceptTrusted(Position position, GpsTrust trust) {
    _lastTrustedGps = position;
    _lastTrustedAt = DateTime.now();
    _lastTrust = trust;
    _speedKmh = position.speed * 3.6;
    if (position.heading >= 0) {
      _heading = position.heading;
    }
    _estimatedErrorM = position.accuracy;
    _reckonedDistance = 0;
    _manualOffsetM = 0;
    _jammingSince = null;
    _emit(position, trust, PositionSource.gps);
  }

  void _onNetwork(Position position) {
    // Network position only nudges the estimate when GPS is untrusted.
    if (_lastTrust == GpsTrust.jammed || _lastTrust == GpsTrust.lost) {
      final last = _lastTrustedGps;
      if (last != null) {
        final drift = _distanceBetween(last, position);
        if (drift > 100 && drift < 2000) {
          _emit(position, _lastTrust, PositionSource.network);
        }
      }
    }
  }

  void _onAccelerometer(AccelerometerEvent event) {
    final magnitude =
        math.sqrt(event.x * event.x + event.y * event.y + event.z * event.z);
    final deviation = (magnitude - 9.81).abs();

    // Jamming floods the GNSS band with noise — the phone reports violent
    // micro-vibrations even when the car is still.
    if (deviation > 2.5) {
      _jammingSince ??= DateTime.now();
    } else if (deviation < 0.6 && _jammingSince != null) {
      _jammingSince = null;
    }

    // Movement detection for dead reckoning.
    if (deviation > 0.35) {
      _speedKmh = (_speedKmh + deviation * 2).clamp(0, 180);
    } else {
      _speedKmh = (_speedKmh * 0.85).clamp(0, 180);
    }
  }

  void _onGyro(GyroscopeEvent event) {
    _gyroHeading = (_gyroHeading + event.z * 57.2958) % 360;
    if (_gyroHeading < 0) _gyroHeading += 360;
    if (_lastTrust != GpsTrust.trusted) {
      _heading = _gyroHeading;
    }
  }

  void _markLost() {
    _lastTrust = GpsTrust.lost;
    _emitDeadReckoning();
  }

  bool _isJamming() {
    if (_jammingSince == null) return false;
    return DateTime.now().difference(_jammingSince!) < _jammingWindow;
  }

  void _emitDeadReckoning() {
    final base = _lastTrustedGps;
    if (base == null) return;

    // Move the marker along its heading at the last known speed.
    final radians = _heading * math.pi / 180;
    final metersPerMs = _speedKmh / 3600 / 1000;
    final elapsed = _lastTrustedAt == null
        ? 0.0
        : DateTime.now().difference(_lastTrustedAt!).inMilliseconds.toDouble();

    final traveled = metersPerMs * elapsed;
    _reckonedDistance += traveled;

    final latDelta = (traveled * math.cos(radians)) / 111320;
    final lonDelta =
        (traveled * math.sin(radians)) / (111320 * math.cos(base.latitude * math.pi / 180));

    final estimate = Position(
      latitude: base.latitude + latDelta,
      longitude: base.longitude + lonDelta,
      timestamp: DateTime.now(),
      accuracy: _estimatedErrorM + _reckonedDistance * 0.35,
      altitude: base.altitude,
      altitudeAccuracy: base.altitudeAccuracy,
      heading: _heading,
      headingAccuracy: 180,
      speed: _speedKmh / 3.6,
      speedAccuracy: 1,
    );

    _estimatedErrorM = _reckonedDistance * 0.35;
    _emit(estimate, _lastTrust == GpsTrust.unknown ? GpsTrust.lost : _lastTrust,
        PositionSource.deadReckoning);
  }

  void _emit(Position position, GpsTrust trust, PositionSource source) {
    _lastTrust = trust;
    _controller.add(PositionFix(
      latitude: position.latitude,
      longitude: position.longitude,
      accuracy: position.accuracy,
      speedKmh: position.speed * 3.6,
      heading: _heading,
      trust: trust,
      source: source,
      at: DateTime.now(),
      sinceLastGps: _lastTrustedAt == null
          ? Duration.zero
          : DateTime.now().difference(_lastTrustedAt!),
    ));
  }

  /// Shift the marker forward/backward along the route (BlindDriver ↑100 / ↓100).
  void adjustOffset(double meters) {
    _manualOffsetM += meters;
  }

  /// Set manual offset directly (for tuning/more screens).
  void setManualOffset(double meters) {
    _manualOffsetM = meters;
  }

  double _distanceBetween(Position a, Position b) {
    return Geolocator.distanceBetween(
      a.latitude,
      a.longitude,
      b.latitude,
      b.longitude,
    );
  }

  void dispose() {
    stop();
    _controller.close();
  }
}
