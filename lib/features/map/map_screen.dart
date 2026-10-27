import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;
import 'package:geolocator/geolocator.dart';
import '../../core/services/tile_cache_service.dart';
import '../../core/services/map_style_service.dart';
import '../../core/services/road_objects_service.dart';

import '../search/search_screen.dart';
import '../address/address_info_screen.dart';
import '../qr/qr_scan_screen.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final MapController _mapController = MapController();
  LatLng? _selectedPoint;
  String? _selectedAddress;
  Position? _currentPosition;
  List<Map<String, dynamic>> _cameras = [];
  bool _camerasLoaded = false;
  List<RoadObject> _roadObjects = [];
  bool _roadObjectsLoaded = false;
  StreamSubscription<Position>? _positionSub;

  @override
  void initState() {
    super.initState();
    TileCacheService.init();
    _loadCameras();
    _loadRoadObjects();
    _startLocationTracking();
  }

  Future<void> _startLocationTracking() async {
    try {
      final hasPermission = await Geolocator.isLocationServiceEnabled();
      if (!hasPermission) return;
      var permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        return;
      }

      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
      );
      if (!mounted) return;
      setState(() => _currentPosition = position);

      _positionSub?.cancel();
      _positionSub = Geolocator.getPositionStream(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.best,
          distanceFilter: 5,
        ),
      ).listen((pos) {
        if (!mounted) return;
        setState(() => _currentPosition = pos);
      });
    } catch (_) {
      // Location unavailable — the map still works as a viewer.
    }
  }

  @override
  void dispose() {
    _positionSub?.cancel();
    super.dispose();
  }

  /// Speed-camera markers bundled with the app (assets/data/cameras_ua.json).
  /// The asset is a JSON object of the shape {"source": ..., "cameras": [...]}.
  Future<void> _loadCameras() async {
    try {
      final jsonStr = await rootBundle.loadString('assets/data/cameras_ua.json');
      final decoded = json.decode(jsonStr);

      final List<dynamic> raw = decoded is Map<String, dynamic>
          ? (decoded['cameras'] as List<dynamic>? ?? const <dynamic>[])
          : (decoded as List<dynamic>);

      final cameras = <Map<String, dynamic>>[];
      for (final item in raw) {
        if (item is! Map<String, dynamic>) continue;
        final lat = item['lat'];
        final lon = item['lon'];
        if (lat is! num || lon is! num) continue;
        cameras.add(item);
      }

      if (!mounted) return;
      setState(() {
        _cameras = cameras;
        _camerasLoaded = cameras.isNotEmpty;
      });
    } catch (_) {
      // Cameras are a bonus layer — never block the map on them.
    }
  }

  Future<void> _loadRoadObjects() async {
    try {
      final service = RoadObjectsService();
      await service.load();
      await service.loadTrafficCalmingKyiv();
      if (!mounted) return;
      setState(() {
        _roadObjects = service.objects;
        _roadObjectsLoaded = service.isLoaded && service.objects.isNotEmpty;
      });
    } catch (_) {
      // Road objects are a bonus layer — never block the map.
    }
  }

  Future<String> _reverseGeocode(LatLng point) async {
    try {
      final uri = Uri.https('nominatim.openstreetmap.org', '/reverse', {
        'lat': point.latitude.toString(),
        'lon': point.longitude.toString(),
        'format': 'json',
        'accept-language': 'uk,ru,en',
      });
      final response = await HttpClient().getUrl(uri).then((req) => req.close());
      final body = await response.transform(utf8.decoder).join();
      final data = json.decode(body);
      return data['display_name'] as String? ?? '${point.latitude.toStringAsFixed(5)}, ${point.longitude.toStringAsFixed(5)}';
    } catch (e) {
      return '${point.latitude.toStringAsFixed(5)}, ${point.longitude.toStringAsFixed(5)}';
    }
  }

  Future<void> _openSearch() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SearchScreen()),
    );
    if (result is LatLng) {
      setState(() {
        _selectedPoint = result;
        _selectedAddress =
            '${result.latitude.toStringAsFixed(5)}, ${result.longitude.toStringAsFixed(5)}';
      });
      _mapController.move(result, 15);
    }
  }

  void _showAddressInfo() {
    if (_selectedPoint == null || _selectedAddress == null) return;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddressInfoScreen(
          address: _selectedAddress!,
          point: _selectedPoint!,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentStyle = MapStyleService.currentStyle;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Карта'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Пошук адреси',
            onPressed: _openSearch,
          ),
          IconButton(
            icon: const Icon(Icons.qr_code_scanner),
            tooltip: 'QR-сканер',
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const QrScanScreen()),
              );
              if (result is LatLng) {
                setState(() {
                  _selectedPoint = result;
                  _selectedAddress = '${result.latitude.toStringAsFixed(5)}, ${result.longitude.toStringAsFixed(5)}';
                });
                _mapController.move(result, 15);
              }
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: const LatLng(48.3794, 31.1656),
              initialZoom: 6.0,
              interactionOptions: const InteractionOptions(
                flags: InteractiveFlag.all,
              ),
              onTap: (tapPosition, point) async {
                final address = await _reverseGeocode(point);
                setState(() {
                  _selectedPoint = point;
                  _selectedAddress = address;
                });
              },
            ),
            children: [
              TileLayer(
                urlTemplate: currentStyle.urlTemplate,
                userAgentPackageName: 'ua.nav.betterdriver',
              ),
              if (currentStyle.overlayUrlTemplate != null)
                TileLayer(
                  urlTemplate: currentStyle.overlayUrlTemplate!,
                  userAgentPackageName: 'ua.nav.betterdriver',
                ),
              if (_camerasLoaded && _cameras.isNotEmpty)
                MarkerLayer(
                  markers: _cameras.map((cam) {
                    final lat = (cam['lat'] as num).toDouble();
                    final lon = (cam['lon'] as num).toDouble();
                    final limit = cam['limit'];
                    return Marker(
                      point: LatLng(lat, lon),
                      width: 34,
                      height: 34,
                      child: Container(
                        decoration: BoxDecoration(
                          color: theme.colorScheme.error,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.3),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          limit == null ? '!' : '${(limit as num).round()}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              if (_roadObjectsLoaded && _roadObjects.isNotEmpty)
                MarkerLayer(
                  markers: _roadObjects.map((obj) {
                    return Marker(
                      point: obj.point,
                      width: 28,
                      height: 28,
                      child: Container(
                        decoration: BoxDecoration(
                          color: obj.color.withValues(alpha: 0.9),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 1.5),
                        ),
                        alignment: Alignment.center,
                        child: Icon(
                          obj.icon,
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                    );
                  }).toList(),
                ),
            ],
          ),
          if (_selectedPoint != null)
            Positioned(
              top: 16,
              left: 16,
              right: 16,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Обрана точка', style: theme.textTheme.labelLarge),
                      const SizedBox(height: 4),
                      Text(_selectedAddress!, style: theme.textTheme.bodyMedium),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          FilledButton.icon(
                            onPressed: _showAddressInfo,
                            icon: const Icon(Icons.info_outline),
                            label: const Text('Інформація про будинок'),
                          ),
                          const SizedBox(width: 8),
                          FilledButton.icon(
                            onPressed: () {
                              Navigator.pop(context, _selectedPoint);
                            },
                            icon: const Icon(Icons.navigation),
                            label: const Text('Сюди'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          if (_selectedPoint == null)
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(Icons.touch_app, color: theme.colorScheme.primary),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Натисніть на карту, щоб обрати точку',
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton.small(
            heroTag: 'locate',
            tooltip: 'Показати мене',
            onPressed: _centerOnMe,
            child: const Icon(Icons.my_location),
          ),
          const SizedBox(height: 12),
          FloatingActionButton.extended(
            heroTag: 'style',
            onPressed: () => setState(() => MapStyleService.cycleStyle()),
            icon: const Icon(Icons.layers),
            label: Text(currentStyle.name),
          ),
        ],
      ),
    );
  }

  void _centerOnMe() {
    final pos = _currentPosition;
    if (pos == null) return;
    _mapController.move(LatLng(pos.latitude, pos.longitude), 16.0);
  }
}
