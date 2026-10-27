import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:latlong2/latlong.dart';
import '../models/route_model.dart';
import '../../core/services/travel_profile_service.dart';

class RoutingRepository {
  Future<RouteModel?> getRoute(
    List<double> target,
    List<double>? origin, {
    TravelProfile profile = TravelProfile.car,
    TruckParameters? truckParams,
  }) async {
    final hasOrigin = origin != null && origin.length >= 2;
    final fromLat = hasOrigin ? origin[0] : 50.4501;
    final fromLng = hasOrigin ? origin[1] : 30.5234;
    final toLat = target[0];
    final toLng = target[1];

    // Try local GraphHopper server first with profile-specific params
    try {
      final localUri = Uri.parse('http://127.0.0.1:8000/route');
      final body = json.encode({
        'from_lat': fromLat,
        'from_lng': fromLng,
        'to_lat': toLat,
        'to_lng': toLng,
        'profile': _profileToParam(profile),
        if (profile == TravelProfile.truck && truckParams != null)
          ...truckParams.toJson(),
      });
      final response = await http.post(localUri, headers: {'Content-Type': 'application/json'}, body: body);
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return _parseLocalResponse(data);
      }
    } catch (e) {
      // local server unavailable
    }

    // Fallback to OSRM demo
    final profilePath = switch (profile) {
      TravelProfile.car => 'driving',
      TravelProfile.truck => 'driving',
      TravelProfile.motorcycle => 'driving',
      TravelProfile.bicycle => 'bike',
    };

    final uri = Uri.https(
      'router.project-osrm.org',
      '/route/v1/$profilePath/$fromLng,$fromLat;$toLng,$toLat',
      {
        'overview': 'full',
        'geometries': 'geojson',
      },
    );

    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return _parseResponse(data);
    }
    return null;
  }

  String _profileToParam(TravelProfile profile) {
    return switch (profile) {
      TravelProfile.car => 'car',
      TravelProfile.truck => 'truck',
      TravelProfile.motorcycle => 'motorcycle',
      TravelProfile.bicycle => 'bike',
    };
  }

  RouteModel? _parseLocalResponse(Map<String, dynamic> data) {
    try {
      final points = (data['geometry'] as List)
          .map((c) => LatLng((c[0] as num).toDouble(), (c[1] as num).toDouble()))
          .toList();
      return RouteModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        name: 'Route',
        points: points,
        createdAt: DateTime.now(),
        distance: (data['distance_km'] as num) * 1000.0,
        duration: ((data['duration_min'] as num) * 60).toInt(),
      );
    } catch (e) {
      return null;
    }
  }

  RouteModel? _parseResponse(Map<String, dynamic> data) {
    try {
      final routes = data['routes'] as List;
      if (routes.isEmpty) return null;
      final route = routes.first;
      final geometry = route['geometry'];
      final coords = geometry['coordinates'] as List;

      final points = coords.map((c) => LatLng((c[1] as num).toDouble(), (c[0] as num).toDouble())).toList();
      final distance = ((route['distance'] as num) / 1000.0).toDouble();
      final duration = ((route['duration'] as num) / 60.0).toInt();

      return RouteModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        name: 'Route',
        points: points,
        createdAt: DateTime.now(),
        distance: distance,
        duration: duration,
      );
    } catch (e) {
      return null;
    }
  }
}
