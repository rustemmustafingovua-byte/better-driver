import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SavedRoute {
  final String id;
  final String name;
  final RoutePoint origin;
  final RoutePoint destination;
  final List<RoutePoint> viaPoints;
  final String profile;
  final DateTime savedAt;
  final int useCount;

  const SavedRoute({
    required this.id,
    required this.name,
    required this.origin,
    required this.destination,
    this.viaPoints = const [],
    this.profile = 'car',
    required this.savedAt,
    this.useCount = 0,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'origin': {'label': origin.label, 'lat': origin.point.latitude, 'lon': origin.point.longitude},
    'destination': {'label': destination.label, 'lat': destination.point.latitude, 'lon': destination.point.longitude},
    'viaPoints': viaPoints.map((p) => {'label': p.label, 'lat': p.point.latitude, 'lon': p.point.longitude}).toList(),
    'profile': profile,
    'savedAt': savedAt.toIso8601String(),
    'useCount': useCount,
  };

  factory SavedRoute.fromJson(Map<String, dynamic> json) => SavedRoute(
    id: json['id'] as String,
    name: json['name'] as String,
    origin: RoutePoint(
      label: json['origin']['label'] as String,
      point: LatLng(
        (json['origin']['lat'] as num).toDouble(),
        (json['origin']['lon'] as num).toDouble(),
      ),
    ),
    destination: RoutePoint(
      label: json['destination']['label'] as String,
      point: LatLng(
        (json['destination']['lat'] as num).toDouble(),
        (json['destination']['lon'] as num).toDouble(),
      ),
    ),
    viaPoints: (json['viaPoints'] as List? ?? const [])
        .map((p) => RoutePoint(
              label: p['label'] as String,
              point: LatLng(
                (p['lat'] as num).toDouble(),
                (p['lon'] as num).toDouble(),
              ),
            ))
        .toList(),
    profile: json['profile'] as String? ?? 'car',
    savedAt: DateTime.parse(json['savedAt'] as String),
    useCount: json['useCount'] as int? ?? 0,
  );
}

class SavedRoutesService {
  static const _storageKey = 'saved_routes';

  List<SavedRoute> _routes = [];
  bool _loaded = false;

  List<SavedRoute> get routes => List.unmodifiable(_routes);

  Future<void> load() async {
    if (_loaded) return;
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getStringList(_storageKey) ?? <String>[];
      _routes = raw
          .map((r) {
            try {
              return SavedRoute.fromJson(json.decode(r));
            } catch (_) {
              return null;
            }
          })
          .where((r) => r != null)
          .cast<SavedRoute>()
          .toList();
      _loaded = true;
    } catch (_) {
      _routes = [];
    }
  }

  Future<void> save(SavedRoute route) async {
    _routes.insert(0, route);
    await _persist();
  }

  Future<void> delete(String id) async {
    _routes.removeWhere((r) => r.id == id);
    await _persist();
  }

  Future<void> incrementUse(String id) async {
    final index = _routes.indexWhere((r) => r.id == id);
    if (index == -1) return;
    _routes[index] = SavedRoute(
      id: _routes[index].id,
      name: _routes[index].name,
      origin: _routes[index].origin,
      destination: _routes[index].destination,
      viaPoints: _routes[index].viaPoints,
      profile: _routes[index].profile,
      savedAt: _routes[index].savedAt,
      useCount: _routes[index].useCount + 1,
    );
    await _persist();
  }

  Future<void> _persist() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = _routes.map((r) => json.encode(r.toJson())).toList();
      await prefs.setStringList(_storageKey, raw);
    } catch (_) {}
  }
}

class RoutePoint {
  final String label;
  final LatLng point;

  const RoutePoint({required this.label, required this.point});
}
