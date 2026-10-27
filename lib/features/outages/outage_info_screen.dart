import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../core/services/power_outage_service.dart';

class OutageInfoScreen extends StatefulWidget {
  final String street;
  final String house;
  final double lat;
  final double lng;

  const OutageInfoScreen({
    super.key,
    required this.street,
    required this.house,
    required this.lat,
    required this.lng,
  });

  @override
  State<OutageInfoScreen> createState() => _OutageInfoScreenState();
}

class _OutageInfoScreenState extends State<OutageInfoScreen> {
  late Future<List<Map<String, dynamic>>> _outagesFuture;

  @override
  void initState() {
    super.initState();
    _outagesFuture = PowerOutageService.fetchOutages(
      street: widget.street.isEmpty ? null : widget.street,
      house: widget.house.isEmpty ? null : widget.house,
      lat: widget.lat,
      lng: widget.lng,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Електропостачання')),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _outagesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }

          final outages = snapshot.data ?? [];
          if (outages.isEmpty) {
            return Center(
              child: Column(
                children: [
                  Icon(Icons.power, size: 64, color: theme.colorScheme.primary.withValues(alpha: 0.3)),
                  const SizedBox(height: 16),
                  Text('Немає активних відключень', style: theme.textTheme.bodyLarge),
                  const SizedBox(height: 8),
                  Text('${widget.street}, ${widget.house}', style: theme.textTheme.bodySmall),
                ],
              ),
            );
          }

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Адреса', style: theme.textTheme.labelLarge),
                      const SizedBox(height: 4),
                      Text('${widget.street}, ${widget.house}', style: theme.textTheme.titleMedium),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Графік відключень', style: theme.textTheme.labelLarge),
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 200,
                        child: BarChart(
                          BarChartData(
                            alignment: BarChartAlignment.spaceAround,
                            barGroups: _buildBarGroups(outages),
                            gridData: const FlGridData(show: true),
                            borderData: FlBorderData(show: true),
                            titlesData: FlTitlesData(
                              leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: true, reservedSize: 40)),
                              bottomTitles: const AxisTitles(sideTitles: SideTitles(showTitles: true, reservedSize: 40)),
                              topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                              rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              ...outages.map((outage) {
                final status = outage['status'] as String? ?? 'unknown';
                final color = status == 'off'
                    ? theme.colorScheme.error
                    : status == 'planned'
                        ? theme.colorScheme.tertiary
                        : theme.colorScheme.primary;

                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: Icon(
                      status == 'off'
                          ? Icons.power_off
                          : status == 'planned'
                              ? Icons.warning_amber_rounded
                              : Icons.check_circle,
                      color: color,
                    ),
                    title: Text(outage['title'] as String? ?? 'Відключення'),
                    subtitle: Text(outage['description'] as String? ?? ''),
                    trailing: Chip(
                      label: Text(
                        status == 'off' ? 'Вимкнено' : status == 'planned' ? 'Планове' : 'ОК',
                        style: TextStyle(color: theme.colorScheme.onSurface),
                      ),
                      backgroundColor: color.withValues(alpha: 0.15),
                    ),
                  ),
                );
              }),
            ],
          );
        },
      ),
    );
  }

  List<BarChartGroupData> _buildBarGroups(List<Map<String, dynamic>> outages) {
    final groups = <BarChartGroupData>[];
    for (var i = 0; i < outages.length; i++) {
      final outage = outages[i];
      final duration = (outage['duration_min'] as num?)?.toDouble() ?? 60.0;
      final status = outage['status'] as String? ?? 'planned';
      final color = status == 'off'
          ? Colors.red
          : status == 'planned'
              ? Colors.orange
              : Colors.green;

      groups.add(
        BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(
              toY: duration,
              color: color,
              width: 16,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
            ),
          ],
        ),
      );
    }
    return groups;
  }
}
