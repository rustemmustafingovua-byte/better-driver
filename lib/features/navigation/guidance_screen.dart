import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:latlong2/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/services/camera_service.dart';
import '../../core/services/position_service.dart';
import '../../core/services/route_planner.dart';
import '../../core/services/road_objects_service.dart';
import 'more_screen.dart';
import 'tuning_screen.dart';

/// Turn-by-turn guidance screen: voice prompts, live position, speed cameras,
/// GPS trust indicator and the BlindDriver ↑100 / ↓100 position correction.
class GuidanceScreen extends StatefulWidget {
  final RouteVariant route;
  final String originLabel;
  final String destinationLabel;
  final LatLng startPoint;
  final PositionFix? startFix;
  final List<SpeedCamera> cameras;
  final List<RoadObject> roadObjects;

  const GuidanceScreen({
    super.key,
    required this.route,
    required this.originLabel,
    required this.destinationLabel,
    required this.startPoint,
    required this.startFix,
    required this.cameras,
    this.roadObjects = const [],
  });

  @override
  State<GuidanceScreen> createState() => _GuidanceScreenState();
}

enum _VoiceMode { all, important, off }

class _GuidanceScreenState extends State<GuidanceScreen> {
  final FlutterTts _tts = FlutterTts();
  final PositionService _position = PositionService();
  final MapController _mapController = MapController();

  StreamSubscription<PositionFix>? _fixSub;
  PositionFix? _fix;

  int _stepIndex = 0;
  double _speedKmh = 0;
  double _manualOffsetM = 0;
  double _estimatedErrorM = 0;

  _VoiceMode _voiceMode = _VoiceMode.all;
  bool _mapFollowsCourse = true;

  String? _lastPromptKey;

  // Tuning parameters loaded from TuningScreen.
  double _tuningTurnAheadM = 200;
  double _tuningArriveM = 30;
  double _tuningCameraWarnM = 400;
  double _tuningCameraBeepM = 300;
  double _tuningOffRouteM = 80;
  double _tuningMissedTurnM = 300;
  bool _tuningTurnHoldEnabled = true;
  double _tuningTurnHoldMaxS = 10;
  bool _tuningMissedTurnEnabled = true;
  bool _tuningBlindDeviationEnabled = false;
  double _tuningBlindDeviationDelayS = 2;
  double _tuningBlindDeviationMinDeg = 10;

  // UI state.
  bool _satAuto = true; // SAT = map follows course, AUTO = automatic

  // Road name cache for guidance instructions.
  final Map<String, String> _roadNameCache = {};
  DateTime? _lastReverseGeocode;

  @override
  void initState() {
    super.initState();
    _initTts();
    _loadTuning();
    _loadSettings();
    _startPosition();
  }

  Future<void> _loadTuning() async {
    final prefs = await SharedPreferences.getInstance();
    if (!mounted) return;
    setState(() {
      _tuningTurnAheadM = prefs.getDouble('turnAheadM') ?? 200;
      _tuningArriveM = prefs.getDouble('arriveM') ?? 30;
      _tuningCameraWarnM = prefs.getDouble('cameraWarnM') ?? 400;
      _tuningCameraBeepM = prefs.getDouble('cameraBeepM') ?? 300;
      _tuningOffRouteM = prefs.getDouble('offRouteM') ?? 80;
      _tuningMissedTurnM = prefs.getDouble('missedTurnM') ?? 300;
      _tuningTurnHoldEnabled = prefs.getBool('turnHoldEnabled') ?? true;
      _tuningTurnHoldMaxS = prefs.getDouble('turnHoldMaxS') ?? 10;
      _tuningMissedTurnEnabled = prefs.getBool('missedTurnEnabled') ?? true;
      _tuningBlindDeviationEnabled = prefs.getBool('blindDeviationEnabled') ?? false;
      _tuningBlindDeviationDelayS = prefs.getDouble('blindDeviationDelayS') ?? 2;
      _tuningBlindDeviationMinDeg = prefs.getDouble('blindDeviationMinDeg') ?? 10;
    });
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    if (!mounted) return;
    setState(() {
      _voiceMode = prefs.getBool('voice_enabled') ?? true
          ? _VoiceMode.all
          : _VoiceMode.off;
    });
  }

  Future<void> _initTts() async {
    try {
      await _tts.setLanguage('uk-UA');
      await _tts.setSpeechRate(0.45);
    } catch (_) {}
  }

  Future<void> _startPosition() async {
    try {
      await _position.start();
    } catch (_) {}

    _fixSub = _position.fixes.listen((fix) {
      if (!mounted) return;
      setState(() {
        _fix = fix;
        _speedKmh = fix.speedKmh;
        _estimatedErrorM = fix.accuracy + fix.sinceLastGps.inSeconds * 3;
        _manualOffsetM = _position.manualOffsetM;
      });
      _evaluate(fix);
      _updateMapRotation(fix);
    });
  }

  void _updateMapRotation(PositionFix fix) {
    if (!_mapFollowsCourse) return;
    final geometry = widget.route.geometry;
    if (geometry.isEmpty) return;
    final here = LatLng(fix.latitude, fix.longitude);
    if (_stepIndex < geometry.length) {
      final bearing = _bearingBetween(here, geometry[_stepIndex]);
      _mapController.rotate(bearing);
    }
    // Auto-zoom: slower near turns, faster on straight roads.
    final speed = _speedKmh;
    double targetZoom = 15;
    if (_stepIndex < geometry.length) {
      final distToNext = _distanceM(here, geometry[_stepIndex]);
      if (distToNext < 300) {
        targetZoom = 17;
      } else if (distToNext < 800) {
        targetZoom = 16;
      } else if (speed > 80) {
        targetZoom = 14;
      } else if (speed > 50) {
        targetZoom = 15;
      }
    }
    final current = _mapController.camera.zoom;
    if ((current - targetZoom).abs() > 0.5) {
      _mapController.move(_mapController.camera.center, targetZoom);
    }
  }

  // ---------------------------------------------------------------------------
  // Guidance logic
  // ---------------------------------------------------------------------------

  void _evaluate(PositionFix fix) async {
    final geometry = widget.route.geometry;
    if (geometry.isEmpty) return;

    final here = LatLng(fix.latitude, fix.longitude);

    // Advance past waypoints we have effectively passed.
    while (_stepIndex < geometry.length) {
      final waypoint = geometry[_stepIndex];
      final distance = _distanceM(here, waypoint);
      if (distance > 80) break;
      _stepIndex++;
    }

    if (_stepIndex >= geometry.length) {
      _announceOnce('arrived', 'Ви прибули у пункт призначення.');
      return;
    }

    final next = geometry[_stepIndex];
    final distanceToNext = _distanceM(here, next);

    // Arrival check using tuning distance.
    if (distanceToNext < _tuningArriveM && _stepIndex >= geometry.length - 1) {
      _announceOnce('arrived', 'Ви прибули у пункт призначення.');
      return;
    }

    // Off-route detection.
    if (distanceToNext > _tuningOffRouteM && _stepIndex > 0) {
      _announceOnce(
        'offroute',
        'Ви зайшли за межі маршруту. Перевірте карту.',
        onlyWhen: _voiceMode == _VoiceMode.all,
      );
    }

    // Missed turn detection.
    if (_tuningMissedTurnEnabled && distanceToNext > _tuningMissedTurnM && _stepIndex > 0) {
      _announceOnce(
        'missedturn',
        'Схоже, ви пропустили поворот. Перевірте маршрут.',
        onlyWhen: _voiceMode == _VoiceMode.all,
      );
    }

    // Get road names for better instructions (throttled to reduce lag).
    String nextRoad = '';
    final now = DateTime.now();
    if (_lastReverseGeocode == null || now.difference(_lastReverseGeocode!) > const Duration(seconds: 10)) {
      nextRoad = await _getRoadName(next);
      _lastReverseGeocode = now;
    } else if (_roadNameCache.isNotEmpty) {
      final key = '${next.latitude.toStringAsFixed(4)},${next.longitude.toStringAsFixed(4)}';
      nextRoad = _roadNameCache[key] ?? '';
    }

    // Turn announcement with tuning distance.
    if (distanceToNext < _tuningTurnAheadM) {
      final bearing = _bearingBetween(here, next);
      final instruction = _bearingToInstruction(bearing);
      String announcement = 'Через ${_tuningTurnAheadM.toInt()} метрів — $instruction.';
      if (nextRoad.isNotEmpty) {
        announcement += ' На $nextRoad.';
      }
      _announceOnce('turn_$_stepIndex', announcement);
    }

    // Speed camera warning using tuning distances.
    if (_voiceMode != _VoiceMode.off) {
      CameraWarning? warning;
      for (final camera in widget.cameras) {
        final d = _distanceM(here, camera.point);
        if (d < _tuningCameraWarnM + 300 && d > _tuningCameraBeepM) {
          warning = CameraWarning(camera: camera, distanceM: d);
          break;
        }
      }
      if (warning != null) {
        final limit = warning.camera.limit;
        if (limit > 0 && _speedKmh > limit + 5) {
          _announceOnce(
            'camera_${warning.camera.id}',
            'Увага, камера контролю швидкості. Ліміт $limit кілометрів на годину.',
          );
        }
      }
    }

    // Jamming notice.
    if (fix.trust == GpsTrust.jammed || fix.trust == GpsTrust.lost) {
      _announceOnce(
        'jammed',
        'GPS недоступний. Веду за розрахунком.',
        onlyWhen: _voiceMode == _VoiceMode.all,
      );
    }
  }

  void _announceOnce(String key, String text, {bool onlyWhen = true}) {
    if (_voiceMode == _VoiceMode.off) return;
    if (_lastPromptKey == key) return;
    _lastPromptKey = key;
    _speak(text);
  }

  Future<void> _speak(String text) async {
    try {
      await _tts.speak(text);
    } catch (_) {}
  }

  void _cycleVoiceMode() {
    setState(() {
      _voiceMode = switch (_voiceMode) {
        _VoiceMode.all => _VoiceMode.important,
        _VoiceMode.important => _VoiceMode.off,
        _VoiceMode.off => _VoiceMode.all,
      };
    });
  }

  IconData get _voiceIcon {
    switch (_voiceMode) {
      case _VoiceMode.all:
        return Icons.volume_up;
      case _VoiceMode.important:
        return Icons.volume_down;
      case _VoiceMode.off:
        return Icons.volume_off;
    }
  }

  Color get _voiceColor {
    switch (_voiceMode) {
      case _VoiceMode.all:
        return const Color(0xFF2E9E5B);
      case _VoiceMode.important:
        return const Color(0xFFF2A230);
      case _VoiceMode.off:
        return Colors.blueGrey;
    }
  }

  double _distanceM(LatLng a, LatLng b) {
    return const Distance().as(LengthUnit.Meter, a, b);
  }

  void _finish() {
    Navigator.of(context).popUntil((route) => route.isFirst);
  }

  @override
  void dispose() {
    _fixSub?.cancel();
    _position.dispose();
    _tts.stop();
    super.dispose();
  }

  // ---------------------------------------------------------------------------
  // UI
  // ---------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final geometry = widget.route.geometry;
    final here = _fix == null
        ? widget.startPoint
        : LatLng(_fix!.latitude, _fix!.longitude);

    final remainingPoints = _stepIndex < geometry.length
        ? geometry.sublist(_stepIndex)
        : <LatLng>[geometry.last];
    final remainingM = remainingPoints.isEmpty
        ? 0.0
        : _distanceM(here, remainingPoints.last);

    return Scaffold(
      body: Stack(
        children: [
          // Live map with the route, remaining legs and the vehicle marker.
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: here,
              initialZoom: 15,
              minZoom: 3,
              maxZoom: 18,
              interactionOptions: const InteractionOptions(
                flags: InteractiveFlag.all & ~InteractiveFlag.rotate,
              ),
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'ua.nav.betterdriver',
              ),
              PolylineLayer(
                polylines: [
                  Polyline(
                    points: geometry,
                    strokeWidth: 7,
                    color: theme.colorScheme.primary,
                    borderColor: Colors.white,
                    borderStrokeWidth: 2,
                  ),
                  if (remainingPoints.length > 1)
                    Polyline(
                      points: remainingPoints,
                      strokeWidth: 7,
                      color: theme.colorScheme.primary.withValues(alpha: 0.35),
                    ),
                ],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: here,
                    width: 46,
                    height: 46,
                    child: Icon(
                      Icons.navigation_rounded,
                      color: _fix?.source == PositionSource.deadReckoning
                          ? Colors.grey
                          : Colors.blue,
                      size: 38,
                    ),
                  ),
                  if (widget.startPoint != here)
                    Marker(
                      point: widget.startPoint,
                      width: 36,
                      height: 36,
                      child: const Icon(Icons.flag, color: Colors.green, size: 30),
                    ),
                  Marker(
                    point: geometry.last,
                    width: 36,
                    height: 36,
                    child: const Icon(Icons.location_on, color: Colors.red, size: 32),
                  ),
                  if (widget.roadObjects.isNotEmpty)
                    ...widget.roadObjects.map((obj) {
                      return Marker(
                        point: obj.point,
                        width: 26,
                        height: 26,
                        child: Container(
                          decoration: BoxDecoration(
                            color: obj.color.withValues(alpha: 0.85),
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 1.2),
                          ),
                          alignment: Alignment.center,
                          child: Icon(
                            obj.icon,
                            size: 14,
                            color: Colors.white,
                          ),
                        ),
                      );
                    }),
                ],
              ),
              const RichAttributionWidget(
                attributions: [
                  TextSourceAttribution('© OpenStreetMap contributors'),
                ],
              ),
            ],
          ),

          SafeArea(
            child: Column(
              children: [
                _buildTopBar(theme),
                const SizedBox(height: 6),
                _buildGpsIndicator(theme),
              ],
            ),
          ),

          // ↑100 / ↓100 correction (BlindDriver signature control).
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _offsetButton(Icons.keyboard_arrow_up, 100),
                  const SizedBox(height: 8),
                  _offsetButton(Icons.keyboard_arrow_down, -100),
                ],
              ),
            ),
          ),

          // Bottom guidance panel.
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: _buildBottomPanel(theme, remainingM, geometry, here),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopBar(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          IconButton.filledTonal(
            onPressed: _cycleVoiceMode,
            icon: Icon(_voiceIcon, color: _voiceColor),
            tooltip: 'Голос',
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: theme.colorScheme.surface.withValues(alpha: 0.95),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Куди: ${widget.destinationLabel}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelSmall,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    widget.destinationLabel,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
          IconButton.filledTonal(
            onPressed: () {
              setState(() {
                _mapFollowsCourse = !_mapFollowsCourse;
                _satAuto = _mapFollowsCourse;
              });
            },
            icon: Icon(
              _mapFollowsCourse ? Icons.explore : Icons.explore_outlined,
            ),
            tooltip: _mapFollowsCourse ? 'Карта за курсом (AUTO)' : 'Карта за курсом (SAT)',
          ),
          IconButton.filledTonal(
            onPressed: () {
              setState(() {
                _mapFollowsCourse = !_mapFollowsCourse;
                _satAuto = _mapFollowsCourse;
              });
              if (_mapFollowsCourse && _fix != null) {
                _updateMapRotation(_fix!);
              } else {
                _mapController.rotate(0);
              }
            },
            icon: Icon(
              _satAuto ? Icons.satellite_alt : Icons.satellite_alt_outlined,
            ),
            tooltip: _satAuto ? 'AUTO: карта обертається' : 'SAT: фіксована карта',
          ),
        ],
      ),
    );
  }

  Widget _buildGpsIndicator(ThemeData theme) {
    final fix = _fix;
    final (label, color, icon) = switch (fix?.trust) {
      GpsTrust.trusted => ('GPS ✓', const Color(0xFF2E9E5B), Icons.gps_fixed),
      GpsTrust.weak => ('GPS ⚠', const Color(0xFFF2A230), Icons.gps_not_fixed),
      GpsTrust.lost => ('GPS ✕', const Color(0xFFD64541), Icons.gps_off),
      GpsTrust.jammed => ('GPS ⚡', const Color(0xFFD64541), Icons.gps_off),
      _ => ('GPS …', Colors.blueGrey, Icons.gps_off),
    };

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: color.withValues(alpha: 0.5)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, color: color, size: 16),
                const SizedBox(width: 6),
                Text(
                  label,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: color,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          if (fix != null && fix.source == PositionSource.deadReckoning)
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Без GPS: ${fix.sinceLastGps.inSeconds} с • '
                  'похибка ~${_estimatedErrorM.round()} м'
                  '${_manualOffsetM != 0 ? ' • поправка ${_manualOffsetM.round()} м' : ''}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelSmall,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _offsetButton(IconData icon, double meters) {
    return GestureDetector(
      onTap: () {
        _position.adjustOffset(meters);
        _speak(meters > 0 ? 'Вперед на сто метрів' : 'Назад на сто метрів');
      },
      onLongPressStart: (_) => _repeatOffset(meters),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.95),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: Colors.black.withValues(alpha: 0.2), blurRadius: 6),
          ],
        ),
        child: Icon(icon, size: 26),
      ),
    );
  }

  void _repeatOffset(double meters) {
    _repeatTimer?.cancel();
    _repeatTimer = Timer.periodic(const Duration(milliseconds: 400), (timer) {
      _position.adjustOffset(meters);
    });
  }

  Timer? _repeatTimer;

  Widget _buildBottomPanel(ThemeData theme, double remainingM, List<LatLng> geometry, LatLng here) {
    final distanceText = remainingM >= 1000
        ? '${(remainingM / 1000).toStringAsFixed(1)} км'
        : '${remainingM.round()} м';
    final etaMin = widget.route.durationS / 60;

    // Generate next turn instruction (BlindDriver-style).
    String nextInstruction = 'Прямо';
    String nextDistance = '...';
    if (_stepIndex < geometry.length - 1) {
      final current = geometry[_stepIndex];
      final next = geometry[_stepIndex + 1];
      final bearing = _bearingBetween(current, next);
      nextInstruction = _bearingToInstruction(bearing);
      final distToNext = _distanceM(here, next);
      nextDistance = distToNext >= 1000
          ? '${(distToNext / 1000).toStringAsFixed(1)} км'
          : '${distToNext.round()} м';
    }

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface.withValues(alpha: 0.97),
        borderRadius: BorderRadius.circular(20),
        border:
            Border.all(color: theme.colorScheme.outline.withValues(alpha: 0.25)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Next turn instruction (BlindDriver-style).
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer.withValues(alpha: 0.6),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              children: [
                Icon(
                  _bearingIcon(_bearingBetween(
                    here,
                    _stepIndex < geometry.length - 1
                        ? geometry[_stepIndex + 1]
                        : geometry.last,
                  )),
                  size: 28,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Next: $nextInstruction',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'in $nextDistance',
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: _Stat(
                  label: 'Залишилось',
                  value: distanceText,
                  icon: Icons.straighten,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: _Stat(
                  label: 'Прибуття',
                  value: '${etaMin.round()} хв',
                  icon: Icons.schedule,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: _Stat(
                  label: 'Швидкість',
                  value: '${_speedKmh.round()} км/год',
                  icon: Icons.speed,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: FilledButton.icon(
                  style: FilledButton.styleFrom(
                    backgroundColor: theme.colorScheme.error,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: _finish,
                  icon: const Icon(Icons.stop, size: 20),
                  label: const Text('ARRIVE'),
                ),
              ),
              const SizedBox(width: 8),
              IconButton.filledTonal(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MoreScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.more_horiz),
                tooltip: 'More',
              ),
            ],
          ),
          const SizedBox(height: 10),
          // GPS status row (BlindDriver-style).
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.6),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _fix != null ? 'GPS ${_fix!.trust == GpsTrust.trusted ? '✓' : _fix!.trust == GpsTrust.jammed ? '⚡' : '?'}' : 'GPS ...',
                  style: theme.textTheme.labelSmall,
                ),
                Text(
                  _fix != null
                      ? '${_fix!.sinceLastGps.inSeconds} с • ±${_estimatedErrorM.round()} м'
                      : '—',
                  style: theme.textTheme.labelSmall,
                ),
                if (_manualOffsetM != 0)
                  Text(
                    '↻ ${_manualOffsetM.round()} м',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _bearingToInstruction(double bearing) {
    if (bearing < 22.5 || bearing >= 337.5) return 'Прямо';
    if (bearing < 67.5) return 'Праворуч';
    if (bearing < 112.5) return 'Поворот праворуч';
    if (bearing < 157.5) return 'Поворот назад';
    if (bearing < 202.5) return 'Поворот ліворуч';
    if (bearing < 247.5) return 'Ліворуч';
    if (bearing < 292.5) return 'Залишити';
    return 'Поворот назад';
  }

  IconData _bearingIcon(double bearing) {
    if (bearing < 22.5 || bearing >= 337.5) return Icons.arrow_upward;
    if (bearing < 67.5) return Icons.turn_right;
    if (bearing < 112.5) return Icons.turn_sharp_right;
    if (bearing < 157.5) return Icons.u_turn_right;
    if (bearing < 202.5) return Icons.u_turn_left;
    if (bearing < 247.5) return Icons.turn_left;
    if (bearing < 292.5) return Icons.turn_sharp_left;
    return Icons.u_turn_left;
  }

  double _bearingBetween(LatLng a, LatLng b) {
    final dLon = (b.longitude - a.longitude) * 3.14159 / 180;
    final y = math.sin(dLon) * math.cos(b.latitude * 3.14159 / 180);
    final x = math.cos(a.latitude * 3.14159 / 180) * math.sin(b.latitude * 3.14159 / 180)
        - math.sin(a.latitude * 3.14159 / 180) * math.cos(b.latitude * 3.14159 / 180) * math.cos(dLon);
    return (math.atan2(y, x) * 180 / math.pi + 360) % 360;
  }

  Future<String> _getRoadName(LatLng point) async {
    final key = '${point.latitude.toStringAsFixed(4)},${point.longitude.toStringAsFixed(4)}';
    if (_roadNameCache.containsKey(key)) return _roadNameCache[key]!;

    try {
      final uri = Uri.https('nominatim.openstreetmap.org', '/reverse', {
        'lat': point.latitude.toString(),
        'lon': point.longitude.toString(),
        'format': 'jsonv2',
        'accept-language': 'uk,ru,en',
      });
      final request = await HttpClient().getUrl(uri).timeout(const Duration(seconds: 5));
      request.headers.set('User-Agent', 'BetterDriver/1.0 (ua.nav.betterdriver)');
      final response = await request.close();
      if (response.statusCode == 200) {
        final body = await response.transform(utf8.decoder).join();
        final data = json.decode(body);
        final address = data['address'] as Map<String, dynamic>?;
        final road = address?['road'] ?? address?['street'] ?? address?['pedestrian'];
        final name = road is String ? road.split(',').first.trim() : null;
        if (name != null && name.isNotEmpty) {
          _roadNameCache[key] = name;
          return name;
        }
      }
    } catch (_) {
      // Ignore reverse geocode failures.
    }
    return '';
  }
}

class _Stat extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;

  const _Stat({required this.label, required this.value, required this.icon});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 18, color: theme.colorScheme.primary),
        const SizedBox(height: 4),
        Text(label, style: theme.textTheme.labelSmall),
        Text(
          value,
          style: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
