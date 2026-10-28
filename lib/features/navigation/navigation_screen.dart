import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/config/app_config.dart';
import '../../core/services/travel_profile_service.dart';
import '../../data/models/route_model.dart';
import '../../data/repositories/routing_repository.dart';
import '../history/route_history_screen.dart';
import '../search/search_screen.dart';

/// Navigation screen: pick a destination (search or map tap), then build a real
/// route from the current GPS position and follow it.
class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

enum _NavPhase { picking, building, navigating, error }

class _NavigationScreenState extends State<NavigationScreen> {
  final MapController _mapController = MapController();
  final RoutingRepository _routingRepo = RoutingRepository();
  final FlutterTts _tts = FlutterTts();
  final FlutterLocalNotificationsPlugin _notifications =
      FlutterLocalNotificationsPlugin();

  StreamSubscription<Position>? _locationSub;

  Position? _currentPosition;
  RouteModel? _currentRoute;
  List<LatLng> _routePoints = [];
  int _routeStepIndex = 0;
  double _speedKmh = 0.0;

  _NavPhase _phase = _NavPhase.picking;
  String _statusMessage = '';
  bool _showPanel = true;
  TravelProfile _profile = TravelProfile.car;
  TruckParameters _truckParams = const TruckParameters();

  LatLng? _targetPoint;
  String _targetLabel = '';

  bool _centerOnMe = false;
  bool _historySaved = false;

  @override
  void initState() {
    super.initState();
    _initTts();
    _initNotifications();
    _initLocation();
    _loadProfile();
  }

  Future<void> _loadProfile() async {
    final service = TravelProfileService();
    await service.load();
    if (!mounted) return;
    setState(() {
      _profile = service.current;
      _truckParams = service.truckParams;
    });
  }

  Future<void> _initTts() async {
    try {
      await _tts.setLanguage('uk-UA');
      await _tts.setSpeechRate(0.45);
    } catch (_) {
      // TTS unavailable on this device — navigation still works visually.
    }
  }

  Future<void> _initNotifications() async {
    try {
      const android = AndroidInitializationSettings('@mipmap/ic_launcher');
      const darwin = DarwinInitializationSettings();
      await _notifications.initialize(
        const InitializationSettings(android: android, iOS: darwin),
      );
    } catch (_) {
      // Notifications unavailable — not fatal.
    }
  }

  Future<void> _initLocation() async {
    try {
      final hasPermission = await _gpsHasPermission();
      if (!hasPermission) {
        _setPhase(_NavPhase.error, 'Немає доступу до GPS. Дозвольте геолокацію.');
        return;
      }
      // Get an immediate fix so the map opens on the user, not on a default city.
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
        timeLimit: const Duration(seconds: 12),
      );
      if (!mounted) return;
      setState(() => _currentPosition = position);
      _startLocationTracking();
    } catch (_) {
      _setPhase(_NavPhase.error, 'Не вдалося визначити місцезнаходження.');
    }
  }

  Future<bool> _gpsHasPermission() async {
    try {
      final serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) return false;
      var permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }
      return permission == LocationPermission.whileInUse ||
          permission == LocationPermission.always;
    } catch (_) {
      return false;
    }
  }

  void _startLocationTracking() {
    _locationSub?.cancel();
    _locationSub = Geolocator.getPositionStream(
      locationSettings: LocationSettings(
        accuracy: LocationAccuracy.bestForNavigation,
        distanceFilter: AppConfig.locationDistanceFilterM.toInt(),
      ),
    ).listen(
      _onPosition,
      onError: (_) {
        _setPhase(_NavPhase.error, 'Сигнал GPS втрачено.');
      },
      cancelOnError: false,
    );
  }

  void _onPosition(Position position) {
    if (!mounted) return;
    final wasFirstFix = _currentPosition == null;
    setState(() {
      _currentPosition = position;
      _speedKmh = position.speed * 3.6;
    });

    if (wasFirstFix && _centerOnMe) {
      _mapController.move(
        LatLng(position.latitude, position.longitude),
        16.0,
      );
    }

    if (_phase == _NavPhase.navigating) {
      _followRoute(position);
    }
  }

  // ---------------------------------------------------------------------------
  // Destination picking
  // ---------------------------------------------------------------------------

  Future<void> _openSearch() async {
    final result = await Navigator.push<SearchResult>(
      context,
      MaterialPageRoute(builder: (context) => const SearchScreen()),
    );
    if (result == null || !mounted) return;

    setState(() {
      _targetPoint = result.point;
      _targetLabel = _compactAddress(result.displayName);
    });
    _mapController.move(result.point, 15.0);
    await _buildRouteTo(result.point, result.displayName);
  }

  String _compactAddress(String displayName) {
    final parts = displayName.split(',').map((p) => p.trim()).toList();
    return parts.take(3).join(', ');
  }

  void _onMapTap(TapPosition tapPosition, LatLng point) {
    setState(() {
      _targetPoint = point;
      _targetLabel = '${point.latitude.toStringAsFixed(5)}, '
          '${point.longitude.toStringAsFixed(5)}';
    });
    _buildRouteTo(point, _targetLabel);
  }

  Future<void> _useMyLocationAsTarget() async {
    if (_currentPosition == null) {
      _setPhase(_NavPhase.error, 'Місцезнаходження ще не визначено.');
      return;
    }
    final point = LatLng(_currentPosition!.latitude, _currentPosition!.longitude);
    setState(() {
      _targetPoint = point;
      _targetLabel = 'Моє місцезнаходження';
    });
    await _buildRouteTo(point, _targetLabel);
  }

  // ---------------------------------------------------------------------------
  // Route building
  // ---------------------------------------------------------------------------

  Future<void> _buildRouteTo(LatLng target, String label) async {
    if (_currentPosition == null) {
      _setPhase(_NavPhase.error,
          'Спочатку визначте місцезнаходження — буде використано останню точку.');
    }

    _setPhase(_NavPhase.building, 'Прокладаю маршрут…');

    try {
      final from = _currentPosition != null
          ? [_currentPosition!.latitude, _currentPosition!.longitude]
          : <double>[];

      final route = await _routingRepo
          .getRoute(
            [target.latitude, target.longitude],
            from,
            profile: _profile,
            truckParams: _profile == TravelProfile.truck ? _truckParams : null,
          )
          .timeout(const Duration(seconds: 25));

      if (!mounted) return;

      if (route == null || route.points.isEmpty) {
        _setPhase(_NavPhase.error,
            'Не вдалося побудувати маршрут. Перевірте інтернет або іншу адресу.');
        return;
      }

      setState(() {
        _currentRoute = route;
        _routePoints = route.points
            .map((p) => LatLng(p.latitude, p.longitude))
            .toList(growable: false);
        _routeStepIndex = 0;
        _targetPoint = target;
        _targetLabel = label;
      });

      _setPhase(_NavPhase.navigating,
          'Маршрут: ${(route.distance / 1000).toStringAsFixed(1)} км');
      _speak('Маршрут готовий. ${(route.distance / 1000).toStringAsFixed(1)} кілометра.');
      _showNotification(
        'Маршрут побудовано',
        '${(route.distance / 1000).toStringAsFixed(1)} км',
      );
      _saveRouteToHistory();
    } catch (_) {
      if (!mounted) return;
      _setPhase(_NavPhase.error,
          'Помилка побудови маршруту. Сервер маршрути недоступний.');
    }
  }

  Future<void> _reroute() async {
    if (_targetPoint == null) {
      _setPhase(_NavPhase.error, 'Спочатку виберіть пункт призначення.');
      return;
    }
    await _buildRouteTo(_targetPoint!, _targetLabel);
  }

  // ---------------------------------------------------------------------------
  // Following the route
  // ---------------------------------------------------------------------------

  void _followRoute(Position position) {
    if (_routePoints.isEmpty) return;

    final here = LatLng(position.latitude, position.longitude);

    // Advance through waypoints we have effectively passed.
    while (_routeStepIndex < _routePoints.length) {
      final waypoint = _routePoints[_routeStepIndex];
      final distToWaypoint = _distanceKm(here, waypoint);
      if (distToWaypoint > 0.08) break;

      _routeStepIndex++;
      if (_routeStepIndex >= _routePoints.length) {
        _arrived();
        return;
      }

      final next = _routePoints[_routeStepIndex];
      final distToNext = _distanceKm(here, next);
      if (distToNext > 0.05) {
        _speak('Через пʼятдесят метрів поверніть.');
        _showNotification('Наступна інструкція', 'Через 50 метрів');
      }
    }

    // Deviation check → reroute.
    if (_routeStepIndex < _routePoints.length) {
      final distToPath = _distanceKm(here, _routePoints[_routeStepIndex]);
      if (distToPath > AppConfig.routeDeviationThresholdM / 1000.0) {
        _speak('Ви відхилились від маршруту. Перебудовую.');
        _buildRouteTo(_targetPoint ?? here, _targetLabel);
      }
    }
  }

  void _arrived() {
    _setPhase(_NavPhase.picking, 'Ви прибули у пункт призначення.');
    _speak('Ви прибули.');
    _showNotification('Прибуття', 'Ви досягли пункту призначення.');
  }

  double _distanceKm(LatLng a, LatLng b) {
    return const Distance().as(LengthUnit.Kilometer, a, b);
  }

  void _stopNavigation() {
    setState(() {
      _phase = _NavPhase.picking;
      _currentRoute = null;
      _routePoints = [];
      _routeStepIndex = 0;
      _statusMessage = '';
    });
    _speak('Навігацію зупинено.');
  }

  // ---------------------------------------------------------------------------
  // Helpers
  // ---------------------------------------------------------------------------

  void _setPhase(_NavPhase phase, String message) {
    if (!mounted) return;
    setState(() {
      _phase = phase;
      _statusMessage = message;
    });
  }

  Future<void> _speak(String text) async {
    try {
      await _tts.speak(text);
    } catch (_) {}
  }

  Future<void> _showNotification(String title, String body) async {
    try {
      const android = AndroidNotificationDetails(
        'navigation',
        'Навігація',
        channelDescription: 'Голосові та текстові інструкції',
        importance: Importance.high,
        priority: Priority.high,
      );
      const platform = NotificationDetails(android: android);
      await _notifications.show(1, title, body, platform);
    } catch (_) {}
  }

  Future<void> _saveRouteToHistory() async {
    if (_historySaved || _currentRoute == null) return;
    if (_routePoints.isEmpty) return;
    try {
      final prefs = await SharedPreferences.getInstance();
      final existing = prefs.getStringList('route_history') ?? <String>[];
      final start = _routePoints.first;
      final end = _routePoints.last;
      existing.add(json.encode({
        'start': '${start.latitude},${start.longitude}',
        'end': '${end.latitude},${end.longitude}',
        'label': _targetLabel,
        'distanceKm': (_currentRoute!.distance / 1000).toStringAsFixed(2),
        'durationMin': (_currentRoute!.duration / 60).round(),
        'savedAt': DateTime.now().toIso8601String(),
        'profile': _profile.name,
      }));
      await prefs.setStringList('route_history', existing);
      _historySaved = true;
    } catch (_) {
      // History persistence is best-effort.
    }
  }

  String get _distanceText {
    if (_currentRoute == null) return '--';
    if (_currentRoute!.distance >= 1000) {
      return '${(_currentRoute!.distance / 1000).toStringAsFixed(1)} км';
    }
    return '${_currentRoute!.distance.round()} м';
  }

  String get _durationText {
    if (_currentRoute == null) return '--';
    final minutes = (_currentRoute!.duration / 60).round();
    if (minutes >= 60) {
      return '${minutes ~/ 60} год ${minutes % 60} хв';
    }
    return '$minutes хв';
  }

  Color get _phaseColor {
    switch (_phase) {
      case _NavPhase.picking:
        return Colors.blueGrey;
      case _NavPhase.building:
        return Colors.amber;
      case _NavPhase.navigating:
        return Colors.green;
      case _NavPhase.error:
        return Colors.redAccent;
    }
  }

  String get _phaseLabel {
    switch (_phase) {
      case _NavPhase.picking:
        return 'ВИБЕРІТЬ МАРШРУТ';
      case _NavPhase.building:
        return 'БУДУЮ МАРШРУТ';
      case _NavPhase.navigating:
        return 'В ШЛЯХУ';
      case _NavPhase.error:
        return 'ПОМИЛКА';
    }
  }

  // ---------------------------------------------------------------------------
  // UI
  // ---------------------------------------------------------------------------

  @override
  void dispose() {
    _locationSub?.cancel();
    _tts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final center = _currentPosition != null
        ? LatLng(_currentPosition!.latitude, _currentPosition!.longitude)
        : const LatLng(50.4501, 30.5234);

    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: center,
              initialZoom: _currentPosition != null ? 15.0 : 10.0,
              minZoom: 3.0,
              maxZoom: 18.0,
              onTap: _onMapTap,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'ua.nav.betterdriver',
              ),
              if (_routePoints.isNotEmpty)
                PolylineLayer(
                  polylines: [
                    Polyline(
                      points: _routePoints,
                      strokeWidth: 6,
                      color: theme.colorScheme.primary,
                      borderStrokeWidth: 2,
                      borderColor: Colors.white,
                    ),
                  ],
                ),
              MarkerLayer(
                markers: [
                  if (_currentPosition != null)
                    Marker(
                      point: center,
                      width: 44,
                      height: 44,
                      child: const Icon(
                        Icons.navigation_rounded,
                        color: Colors.blue,
                        size: 38,
                      ),
                    ),
                  if (_targetPoint != null)
                    Marker(
                      point: _targetPoint!,
                      width: 40,
                      height: 40,
                      child: const Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 34,
                      ),
                    ),
                ],
              ),
              const RichAttributionWidget(
                attributions: [
                  TextSourceAttribution('© OpenStreetMap contributors'),
                ],
              ),
            ],
          ),

          // Status chip (top-left).
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surface.withValues(alpha: 0.94),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: _phaseColor, width: 1.5),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (_phase == _NavPhase.building)
                        const SizedBox(
                          width: 14,
                          height: 14,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      else
                        Icon(Icons.gps_fixed, size: 18, color: _phaseColor),
                      const SizedBox(width: 8),
                      Text(
                        _phaseLabel,
                        style: theme.textTheme.labelMedium?.copyWith(
                          color: _phaseColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Live speed chip while navigating (top-right).
          if (_phase == _NavPhase.navigating)
            SafeArea(
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface.withValues(alpha: 0.94),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '${_speedKmh.round()} км/год',
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ),
              ),
            ),

          // Bottom control panel.
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface.withValues(alpha: 0.97),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: theme.colorScheme.outline.withValues(alpha: 0.25),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: _InfoTile(
                            title: 'Дистанція',
                            value: _distanceText,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _InfoTile(
                            title: 'Час',
                            value: _durationText,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _InfoTile(
                            title: 'Швидкість',
                            value: '${_speedKmh.round()} км/год',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    // Destination row.
                    if (_targetLabel.isNotEmpty)
                      Row(
                        children: [
                          const Icon(Icons.flag_outlined, size: 16),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Text(
                              _targetLabel,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      )
                    else
                      Text(
                        'Введіть адресу або торкніться карти',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),

                    if (_statusMessage.isNotEmpty) ...[
                      const SizedBox(height: 6),
                      Text(
                        _statusMessage,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: _phaseColor,
                        ),
                      ),
                    ],

                    const SizedBox(height: 12),

                    // Profile chips.
                    Row(
                      children: [
                        _ProfileChip(
                          label: 'Авто',
                          active: _profile == TravelProfile.car,
                          onTap: () => setState(() => _profile = TravelProfile.car),
                        ),
                        const SizedBox(width: 8),
                        _ProfileChip(
                          label: 'Мото',
                          active: _profile == TravelProfile.motorcycle,
                          onTap: () =>
                              setState(() => _profile = TravelProfile.motorcycle),
                        ),
                        const SizedBox(width: 8),
                        _ProfileChip(
                          label: 'Вело',
                          active: _profile == TravelProfile.bicycle,
                          onTap: () =>
                              setState(() => _profile = TravelProfile.bicycle),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    // Primary actions.
                    Row(
                      children: [
                        Expanded(
                          child: FilledButton.icon(
                            onPressed: _openSearch,
                            icon: const Icon(Icons.search, size: 18),
                            label: const Text('Адреса'),
                          ),
                        ),
                        const SizedBox(width: 8),
                        IconButton.filledTonal(
                          tooltip: 'Прокласти маршрут',
                          onPressed: _targetPoint == null ? null : _reroute,
                          icon: const Icon(Icons.alt_route),
                        ),
                        IconButton.filledTonal(
                          tooltip: 'Показати мене',
                          onPressed: () {
                            _centerOnMe = true;
                            final pos = _currentPosition;
                            if (pos != null) {
                              _mapController.move(
                                LatLng(pos.latitude, pos.longitude),
                                16.0,
                              );
                            }
                          },
                          icon: const Icon(Icons.my_location),
                        ),
                        IconButton.filledTonal(
                          tooltip: 'Історія маршрутів',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RouteHistoryScreen(),
                              ),
                            );
                          },
                          icon: const Icon(Icons.history),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),

                    // Start / stop navigation.
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton.icon(
                        style: FilledButton.styleFrom(
                          backgroundColor: _phase == _NavPhase.navigating
                              ? theme.colorScheme.error
                              : theme.colorScheme.primary,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        onPressed: _phase == _NavPhase.navigating
                            ? _stopNavigation
                            : (_targetPoint == null ? _useMyLocationAsTarget : _reroute),
                        icon: Icon(
                          _phase == _NavPhase.navigating
                              ? Icons.stop
                              : Icons.navigation_outlined,
                          size: 20,
                        ),
                        label: Text(
                          _phase == _NavPhase.navigating
                              ? 'Зупинити'
                              : (_targetPoint == null
                                  ? 'Я тут — будувати маршрут'
                                  : 'Побудувати маршрут'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Panel toggle.
          SafeArea(
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 12, top: 60),
                child: IconButton.filledTonal(
                  tooltip: _showPanel ? 'Сховати панель' : 'Показати панель',
                  onPressed: () => setState(() => _showPanel = !_showPanel),
                  icon: Icon(
                    _showPanel
                        ? Icons.visibility_off_rounded
                        : Icons.visibility_rounded,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final String title;
  final String value;

  const _InfoTile({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: theme.textTheme.labelSmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: theme.textTheme.titleSmall
              ?.copyWith(fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}

class _ProfileChip extends StatelessWidget {
  final String label;
  final bool active;
  final VoidCallback onTap;

  const _ProfileChip({
    required this.label,
    required this.active,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FilterChip(
      label: Text(label),
      selected: active,
      onSelected: (_) => onTap(),
      selectedColor: theme.colorScheme.primaryContainer,
      checkmarkColor: theme.colorScheme.onPrimaryContainer,
    );
  }
}
