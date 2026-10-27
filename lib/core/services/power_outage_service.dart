import 'dart:convert';
import 'package:http/http.dart' as http;

class PowerOutageService {
  static const _dtekUrl =
      'https://dt.ua/api/power_outages?city=kiev&street={street}&house={house}';
  static const _oblenergoUrl =
      'https://api.oblenergo.ua/v1/outages?lat={lat}&lng={lng}';

  static Future<List<Map<String, dynamic>>> fetchOutages({
    String? street,
    String? house,
    double? lat,
    double? lng,
  }) async {
    final results = <Map<String, dynamic>>[];

    if (street != null && house != null) {
      final dtekUri = Uri.parse(
        _dtekUrl.replaceAll('{street}', street).replaceAll('{house}', house),
      );
      try {
        final response = await http.get(dtekUri).timeout(
          const Duration(seconds: 10),
        );
        if (response.statusCode == 200) {
          final data = json.decode(response.body) as List;
          results.addAll(data.cast<Map<String, dynamic>>());
        }
      } catch (e) {
        // DTEK unavailable, fallback to oblenergo
      }
    }

    if (lat != null && lng != null) {
      final oblenergoUri = Uri.parse(
        _oblenergoUrl.replaceAll('{lat}', lat.toString()).replaceAll('{lng}', lng.toString()),
      );
      try {
        final response = await http.get(oblenergoUri).timeout(
          const Duration(seconds: 10),
        );
        if (response.statusCode == 200) {
          final data = json.decode(response.body) as List;
          results.addAll(data.cast<Map<String, dynamic>>());
        }
      } catch (e) {
        // Oblenergo unavailable
      }
    }

    return results;
  }
}
