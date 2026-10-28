import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
import '../../core/services/truck/truck_service.dart';

class RestAreaFinderScreen extends StatefulWidget {
  const RestAreaFinderScreen({super.key});

  @override
  State<RestAreaFinderScreen> createState() => _RestAreaFinderScreenState();
}

class _RestAreaFinderScreenState extends State<RestAreaFinderScreen> {
  final TruckRestrictionService _truckService = TruckRestrictionService();
  final MapController _mapController = MapController();
  List<Map<String, dynamic>> _areas = [];
  bool _loading = false;
  LatLng? _center;
  String? _error;
  StreamSubscription<Position>? _posSub;

  @override
  void initState() {
    super.initState();
    _locate();
  }

  Future<void> _locate() async {
    try {
      final service = await Geolocator.isLocationServiceEnabled();
      if (!service) return;
      var perm = await Geolocator.checkPermission();
      if (perm == LocationPermission.denied) perm = await Geolocator.requestPermission();
      if (perm == LocationPermission.denied || perm == LocationPermission.deniedForever) return;
      final pos = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      if (!mounted) return;
      final center = LatLng(pos.latitude, pos.longitude);
      setState(() => _center = center);
      _mapController.move(center, 14);
      _findNearby(center);
      _posSub = Geolocator.getPositionStream(
        locationSettings: const LocationSettings(accuracy: LocationAccuracy.best, distanceFilter: 50),
      ).listen((pos) {
        final c = LatLng(pos.latitude, pos.longitude);
        if (!mounted) return;
        setState(() => _center = c);
        _findNearby(c);
      });
    } catch (_) {}
  }

  Future<void> _findNearby(LatLng center) async {
    setState(() { _loading = true; _error = null; });
    try {
      final areas = await _truckService.findRestAreas(center, radiusKm: 50);
      if (!mounted) return;
      setState(() => _areas = areas);
    } catch (e) {
      setState(() => _error = 'Не вдалося завантажити зони відпочинку');
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  void dispose() {
    _posSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Зони відпочинку для вантажівок')),
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: _center ?? const LatLng(50.4501, 30.5234),
              initialZoom: _center != null ? 13 : 6,
              minZoom: 3,
              maxZoom: 18,
            ),
            children: [
              const TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'ua.nav.betterdriver',
              ),
              MarkerLayer(
                markers: [
                  if (_center != null)
                    Marker(
                      point: _center!,
                      width: 40,
                      height: 40,
                      child: const Icon(Icons.my_location, color: Colors.blue, size: 36),
                    ),
                  ..._areas.map((a) {
                    return Marker(
                      point: LatLng(a['lat'] as double, a['lon'] as double),
                      width: 36,
                      height: 36,
                      child: GestureDetector(
                        onTap: () => _showInfo(a),
                        child: Container(
                          decoration: BoxDecoration(
                            color: theme.colorScheme.secondaryContainer,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          alignment: Alignment.center,
                          child: const Icon(Icons.local_parking, color: Colors.white, size: 20),
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ],
          ),
          if (_loading)
            const Positioned(top: 16, left: 16, child: Card(child: Padding(padding: EdgeInsets.all(12), child: SizedBox(width: 24, height: 24, child: CircularProgressIndicator(strokeWidth: 2))))),
          if (_error != null)
            Positioned(top: 16, left: 16, right: 16, child: Card(color: theme.colorScheme.errorContainer, child: Padding(padding: const EdgeInsets.all(12), child: Text(_error!, style: theme.textTheme.bodySmall)))),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Знайдено: ${_areas.length}', style: theme.textTheme.titleSmall),
                    const SizedBox(height: 6),
                    if (_areas.isEmpty)
                      Text('Зон відпочинку поруч не знайдено.', style: theme.textTheme.bodySmall)
                    else
                      ..._areas.take(5).map((a) => ListTile(
                        dense: true,
                        leading: const Icon(Icons.local_parking, size: 20),
                        title: Text(a['name']?.toString() ?? 'Зона відпочинку', style: theme.textTheme.bodySmall),
                        onTap: () => _showInfo(a),
                      )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showInfo(Map<String, dynamic> a) {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(a['name']?.toString() ?? 'Зона відпочинку', style: Theme.of(ctx).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text('Тип: ${a['type']}', style: Theme.of(ctx).textTheme.bodySmall),
            Text('Координати: ${(a['lat'] as double).toStringAsFixed(5)}, ${(a['lon'] as double).toStringAsFixed(5)}', style: Theme.of(ctx).textTheme.bodySmall),
            const SizedBox(height: 12),
            FilledButton.icon(
              onPressed: () {
                Navigator.pop(ctx);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${a['name']} — використовуйте для планування маршруту')));
              },
              icon: const Icon(Icons.navigation),
              label: const Text('Використати'),
            ),
          ],
        ),
      ),
    );
  }
}
