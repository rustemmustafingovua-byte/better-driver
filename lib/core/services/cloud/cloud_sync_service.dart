import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CloudSyncService {
  static const _endpointKey = 'cloud_sync_endpoint';
  static const _deviceIdKey = 'cloud_device_id';
  static const _lastSyncKey = 'cloud_last_sync';
  String? _endpoint;

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    _endpoint = prefs.getString(_endpointKey);
  }

  Future<String> get deviceId async {
    final prefs = await SharedPreferences.getInstance();
    var id = prefs.getString(_deviceIdKey);
    if (id == null) {
      id = DateTime.now().millisecondsSinceEpoch.toString() + '_' +
           (1000 + (DateTime.now().microsecond % 9000)).toString();
      await prefs.setString(_deviceIdKey, id);
    }
    return id;
  }

  Future<void> setEndpoint(String? endpoint) async {
    final prefs = await SharedPreferences.getInstance();
    if (endpoint == null) {
      await prefs.remove(_endpointKey);
      _endpoint = null;
    } else {
      await prefs.setString(_endpointKey, endpoint);
      _endpoint = endpoint;
    }
  }

  Future<bool> get isConfigured async => _endpoint != null && _endpoint!.isNotEmpty;

  Future<Map<String, dynamic>?> syncRoutes(List<Map<String, dynamic>> routes) async {
    if (!await isConfigured) return null;
    try {
      final id = await deviceId;
      final response = await http.post(
        Uri.parse('$_endpoint/sync/routes'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'deviceId': id, 'routes': routes, 'ts': DateTime.now().toIso8601String()}),
      ).timeout(const Duration(seconds: 15));
      if (response.statusCode == 200) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString(_lastSyncKey, DateTime.now().toIso8601String());
        return json.decode(response.body) as Map<String, dynamic>?;
      }
    } on SocketException catch (_) {
      return {'error': 'no_network'};
    } catch (_) {}
    return null;
  }

  Future<Map<String, dynamic>?> pullRoutes() async {
    if (!await isConfigured) return null;
    try {
      final id = await deviceId;
      final response = await http.get(
        Uri.parse('$_endpoint/sync/routes?deviceId=$id'),
      ).timeout(const Duration(seconds: 15));
      if (response.statusCode == 200) {
        return json.decode(response.body) as Map<String, dynamic>?;
      }
    } on SocketException catch (_) {
      return {'error': 'no_network'};
    } catch (_) {}
    return null;
  }

  Future<Map<String, dynamic>?> syncSettings(Map<String, dynamic> settings) async {
    if (!await isConfigured) return null;
    try {
      final id = await deviceId;
      final response = await http.post(
        Uri.parse('$_endpoint/sync/settings'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'deviceId': id, 'settings': settings, 'ts': DateTime.now().toIso8601String()}),
      ).timeout(const Duration(seconds: 15));
      if (response.statusCode == 200) {
        return json.decode(response.body) as Map<String, dynamic>?;
      }
    } on SocketException catch (_) {
      return {'error': 'no_network'};
    } catch (_) {}
    return null;
  }

  Future<Map<String, dynamic>?> pullSettings() async {
    if (!await isConfigured) return null;
    try {
      final id = await deviceId;
      final response = await http.get(
        Uri.parse('$_endpoint/sync/settings?deviceId=$id'),
      ).timeout(const Duration(seconds: 15));
      if (response.statusCode == 200) {
        return json.decode(response.body) as Map<String, dynamic>?;
      }
    } on SocketException catch (_) {
      return {'error': 'no_network'};
    } catch (_) {}
    return null;
  }

  Future<String?> get lastSyncTime async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_lastSyncKey);
  }
}
