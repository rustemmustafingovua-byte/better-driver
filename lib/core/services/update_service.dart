import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UpdateService {
  static const _releaseUrl = 'https://raw.githubusercontent.com/chatmag/blinddriver-releases/main/release.json';
  static const _updateCheckInterval = Duration(hours: 24);

  final StreamController<UpdateStatus> _controller = StreamController.broadcast();
  Stream<UpdateStatus> get statusStream => _controller.stream;

  DateTime? _lastCheck;
  bool _isChecking = false;

  Future<void> checkForUpdates() async {
    if (_isChecking) return;
    _isChecking = true;
    _controller.add(const UpdateStatus.checking());

    try {
      final prefs = await SharedPreferences.getInstance();
      final lastCheckStr = prefs.getString('last_update_check');
      if (lastCheckStr != null) {
        final lastCheck = DateTime.tryParse(lastCheckStr);
        if (lastCheck != null && DateTime.now().difference(lastCheck) < _updateCheckInterval) {
          _controller.add(const UpdateStatus.upToDate());
          _isChecking = false;
          return;
        }
      }

      final response = await http.get(Uri.parse(_releaseUrl)).timeout(
        const Duration(seconds: 15),
      );

      if (response.statusCode != 200) {
        _controller.add(const UpdateStatus.error(error: 'Не вдалося перевірити оновлення'));
        _isChecking = false;
        return;
      }

      final data = json.decode(response.body) as Map<String, dynamic>;
      final latestVersion = data['version'] as String? ?? '1.0.0';
      final apkUrl = data['apk_url'] as String?;
      final sha256 = data['sha256'] as String?;
      final changelog = data['changelog'] as String? ?? '';

      final currentVersion = '1.2.0';
      final needsUpdate = _compareVersions(latestVersion, currentVersion) > 0;

      await prefs.setString('last_update_check', DateTime.now().toIso8601String());

      if (needsUpdate && apkUrl != null) {
        _controller.add(UpdateStatus.available(
          version: latestVersion,
          apkUrl: apkUrl,
          sha256: sha256,
          changelog: changelog,
        ));
      } else {
        _controller.add(const UpdateStatus.upToDate());
      }
    } catch (e) {
      _controller.add(UpdateStatus.error(error: 'Помилка: $e'));
    } finally {
      _isChecking = false;
    }
  }

  Future<String?> downloadUpdate(String apkUrl, String? expectedSha256) async {
    try {
      final response = await http.get(Uri.parse(apkUrl)).timeout(
        const Duration(minutes: 5),
      );

      if (response.statusCode != 200) return null;

      final bytes = response.bodyBytes;
      if (expectedSha256 != null) {
        final hash = sha256.convert(bytes).toString();
        if (hash.toLowerCase() != expectedSha256.toLowerCase()) {
          throw Exception('SHA-256 mismatch');
        }
      }

      final dir = await getApplicationSupportDirectory();
      final file = File('${dir.path}/update_${DateTime.now().millisecondsSinceEpoch}.apk');
      await file.writeAsBytes(bytes);
      return file.path;
    } catch (e) {
      return null;
    }
  }

  int _compareVersions(String a, String b) {
    final partsA = a.split('.').map(int.parse).toList();
    final partsB = b.split('.').map(int.parse).toList();
    for (var i = 0; i < partsA.length && i < partsB.length; i++) {
      if (partsA[i] > partsB[i]) return 1;
      if (partsA[i] < partsB[i]) return -1;
    }
    return partsA.length.compareTo(partsB.length);
  }

  void dispose() {
    _controller.close();
  }
}

class UpdateStatus {
  final bool isChecking;
  final bool isAvailable;
  final bool isUpToDate;
  final String? error;
  final String? version;
  final String? apkUrl;
  final String? sha256;
  final String? changelog;

  const UpdateStatus._({
    this.isChecking = false,
    this.isAvailable = false,
    this.isUpToDate = false,
    this.error,
    this.version,
    this.apkUrl,
    this.sha256,
    this.changelog,
  });

  const factory UpdateStatus.checking() = UpdateStatus._;
  const factory UpdateStatus.upToDate() = UpdateStatus._;
  const factory UpdateStatus.available({
    String? version,
    String? apkUrl,
    String? sha256,
    String? changelog,
  }) = UpdateStatus._;
  const factory UpdateStatus.error({String? error}) = UpdateStatus._;
}
