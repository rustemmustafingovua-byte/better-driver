import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:geolocator/geolocator.dart';
import '../../core/services/obd_service.dart';
import '../../core/services/position_service.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final ObdService _obd = ObdService();
  final PositionService _position = PositionService();
  final List<FlSpot> _speedSpots = [];
  final List<FlSpot> _rpmSpots = [];
  int _obdConnected = 0;
  StreamSubscription<Map<String, dynamic>>? _obdSub;
  StreamSubscription<PositionFix>? _posSub;
  double _currentSpeedKmh = 0;
  int _currentRpm = 0;
  int _fuel = 0;
  int _coolant = 0;
  int _throttle = 0;
  int _load = 0;
  int _dtcCount = 0;

  @override
  void initState() {
    super.initState();
    _start();
  }

  Future<void> _start() async {
    await _position.start();
    _posSub = _position.fixes.listen((fix) {
      if (!mounted) return;
      setState(() => _currentSpeedKmh = fix.speedKmh);
      _addSpot(_speedSpots, fix.speedKmh, 60);
    });
  }

  void _addSpot(List<FlSpot> list, double value, int maxPoints) {
    list.add(FlSpot(list.length.toDouble(), value));
    if (list.length > maxPoints) {
      list.removeRange(0, list.length - maxPoints);
    }
    final base = list.length > maxPoints ? list.length - maxPoints : 0;
    for (var i = 0; i < list.length; i++) {
      list[i] = FlSpot(i.toDouble(), list[i].y);
    }
  }

  @override
  void dispose() {
    _obdSub?.cancel();
    _posSub?.cancel();
    _position.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Панель індикації')),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Row(
            children: [
              Expanded(child: _Gauge(label: 'Швидкість', value: '${_currentSpeedKmh.round()}', unit: 'км/год', color: theme.colorScheme.primary)),
              const SizedBox(width: 12),
              Expanded(child: _Gauge(label: 'Обори', value: '$_currentRpm', unit: 'об/хв', color: theme.colorScheme.tertiary)),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(child: _Gauge(label: 'Паливо', value: '$_fuel', unit: '%', color: _fuel < 20 ? theme.colorScheme.error : theme.colorScheme.primary)),
              const SizedBox(width: 12),
              Expanded(child: _Gauge(label: 'Темп.', value: '$_coolant', unit: '°C', color: _coolant > 100 ? theme.colorScheme.error : theme.colorScheme.secondary)),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(child: _Gauge(label: 'Дросель', value: '$_throttle', unit: '%', color: theme.colorScheme.tertiary)),
              const SizedBox(width: 12),
              Expanded(child: _Gauge(label: 'Навантаж.', value: '$_load', unit: '%', color: theme.colorScheme.primary)),
            ],
          ),
          const SizedBox(height: 8),
          if (_dtcCount > 0)
            Card(
              color: theme.colorScheme.errorContainer,
              child: ListTile(
                leading: const Icon(Icons.warning_amber_rounded),
                title: Text('Активні коди помилок: $_dtcCount'),
                trailing: Chip(label: Text('$_dtcCount')),
              ),
            ),
          const SizedBox(height: 16),
          Text('Швидкість (GPS)', style: theme.textTheme.titleSmall),
          const SizedBox(height: 8),
          SizedBox(height: 160, child: _SpeedChart(spots: _speedSpots)),
          const SizedBox(height: 16),
          Text('Оби (GPS)', style: theme.textTheme.titleSmall),
          const SizedBox(height: 8),
          SizedBox(height: 160, child: _RpmChart(spots: _rpmSpots)),
        ],
      ),
    );
  }
}

class _Gauge extends StatelessWidget {
  final String label;
  final String value;
  final String unit;
  final Color color;

  const _Gauge({required this.label, required this.value, required this.unit, required this.color});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: color.withValues(alpha: 0.08),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(label, style: theme.textTheme.labelSmall),
            const SizedBox(height: 8),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(value, style: theme.textTheme.headlineMedium?.copyWith(color: color, fontWeight: FontWeight.w800)),
                  const SizedBox(width: 4),
                  Text(unit, style: theme.textTheme.bodySmall?.copyWith(color: color)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SpeedChart extends StatelessWidget {
  final List<FlSpot> spots;
  const _SpeedChart({required this.spots});

  @override
  Widget build(BuildContext context) {
    if (spots.isEmpty) return const Center(child: Text('Немає даних'));
    final minY = spots.map((s) => s.y).reduce((a, b) => a < b ? a : b) - 5;
    final maxY = spots.map((s) => s.y).reduce((a, b) => a > b ? a : b) + 5;
    return LineChart(
      LineChartData(
        minY: minY,
        maxY: maxY,
        gridData: const FlGridData(show: true),
        lineBarsData: [
          LineChartBarData(
            spots: spots,
            isCurved: true,
            color: Theme.of(context).colorScheme.primary,
            barWidth: 3,
            dotData: const FlDotData(show: false),
          ),
        ],
        titlesData: const FlTitlesData(show: false),
        borderData: FlBorderData(show: false),
      ),
    );
  }
}

class _RpmChart extends StatelessWidget {
  final List<FlSpot> spots;
  const _RpmChart({required this.spots});

  @override
  Widget build(BuildContext context) {
    if (spots.isEmpty) return const Center(child: Text('Немає даних'));
    final minY = spots.map((s) => s.y).reduce((a, b) => a < b ? a : b) - 200;
    final maxY = spots.map((s) => s.y).reduce((a, b) => a > b ? a : b) + 200;
    return LineChart(
      LineChartData(
        minY: minY,
        maxY: maxY,
        gridData: const FlGridData(show: true),
        lineBarsData: [
          LineChartBarData(
            spots: spots,
            isCurved: true,
            color: Theme.of(context).colorScheme.tertiary,
            barWidth: 3,
            dotData: const FlDotData(show: false),
          ),
        ],
        titlesData: const FlTitlesData(show: false),
        borderData: FlBorderData(show: false),
      ),
    );
  }
}
