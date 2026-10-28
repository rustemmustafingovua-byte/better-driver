import 'dart:io';
import 'package:flutter_map/flutter_map.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class CachedTileProvider extends TileProvider {
  CachedTileProvider({this.enabled = true});

  bool enabled;
  static Directory? _dir;

  static Future<void> init() async {
    final appDir = await getApplicationSupportDirectory();
    _dir = Directory('${appDir.path}/tile_cache');
    await _dir!.create(recursive: true);
  }

  @override
  ImageProvider<Object> getImage(TileCoordinates coordinates, TileLayer options) {
    if (!enabled || _dir == null) {
      return NetworkImage(_buildUrl(coordinates, options));
    }
    final url = _buildUrl(coordinates, options);
    final hash = _hashUrl(url);
    final file = File('${_dir!.path}/$hash');
    if (file.existsSync()) {
      return FileImage(file);
    }
    return NetworkImage(url);
  }

  @override
  Future<void> loadTile(TileCoordinates coordinates, TileLayer options) async {
    if (!enabled || _dir == null) return;
    final url = _buildUrl(coordinates, options);
    final hash = _hashUrl(url);
    final file = File('${_dir!.path}/$hash');
    if (await file.exists()) return;
    try {
      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 8));
      if (response.statusCode == 200) {
        await file.writeAsBytes(response.bodyBytes);
      }
    } catch (_) {}
  }

  static String _buildUrl(TileCoordinates coordinates, TileLayer options) {
    final template = options.urlTemplate ?? 'https://tile.openstreetmap.org/{z}/{x}/{y}.png';
    return template
        .replaceAll('{z}', coordinates.z.toString())
        .replaceAll('{x}', coordinates.x.toString())
        .replaceAll('{y}', coordinates.y.toString())
        .replaceAll('{s}', 'a');
  }

  static String _hashUrl(String url) {
    final bytes = url.codeUnits;
    int hash = 0;
    for (final b in bytes) {
      hash = (hash * 31 + b) & 0x7FFFFFFFFFFFFFFF;
    }
    return hash.toRadixString(16);
  }

  static Future<int> cachedTileCount() async {
    if (_dir == null) await init();
    try {
      return _dir!.listSync().whereType<File>().length;
    } catch (_) {
      return 0;
    }
  }

  static Future<int> cachedTileSizeBytes() async {
    if (_dir == null) await init();
    try {
      return _dir!
          .listSync()
          .whereType<File>()
          .fold<int>(0, (sum, f) => sum + (f.lengthSync()));
    } catch (_) {
      return 0;
    }
  }

  static Future<void> clear() async {
    if (_dir == null) return;
    for (final f in _dir!.listSync()) {
      if (f is File) f.deleteSync();
    }
  }
}
