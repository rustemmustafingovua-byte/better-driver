import 'dart:convert';
import 'dart:typed_data';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class TileCacheService {
  static Directory? _dir;

  static Future<void> init() async {
    final appDir = await getApplicationSupportDirectory();
    _dir = Directory('${appDir.path}/tile_cache');
    await _dir!.create(recursive: true);
  }

  static Future<String?> getTile(String url) async {
    if (_dir == null) return null;
    final hash = _hashUrl(url);
    final file = File('${_dir!.path}/$hash');
    if (await file.exists()) {
      return file.path;
    }
    return null;
  }

  static Future<void> putTile(String url, Uint8List bytes) async {
    if (_dir == null) return;
    final hash = _hashUrl(url);
    final file = File('${_dir!.path}/$hash');
    await file.writeAsBytes(bytes);
  }

  static String _hashUrl(String url) {
    final bytes = utf8.encode(url);
    int hash = 0;
    for (final b in bytes) {
      hash = (hash * 31 + b) & 0x7FFFFFFFFFFFFFFF;
    }
    return hash.toRadixString(16);
  }

  static Future<void> clear() async {
    if (_dir == null) return;
    final files = _dir!.listSync();
    for (final f in files) {
      if (f is File) f.deleteSync();
    }
  }
}
