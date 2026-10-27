import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

import '../../core/services/camera_service.dart';
import '../../core/services/map_style_service.dart';
import '../../core/services/position_service.dart';
import '../../core/services/road_objects_service.dart';
import '../../core/services/route_planner.dart';
import '../navigation/guidance_screen.dart';
import 'saved_places_sheet.dart';

/// Route planning screen (BlindDriver-style):
///   chips A / B / «через»  ·  address field with autocomplete  ·  «Я тут»
///   route variants with time, distance, congestion  ·  «Рушай» → «Розпочати»
class PlanningScreen extends StatefulWidget {
  const PlanningScreen({super.key});

  @override
  State<PlanningScreen> createState() => _PlanningScreenState();
}

enum _ActivePoint { a, b, via }

class _PlanningScreenState extends State<PlanningScreen> {
  final MapController _mapController = MapController();
  final RoutePlanner _planner = RoutePlanner();
  final AddressAutocomplete _autocomplete = AddressAutocomplete();
  final CameraService _cameraService = CameraService();
  final RoadObjectsService _roadObjectsService = RoadObjectsService();

  StreamSubscription<PositionFix>? _fixSub;

  // Route points.
  RoutePoint? _pointA;
  RoutePoint? _pointB;
  final List<RoutePoint> _viaPoints = [];
  _ActivePoint _activePoint = _ActivePoint.b;

  // Input state.
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocus = FocusNode();
  List<RoutePoint> _suggestions = [];
  bool _showSuggestions = false;

  // Route state.
  List<RouteVariant> _variants = [];
  int _selectedVariant = 0;
  bool _isBuilding = false;
  String? _error;

  // Position.
  PositionFix? _currentFix;
  bool _followingMe = true;

  // Map style (label only — the map reads MapStyleService directly).
  String _mapStyleName = 'Карта';

  @override
  void initState() {
    super.initState();
    _initPosition();
    _cameraService.load();
    _roadObjectsService.load().then((_) => _roadObjectsService.loadTrafficCalmingKyiv());
    _mapStyleName = MapStyleService.currentStyle.name;
  }

  Future<void> _initPosition() async {
    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
        timeLimit: const Duration(seconds: 12),
      );
      final fix = PositionFix(
        latitude: position.latitude,
        longitude: position.longitude,
        accuracy: position.accuracy,
        speedKmh: position.speed * 3.6,
        heading: position.heading >= 0 ? position.heading : 0,
        trust: GpsTrust.trusted,
        source: PositionSource.gps,
        at: DateTime.now(),
        sinceLastGps: Duration.zero,
      );
      if (!mounted) return;
      setState(() {
        _currentFix = fix;
        _pointA = RoutePoint(
          label: 'Моє місце',
          point: LatLng(position.latitude, position.longitude),
        );
      });
      _mapController.move(LatLng(position.latitude, position.longitude), 14);
    } catch (_) {
      // Without a fix the planner still works with a tapped point A.
    }
  }

  @override
  void dispose() {
    _fixSub?.cancel();
    _searchController.dispose();
    _searchFocus.dispose();
    super.dispose();
  }

  // ---------------------------------------------------------------------------
  // Destination input
  // ---------------------------------------------------------------------------

  Future<void> _onSearchChanged(String text) async {
    if (text.trim().length < 3) {
      setState(() => _suggestions = []);
      return;
    }
    final results = await _autocomplete.suggest(text);
    if (!mounted) return;
    setState(() => _suggestions = results);
  }

  void _pickSuggestion(RoutePoint point) {
    _searchController.text = point.label;
    setState(() {
      _suggestions = [];
      _showSuggestions = false;
    });
    _assignPoint(point);
    _searchFocus.unfocus();
  }

  void _assignPoint(RoutePoint point) {
    switch (_activePoint) {
      case _ActivePoint.a:
        setState(() => _pointA = point);
        break;
      case _ActivePoint.b:
        setState(() => _pointB = point);
        break;
      case _ActivePoint.via:
        setState(() => _viaPoints.add(point));
        break;
    }
    _mapController.move(point.point, 14);
    _rebuildRoute();
  }

  Future<void> _useMyLocation() async {
    final fix = _currentFix;
    if (fix == null) return;
    final point = RoutePoint(
      label: 'Моє місце',
      point: LatLng(fix.latitude, fix.longitude),
    );
    setState(() {
      _pointA = point;
      _searchController.text = 'Моє місце';
    });
    _mapController.move(point.point, 14);
    _rebuildRoute();
  }

  void _swapPoints() {
    if (_pointA == null || _pointB == null) return;
    setState(() {
      final a = _pointA;
      _pointA = _pointB;
      _pointB = a;
    });
    _rebuildRoute();
  }

  void _setActivePoint(_ActivePoint point) {
    setState(() {
      _activePoint = point;
      _showSuggestions = false;
      _suggestions = [];
      _searchController.clear();
    });
    _searchFocus.requestFocus();
  }

  // ---------------------------------------------------------------------------
  // Route building
  // ---------------------------------------------------------------------------

  Future<void> _rebuildRoute() async {
    final a = _pointA;
    final b = _pointB;
    if (a == null || b == null) {
      setState(() => _variants = []);
      return;
    }

    setState(() {
      _isBuilding = true;
      _error = null;
    });

    final waypoints = <LatLng>[
      a.point,
      ..._viaPoints.map((p) => p.point),
      b.point,
    ];

    // OSRM takes the whole polyline; for a single via-point we chain two calls.
    var variants = await _planner.build(
      from: waypoints.first,
      to: waypoints.last,
      profile: _selectedProfile,
      alternatives: 3,
    );

    if (waypoints.length > 2) {
      final firstLeg = await _planner.build(
        from: waypoints.first,
        to: waypoints[1],
        profile: _selectedProfile,
        alternatives: 1,
      );
      if (firstLeg.isNotEmpty) {
        variants = [
          RouteVariant(
            id: 'via',
            geometry: [...firstLeg.first.geometry, ...variants.first.geometry],
            distanceM: firstLeg.first.distanceM + variants.first.distanceM,
            durationS: firstLeg.first.durationS + variants.first.durationS,
            trafficDelayS:
                firstLeg.first.trafficDelayS + variants.first.trafficDelayS,
            summary: firstLeg.first.summary,
          ),
          ...variants,
        ];
      }
    }

    if (!mounted) return;
    setState(() {
      _variants = variants;
      _selectedVariant = 0;
      _isBuilding = false;
      if (variants.isEmpty) {
        _error = 'Маршрут не знайдено. Перевірте адресу або інтернет.';
      }
    });

    if (variants.isNotEmpty) {
      _fitRouteToScreen(variants.first.geometry);
    }
  }

  String get _selectedProfile => 'car';

  void _fitRouteToScreen(List<LatLng> geometry) {
    if (geometry.isEmpty) return;
    var minLat = geometry.first.latitude;
    var maxLat = geometry.first.latitude;
    var minLon = geometry.first.longitude;
    var maxLon = geometry.first.longitude;
    for (final p in geometry) {
      minLat = p.latitude < minLat ? p.latitude : minLat;
      maxLat = p.latitude > maxLat ? p.latitude : maxLat;
      minLon = p.longitude < minLon ? p.longitude : minLon;
      maxLon = p.longitude > maxLon ? p.longitude : maxLon;
    }
    _mapController.fitCamera(
      CameraFit.bounds(
        bounds: LatLngBounds(
          LatLng(minLat, minLon),
          LatLng(maxLat, maxLon),
        ),
        padding: const EdgeInsets.all(60),
      ),
    );
  }

  void _startGuidance() {
    if (_variants.isEmpty) return;
    final variant = _variants[_selectedVariant];
    final a = _pointA!;
    final b = _pointB!;

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => GuidanceScreen(
          route: variant,
          originLabel: a.label,
          destinationLabel: b.label,
          startPoint: a.point,
          startFix: _currentFix,
          cameras: _cameraService.cameras,
          roadObjects: _roadObjectsService.objects,
        ),
      ),
    );
  }

  Future<void> _openSavedPlaces() async {
    final saved = await showModalBottomSheet<RoutePoint>(
      context: context,
      isScrollControlled: true,
      builder: (context) => const SavedPlacesSheet(),
    );
    if (saved == null || !mounted) return;
    _pickSuggestion(saved);
  }

  // ---------------------------------------------------------------------------
  // UI
  // ---------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final variant = _variants.isEmpty ? null : _variants[_selectedVariant];

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Планування маршруту'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Center(
              child: Text(
                _mapStyleName,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.bookmark_outline),
            tooltip: 'Збережені адреси',
            onPressed: _openSavedPlaces,
          ),
        ],
      ),
      body: Stack(
        children: [
          _buildMap(),

          // Collapsed top bar: chips + search.
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildPointChips(theme),
                  const SizedBox(height: 6),
                  _buildSearchField(theme),
                  if (_showSuggestions && _suggestions.isNotEmpty) ...[
                    const SizedBox(height: 4),
                    _buildSuggestions(theme),
                  ],
                ],
              ),
            ),
          ),

          // Variants panel at the bottom.
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: _buildVariantsPanel(theme, variant),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMap() {
    final style = MapStyleService.currentStyle;
    final center = _currentFix != null
        ? LatLng(_currentFix!.latitude, _currentFix!.longitude)
        : const LatLng(50.4501, 30.5234);

    return FlutterMap(
      mapController: _mapController,
      options: MapOptions(
        initialCenter: center,
        initialZoom: 13,
        minZoom: 3,
        maxZoom: 18,
        onTap: (tapPosition, point) => _onMapTap(point),
        onPositionChanged: (camera, hasGesture) {
          if (hasGesture && _followingMe) {
            setState(() => _followingMe = false);
          }
        },
      ),
      children: [
        TileLayer(
          urlTemplate: style.urlTemplate,
          userAgentPackageName: 'ua.nav.betterdriver',
        ),
        if (style.overlayUrlTemplate != null)
          TileLayer(
            urlTemplate: style.overlayUrlTemplate!,
            userAgentPackageName: 'ua.nav.betterdriver',
          ),
        if (_variants.isNotEmpty)
          PolylineLayer(
            polylines: _variants
                .asMap()
                .entries
                .map(
                  (entry) => Polyline(
                    points: entry.value.geometry,
                    strokeWidth: entry.key == _selectedVariant ? 7 : 4,
                    color: entry.key == _selectedVariant
                        ? entry.value.congestionColor
                        : entry.value.congestionColor.withValues(alpha: 0.35),
                  ),
                )
                .toList(),
          ),
        MarkerLayer(markers: _buildMarkers()),
        const RichAttributionWidget(
          attributions: [TextSourceAttribution('© OpenStreetMap contributors')],
        ),
      ],
    );
  }

  List<Marker> _buildMarkers() {
    final markers = <Marker>[];

    if (_pointA != null) {
      markers.add(Marker(
        point: _pointA!.point,
        width: 40,
        height: 40,
        child: const _PointMarker(label: 'A', color: Color(0xFF2E9E5B)),
      ));
    }
    for (var i = 0; i < _viaPoints.length; i++) {
      markers.add(Marker(
        point: _viaPoints[i].point,
        width: 34,
        height: 34,
        child: _PointMarker(label: '${i + 1}', color: Colors.blueGrey),
      ));
    }
    if (_pointB != null) {
      markers.add(Marker(
        point: _pointB!.point,
        width: 40,
        height: 40,
        child: const _PointMarker(label: 'B', color: Color(0xFFD64541)),
      ));
    }
    if (_currentFix != null) {
      markers.add(Marker(
        point: LatLng(_currentFix!.latitude, _currentFix!.longitude),
        width: 42,
        height: 42,
        child: Icon(
          Icons.navigation_rounded,
          color: _currentFix!.source == PositionSource.deadReckoning
              ? Colors.grey
              : Colors.blue,
          size: 34,
        ),
      ));
    }
    return markers;
  }

  void _onMapTap(LatLng point) {
    _searchFocus.unfocus();
    setState(() => _showSuggestions = false);

    // Long-press adds a via point; a simple tap assigns the active point.
    final label =
        '${point.latitude.toStringAsFixed(5)}, ${point.longitude.toStringAsFixed(5)}';
    _assignPoint(RoutePoint(label: label, point: point));
  }

  Widget _buildPointChips(ThemeData theme) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface.withValues(alpha: 0.95),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          _chip('A', _ActivePoint.a, _pointA != null),
          const SizedBox(width: 6),
          _chip('B', _ActivePoint.b, _pointB != null),
          const SizedBox(width: 6),
          _chip('через', _ActivePoint.via, _viaPoints.isNotEmpty),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.swap_vert, size: 20),
            tooltip: 'Поміняти A і B',
            onPressed: _pointA != null && _pointB != null ? _swapPoints : null,
          ),
          IconButton(
            icon: const Icon(Icons.my_location, size: 20),
            tooltip: 'Я тут',
            onPressed: _useMyLocation,
          ),
        ],
      ),
    );
  }

  Widget _chip(String label, _ActivePoint point, bool filled) {
    final theme = Theme.of(context);
    final active = _activePoint == point;
    return GestureDetector(
      onTap: () => _setActivePoint(point),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: active
              ? theme.colorScheme.primary
              : theme.colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(12),
          border: filled && !active
              ? Border.all(color: theme.colorScheme.primary, width: 1.5)
              : null,
        ),
        child: Text(
          label,
          style: theme.textTheme.labelMedium?.copyWith(
            color: active ? Colors.white : theme.colorScheme.onSurface,
            fontWeight: active ? FontWeight.w700 : FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _buildSearchField(ThemeData theme) {
    final hint = switch (_activePoint) {
      _ActivePoint.a => 'Звідки',
      _ActivePoint.b => 'Куди (адреса)',
      _ActivePoint.via => 'Через',
    };

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface.withValues(alpha: 0.95),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: 0.1), blurRadius: 8),
        ],
      ),
      child: TextField(
        controller: _searchController,
        focusNode: _searchFocus,
        textInputAction: TextInputAction.search,
        onSubmitted: (_) => _rebuildRoute(),
        onChanged: _onSearchChanged,
        onTap: () => setState(() => _showSuggestions = _suggestions.isNotEmpty),
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: const Icon(Icons.search),
          suffixIcon: _searchController.text.isEmpty
              ? null
              : IconButton(
                  icon: const Icon(Icons.close, size: 20),
                  tooltip: 'Очистити',
                  onPressed: () {
                    _searchController.clear();
                    setState(() {
                      _suggestions = [];
                      _showSuggestions = false;
                    });
                  },
                ),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        ),
      ),
    );
  }

  Widget _buildSuggestions(ThemeData theme) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 240),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: _suggestions.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final item = _suggestions[index];
          return ListTile(
            dense: true,
            leading: const Icon(Icons.location_on_outlined, size: 20),
            title: Text(item.label, maxLines: 2, overflow: TextOverflow.ellipsis),
            onTap: () => _pickSuggestion(item),
          );
        },
      ),
    );
  }

  Widget _buildVariantsPanel(ThemeData theme, RouteVariant? selected) {
    if (_error != null) {
      return _panelCard(
        theme,
        child: Row(
          children: [
            const Icon(Icons.error_outline, color: Colors.redAccent),
            const SizedBox(width: 10),
            Expanded(child: Text(_error!, style: theme.textTheme.bodyMedium)),
          ],
        ),
      );
    }

    if (_isBuilding) {
      return _panelCard(
        theme,
        child: Row(
          children: [
            const SizedBox(
              width: 18,
              height: 18,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
            const SizedBox(width: 12),
            Text('Будую маршрут…', style: theme.textTheme.bodyMedium),
          ],
        ),
      );
    }

    if (_variants.isEmpty) {
      return _panelCard(
        theme,
        child: Row(
          children: [
            Icon(Icons.route, color: theme.colorScheme.primary, size: 20),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                _pointB == null
                    ? 'Введіть адресу призначення'
                    : 'Натисніть «Рушай», щоб побудувати',
                style: theme.textTheme.bodyMedium,
              ),
            ),
            FilledButton.icon(
              onPressed: (_pointA == null || _pointB == null) ? null : _rebuildRoute,
              icon: const Icon(Icons.alt_route, size: 18),
              label: const Text('Рушай'),
            ),
          ],
        ),
      );
    }

    return _panelCard(
      theme,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ..._variants.asMap().entries.map(
                (entry) => _variantTile(theme, entry.key, entry.value),
              ),
          const Divider(height: 12),
          Row(
            children: [
              Expanded(
                child: FilledButton.icon(
                  onPressed: _startGuidance,
                  icon: const Icon(Icons.navigation_outlined, size: 20),
                  label: const Text('Розпочати'),
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              IconButton.filledTonal(
                tooltip: 'Сховаи варіанти',
                onPressed: () => setState(() => _variants = []),
                icon: const Icon(Icons.close),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _variantTile(ThemeData theme, int index, RouteVariant variant) {
    final selected = index == _selectedVariant;
    return GestureDetector(
      onTap: () {
        setState(() => _selectedVariant = index);
        _fitRouteToScreen(variant.geometry);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 6),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: selected
              ? theme.colorScheme.primaryContainer
              : theme.colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(14),
          border: selected
              ? Border.all(color: theme.colorScheme.primary, width: 1.5)
              : null,
        ),
        child: Row(
          children: [
            Container(
              width: 8,
              height: 34,
              decoration: BoxDecoration(
                color: variant.congestionColor,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    variant.durationText,
                    style: theme.textTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '${variant.distanceText} • ${variant.trafficText}',
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            if (selected)
              Icon(Icons.check_circle,
                  color: theme.colorScheme.primary, size: 20),
          ],
        ),
      ),
    );
  }

  Widget _panelCard(ThemeData theme, {required Widget child}) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface.withValues(alpha: 0.97),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: theme.colorScheme.outline.withValues(alpha: 0.25)),
      ),
      child: child,
    );
  }
}

class _PointMarker extends StatelessWidget {
  final String label;
  final Color color;

  const _PointMarker({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 2.5),
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: 0.3), blurRadius: 4),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
