import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workmanager/workmanager.dart';

import '../../core/services/position_service.dart';
import '../../data/models/route_model.dart';
import '../../data/repositories/routing_repository.dart';

/// Background foreground service for turn-by-turn navigation.
/// Keeps the app alive during navigation with a persistent notification.
class NavService {
  static const _channelId = 'navigation_channel';
  static const _channelName = 'Навігація';
  static const _channelDesc = 'Голосові підказки та статус маршруту';

  static final NavService _instance = NavService._();
  factory NavService() => _instance;
  NavService._();

  final FlutterLocalNotificationsPlugin _notifications = FlutterLocalNotificationsPlugin();
  final FlutterTts _tts = FlutterTts();

  StreamSubscription<PositionFix>? _fixSub;
  PositionService? _positionService;
  RouteModel? _currentRoute;
  int _stepIndex = 0;
  bool _isActive = false;

  bool get isActive => _isActive;

  Future<void> initialize() async {
    const android = AndroidInitializationSettings('@mipmap/ic_launcher');
    const darwin = DarwinInitializationSettings();
    await _notifications.initialize(
      const InitializationSettings(android: android, iOS: darwin),
    );

    await _tts.setLanguage('uk-UA');
    await _tts.setSpeechRate(0.45);
  }

  Future<void> startNavigation(RouteModel route, {PositionFix? startFix}) async {
    if (_isActive) return;

    _currentRoute = route;
    _stepIndex = 0;
    _isActive = true;

    await _showPersistentNotification('Маршрут готовий', '${(route.distance / 1000).toStringAsFixed(1)} км');

    _positionService = PositionService();
    await _positionService!.start();

    _fixSub = _positionService!.fixes.listen((fix) {
      if (!_isActive) return;
      _onFix(fix);
    });

    // Periodic TTS for important events
    _startPeriodicUpdates();
  }

  void _onFix(PositionFix fix) {
    if (_currentRoute == null || _currentRoute!.points.isEmpty) return;

    final here = LatLng(fix.latitude, fix.longitude);

    // Advance through waypoints
    while (_stepIndex < _currentRoute!.points.length) {
      final waypoint = _currentRoute!.points[_stepIndex];
      final dist = _distanceBetween(here, waypoint);
      if (dist > 80) break;
      _stepIndex++;
    }

    if (_stepIndex >= _currentRoute!.points.length) {
      _announce('Ви прибули у пункт призначення.');
      _updateNotification('Прибуття', 'Ви досягли мети');
      stopNavigation();
      return;
    }

    // Update notification with remaining distance
    final remaining = _remainingDistance(here);
    final etaMin = _currentRoute!.duration / 60;
    _updateNotification(
      'Залишилось ${(remaining / 1000).toStringAsFixed(1)} км',
      'Прибуття через ${etaMin.round()} хв',
    );
  }

  void _startPeriodicUpdates() {
    Timer.periodic(const Duration(seconds: 30), (_) async {
      if (!_isActive) return;
      final fix = _positionService?.lastTrustedPosition;
      if (fix == null || _currentRoute == null) return;

      final here = LatLng(fix.latitude, fix.longitude);
      final remaining = _remainingDistance(here);

      if (remaining < 200) {
        _announce('Залишилось менше двохсот метрів');
      }
    });
  }

  double _remainingDistance(LatLng here) {
    if (_currentRoute == null || _stepIndex >= _currentRoute!.points.length) return 0;
    double total = 0;
    for (var i = _stepIndex; i < _currentRoute!.points.length; i++) {
      if (i > _stepIndex) {
        total += _distanceBetween(_currentRoute!.points[i - 1], _currentRoute!.points[i]);
      }
    }
    return total;
  }

  double _distanceBetween(LatLng a, LatLng b) {
    return Geolocator.distanceBetween(a.latitude, a.longitude, b.latitude, b.longitude);
  }

  Future<void> _showPersistentNotification(String title, String body) async {
    const android = AndroidNotificationDetails(
      _channelId,
      _channelName,
      channelDescription: _channelDesc,
      importance: Importance.low,
      priority: Priority.low,
      ongoing: true,
      autoCancel: false,
    );
    const platform = NotificationDetails(android: android);
    await _notifications.show(0, title, body, platform);
  }

  Future<void> _updateNotification(String title, String body) async {
    await _notifications.cancel(0);
    await _notifications.show(
      0,
      title,
      body,
      const NotificationDetails(
        android: AndroidNotificationDetails(_channelId, _channelName, ongoing: true, autoCancel: false),
      ),
    );
  }

  Future<void> _announce(String text) async {
    try {
      await _tts.speak(text);
    } catch (_) {}
  }

  Future<void> stopNavigation() async {
    _isActive = false;
    await _fixSub?.cancel();
    _fixSub = null;
    await _positionService?.stop();
    _positionService = null;

    await _notifications.cancel(0);
    await _tts.stop();
  }
}
