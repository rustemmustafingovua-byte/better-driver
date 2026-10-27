import 'package:flutter/foundation.dart';

enum Environment { dev, staging, prod }

class AppConfig {
  static const appName = 'BetterDriver';
  static const appVersion = '1.1.0';
  static const env = Environment.dev;

  // Map sources
  static const osmTileUrl = 'https://tile.openstreetmap.org/{z}/{x}/{y}.png';
  static const mapTilerKey = '';
  static const mapTilerSatellite = 'https://api.maptiler.com/tiles/satellite/{z}/{x}/{y}.jpg?key=$mapTilerKey';
  static const mapTilerHybrid = 'https://api.maptiler.com/tiles/hybrid/{z}/{x}/{y}.png?key=$mapTilerKey';
  static const arcgisSatellite = 'https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}';
  static const arcgisLabels = 'https://server.arcgisonline.com/ArcGIS/rest/services/Reference/World_Boundaries_and_Places/MapServer/tile/{z}/{y}/{x}';

  // Offline
  static const maxTileCacheSizeMB = 2048;
  static const maxGraphCacheSizeMB = 512;

  // GPS
  static const locationDistanceFilterM = 5.0;
  static const locationTimeIntervalMs = 2000;
  static const gpsTimeoutMs = 10000;

  // Navigation
  static const rerouteDebounceMs = 25000;
  static const routeDeviationThresholdM = 80.0;

  // Debug
  static const enableLogging = kDebugMode;
  static const enableCrashReporting = !kDebugMode;
}
