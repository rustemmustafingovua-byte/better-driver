import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';
import '../../services/travel_profile_service.dart';

class TruckRestrictionService {
  static const _overpassUrl = 'https://overpass-api.de/api/interpreter';

  Future<List<Map<String, dynamic>>> findRestAreas(LatLng center, {double radiusKm = 50}) async {
    try {
      final query = '''
        [out:json][timeout:15];
        (
          node["highway"="rest_area"](around:${radiusKm * 1000},${center.latitude},${center.longitude});
          node["amenity"="parking"]["parking"="truck"](around:${radiusKm * 1000},${center.latitude},${center.longitude});
          way["highway"="rest_area"](around:${radiusKm * 1000},${center.latitude},${center.longitude});
        );
        out center;
      ''';
      final response = await http.post(
        Uri.parse(_overpassUrl),
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        body: 'data=${Uri.encodeQueryComponent(query)}',
      ).timeout(const Duration(seconds: 20));
      if (response.statusCode == 200) {
        final data = json.decode(response.body) as Map<String, dynamic>;
        final elements = data['elements'] as List<dynamic>? ?? const [];
        final results = <Map<String, dynamic>>[];
        for (final el in elements) {
          if (el is! Map<String, dynamic>) continue;
          final tags = el['tags'] as Map<String, dynamic>? ?? const {};
          final lat = (el['lat'] ?? el['center']?['lat'])?.toDouble();
          final lon = (el['lon'] ?? el['center']?['lon'])?.toDouble();
          if (lat == null || lon == null) continue;
          results.add({
            'lat': lat,
            'lon': lon,
            'name': tags['name'] ?? 'Зона відпочинку',
            'type': tags['highway'] == 'rest_area' ? 'rest_area' : 'parking',
            'amenity': tags['amenity'] ?? '',
          });
        }
        return results;
      }
    } on http.ClientException catch (_) {
      return [];
    } catch (_) {}
    return [];
  }

  Future<List<Map<String, dynamic>>> checkTruckWarnings(LatLng point, TruckParameters params) async {
    final warnings = <Map<String, dynamic>>[];
    try {
      final query = '''
        [out:json][timeout:10];
        (
          node["maxweight"](around:5000,${point.latitude},${point.longitude});
          node["maxheight"](around:5000,${point.latitude},${point.longitude});
          way["maxweight"](around:5000,${point.latitude},${point.longitude});
          way["maxheight"](around:5000,${point.latitude},${point.longitude});
        );
        out center;
      ''';
      final response = await http.post(
        Uri.parse(_overpassUrl),
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        body: 'data=${Uri.encodeQueryComponent(query)}',
      ).timeout(const Duration(seconds: 15));
      if (response.statusCode == 200) {
        final data = json.decode(response.body) as Map<String, dynamic>;
        final elements = data['elements'] as List<dynamic>? ?? const [];
        for (final el in elements) {
          if (el is! Map<String, dynamic>) continue;
          final tags = el['tags'] as Map<String, dynamic>? ?? const {};
          if (tags.containsKey('maxweight')) {
            warnings.add({
              'type': 'weight',
              'limit': tags['maxweight'],
              'lat': (el['lat'] ?? el['center']?['lat'])?.toDouble(),
              'lon': (el['lon'] ?? el['center']?['lon'])?.toDouble(),
            });
          }
          if (tags.containsKey('maxheight')) {
            warnings.add({
              'type': 'height',
              'limit': tags['maxheight'],
              'lat': (el['lat'] ?? el['center']?['lat'])?.toDouble(),
              'lon': (el['lon'] ?? el['center']?['lon'])?.toDouble(),
            });
          }
        }
      }
    } on http.ClientException catch (_) {
      // no network
    } catch (_) {}
    return warnings;
  }
}
