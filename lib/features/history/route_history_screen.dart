import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RouteHistoryScreen extends StatefulWidget {
  const RouteHistoryScreen({super.key});

  @override
  State<RouteHistoryScreen> createState() => _RouteHistoryScreenState();
}

class _RouteHistoryScreenState extends State<RouteHistoryScreen> {
  List<Map<String, dynamic>> _routes = [];
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadHistory();
  }

  Future<void> _loadHistory() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getStringList('route_history') ?? const <String>[];
      final parsed = <Map<String, dynamic>>[];

      for (final entry in raw) {
        try {
          final data = json.decode(entry);
          if (data is Map<String, dynamic>) parsed.add(data);
        } catch (_) {
          // Skip malformed entries instead of failing the whole list.
        }
      }

      if (!mounted) return;
      setState(() {
        // Newest first.
        _routes = parsed.reversed.toList(growable: false);
        _isLoading = false;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _error = 'Не вдалося прочитати історію.';
        _isLoading = false;
      });
    }
  }

  Future<void> _clearHistory() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Очистити історію?'),
        content: const Text('Всі збережені маршрути буде видалено.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Скасувати'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Очистити'),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('route_history');
    if (!mounted) return;
    setState(() => _routes = []);
  }

  Future<void> _deleteOne(int index) async {
    final routes = List<Map<String, dynamic>>.from(_routes);
    routes.removeAt(index);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(
      'route_history',
      routes.map((r) => json.encode(r)).toList(),
    );
    if (!mounted) return;
    setState(() => _routes = routes);
  }

  String _formatDate(String iso) {
    final dt = DateTime.tryParse(iso);
    if (dt == null) return '';
    return '${dt.day.toString().padLeft(2, '0')}.'
        '${dt.month.toString().padLeft(2, '0')}.'
        '${dt.year} ${dt.hour.toString().padLeft(2, '0')}:'
        '${dt.minute.toString().padLeft(2, '0')}';
  }

  String _formatLabel(Map<String, dynamic> route) {
    final label = route['label'] as String?;
    if (label != null && label.isNotEmpty) return label;

    final end = route['end'] as String?;
    if (end != null) {
      final parts = end.split(',');
      if (parts.length == 2) {
        final lat = double.tryParse(parts[0]);
        final lon = double.tryParse(parts[1]);
        if (lat != null && lon != null) {
          return '${lat.toStringAsFixed(4)}, ${lon.toStringAsFixed(4)}';
        }
      }
    }
    return 'Маршрут';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Історія маршрутів'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Оновити',
            onPressed: _loadHistory,
          ),
          IconButton(
            icon: const Icon(Icons.delete_outline),
            tooltip: 'Очистити історію',
            onPressed: _routes.isEmpty ? null : _clearHistory,
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _error != null
              ? _MessageState(
                  icon: Icons.error_outline,
                  message: _error!,
                  theme: theme,
                )
              : _routes.isEmpty
                  ? _MessageState(
                      icon: Icons.history,
                      message: 'Історія порожня.\nПобудуйте маршрут — він з\'явиться тут.',
                      theme: theme,
                    )
                  : ListView.separated(
                      padding: const EdgeInsets.all(12),
                      itemCount: _routes.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 8),
                      itemBuilder: (context, index) {
                        final route = _routes[index];
                        final distance = route['distanceKm'] as String? ?? '--';
                        final duration = route['durationMin'] as int? ?? 0;
                        final profile = route['profile'] as String? ?? 'car';
                        final savedAt = route['savedAt'] as String? ?? '';

                        return Card(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: theme.colorScheme.primaryContainer,
                              child: Icon(
                                profile == 'bicycle'
                                    ? Icons.pedal_bike
                                    : profile == 'motorcycle'
                                        ? Icons.motorcycle
                                        : Icons.directions_car,
                                color: theme.colorScheme.onPrimaryContainer,
                              ),
                            ),
                            title: Text(
                              _formatLabel(route),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleSmall,
                            ),
                            subtitle: Text(
                              [
                                '$distance км',
                                '$duration хв',
                                _formatDate(savedAt),
                              ].join(' • '),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodySmall,
                            ),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete_outline),
                              tooltip: 'Видалити',
                              onPressed: () => _deleteOne(index),
                            ),
                          ),
                        );
                      },
                    ),
    );
  }
}

class _MessageState extends StatelessWidget {
  final IconData icon;
  final String message;
  final ThemeData theme;

  const _MessageState({
    required this.icon,
    required this.message,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 64, color: theme.colorScheme.primary.withValues(alpha: 0.35)),
            const SizedBox(height: 16),
            Text(
              message,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
