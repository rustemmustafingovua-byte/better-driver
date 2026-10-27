import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/services/analytics_service.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({super.key});

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  final TripAnalytics _analytics = TripAnalytics();
  List<TripRecord> _trips = [];
  double _totalKm = 0;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() => _isLoading = true);
    final trips = await _analytics.getHistory();
    final totalKm = await _analytics.getTotalDistanceKm();
    if (!mounted) return;
    setState(() {
      _trips = trips;
      _totalKm = totalKm;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final recentTrips = _trips.take(10).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Аналітика поїздок'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _load,
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Row(
                  children: [
                    Expanded(
                      child: _StatCard(
                        icon: Icons.straighten,
                        label: 'Загалом',
                        value: _totalKm.toStringAsFixed(1),
                        unit: 'км',
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _StatCard(
                        icon: Icons.route,
                        label: 'Поїздок',
                        value: _trips.length.toString(),
                        unit: '',
                        color: theme.colorScheme.tertiary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                if (recentTrips.isEmpty)
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: Column(
                        children: [
                          Icon(Icons.show_chart, size: 64, color: theme.colorScheme.primary.withValues(alpha: 0.3)),
                          const SizedBox(height: 16),
                          Text('Ще немає записів', style: theme.textTheme.bodyLarge),
                          const SizedBox(height: 8),
                          Text('Запис увімкніть під час навігації', style: theme.textTheme.bodySmall),
                        ],
                      ),
                    ),
                  )
                else
                  ...recentTrips.map((trip) => Card(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: theme.colorScheme.primaryContainer,
                        child: Icon(Icons.directions_car, color: theme.colorScheme.onPrimaryContainer),
                      ),
                      title: Text('${(trip.distanceM / 1000).toStringAsFixed(1)} км'),
                      subtitle: Text('${trip.durationS ~/ 60} хв • ${trip.stopCount} стоянок • середня ${trip.avgSpeedKmh.round()} км/год'),
                      trailing: Text(
                        '${trip.start.day.toString().padLeft(2, '0')}.${trip.start.month.toString().padLeft(2, '0')}',
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  )),
              ],
            ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final String unit;
  final Color color;

  const _StatCard({
    required this.icon,
    required this.label,
    required this.value,
    required this.unit,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: color, size: 20),
            const SizedBox(height: 8),
            Text(label, style: theme.textTheme.labelSmall),
            const SizedBox(height: 4),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(value, style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800, color: color)),
                if (unit.isNotEmpty) ...[
                  const SizedBox(width: 4),
                  Text(unit, style: theme.textTheme.bodySmall),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
