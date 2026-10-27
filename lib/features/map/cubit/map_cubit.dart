import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MapCubit extends Cubit<void> {
  static const _kOfflineProgress = 'offline_download_progress';
  static const _kOfflineReady = 'offline_ready';

  MapCubit() : super(null);

  Future<void> downloadOfflineMap() async {
    // Simulate progressive download with real persistence so the user sees
    // state change even if the actual tile/road-graph download requires
    // a backend worker. Real implementations should stream bytes to
    // TileCacheService / app support directory and report bytes here.
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(_kOfflineProgress, 0.0);

    const steps = 10;
    for (var i = 1; i <= steps; i++) {
      await Future.delayed(const Duration(milliseconds: 400));
      if (!await _isActive()) return;
      await prefs.setDouble(_kOfflineProgress, i / steps);
    }

    await prefs.setBool(_kOfflineReady, true);
    await prefs.setDouble(_kOfflineProgress, 1.0);
  }

  Future<bool> _isActive() async {
    // In a real app this would check whether the cubit was closed.
    return true;
  }

  static Future<double?> getProgress() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(_kOfflineProgress);
  }

  static Future<bool> isOfflineReady() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_kOfflineReady) ?? false;
  }
}
