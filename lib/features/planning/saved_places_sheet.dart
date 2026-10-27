import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/services/route_planner.dart';

/// Saved addresses ("Дім", "Робота", custom) stored locally and editable.
class SavedPlacesSheet extends StatefulWidget {
  const SavedPlacesSheet({super.key});

  @override
  State<SavedPlacesSheet> createState() => _SavedPlacesSheetState();
}

class _SavedPlacesSheetState extends State<SavedPlacesSheet> {
  static const _storageKey = 'saved_places';

  final List<RoutePoint> _places = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getStringList(_storageKey) ?? const <String>[];
      final parsed = <RoutePoint>[];
      for (final entry in raw) {
        try {
          final data = json.decode(entry);
          if (data is! Map<String, dynamic>) continue;
          final label = data['label'] as String?;
          final lat = (data['lat'] as num?)?.toDouble();
          final lon = (data['lon'] as num?)?.toDouble();
          if (label == null || lat == null || lon == null) continue;
          parsed.add(RoutePoint(
            label: label,
            point: LatLng(lat, lon),
          ));
        } catch (_) {
          // Ignore malformed entries.
        }
      }
      if (!mounted) return;
      setState(() {
        _places
          ..clear()
          ..addAll(parsed);
        _isLoading = false;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() => _isLoading = false);
    }
  }

  Future<void> _persist() async {
    final prefs = await SharedPreferences.getInstance();
    final encoded = _places
        .map((p) => json.encode({
              'label': p.label,
              'lat': p.point.latitude,
              'lon': p.point.longitude,
            }))
        .toList();
    await prefs.setStringList(_storageKey, encoded);
  }

  Future<void> _addPlace() async {
    final labelController = TextEditingController();
    final coordsController = TextEditingController();

    final result = await showDialog<RoutePoint>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Нова адреса'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: labelController,
              decoration: const InputDecoration(
                labelText: 'Назва',
                hintText: 'Наприклад: Дім, Робота',
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: coordsController,
              keyboardType: TextInputType.streetAddress,
              decoration: const InputDecoration(
                labelText: 'Координати',
                hintText: '50.4501 30.5234',
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Скасувати'),
          ),
          FilledButton(
            onPressed: () {
              final label = labelController.text.trim();
              final coords = _parseCoords(coordsController.text);
              if (label.isEmpty || coords == null) {
                Navigator.pop(context);
                return;
              }
              Navigator.pop(
                context,
                RoutePoint(label: label, point: coords),
              );
            },
            child: const Text('Зберегти'),
          ),
        ],
      ),
    );

    if (result == null) return;
    setState(() => _places.add(result));
    await _persist();
  }

  LatLng? _parseCoords(String text) {
    final parts = text.replaceAll(',', ' ').split(RegExp(r'\s+'));
    if (parts.length < 2) return null;
    final lat = double.tryParse(parts[0]);
    final lon = double.tryParse(parts[1]);
    if (lat == null || lon == null) return null;
    return LatLng(lat, lon);
  }

  Future<void> _deleteAt(int index) async {
    setState(() => _places.removeAt(index));
    await _persist();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.6,
      builder: (context, scrollController) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Збережені адреси',
                    style: theme.textTheme.titleMedium,
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.add),
                    tooltip: 'Додати адресу',
                    onPressed: _addPlace,
                  ),
                ],
              ),
              const Divider(),
              Expanded(
                child: _isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : _places.isEmpty
                        ? Center(
                            child: Padding(
                              padding: const EdgeInsets.all(24),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.bookmark_border,
                                    size: 48,
                                    color: theme.colorScheme.primary
                                        .withValues(alpha: 0.35),
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    'Збережених адрес немає',
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'Натисніть «+», щоб додати «Дім» або «Робота»',
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                          )
                        : ListView.separated(
                            controller: scrollController,
                            itemCount: _places.length,
                            separatorBuilder: (_, __) => const Divider(height: 1),
                            itemBuilder: (context, index) {
                              final place = _places[index];
                              return ListTile(
                                leading: CircleAvatar(
                                  backgroundColor:
                                      theme.colorScheme.primaryContainer,
                                  child: Icon(
                                    _iconFor(place.label),
                                    color: theme.colorScheme.onPrimaryContainer,
                                  ),
                                ),
                                title: Text(place.label),
                                subtitle: Text(
                                  '${place.point.latitude.toStringAsFixed(4)}, '
                                  '${place.point.longitude.toStringAsFixed(4)}',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                trailing: IconButton(
                                  icon: const Icon(Icons.delete_outline),
                                  tooltip: 'Видалити',
                                  onPressed: () => _deleteAt(index),
                                ),
                                onTap: () => Navigator.pop(context, place),
                              );
                            },
                          ),
              ),
            ],
          ),
        );
      },
    );
  }

  IconData _iconFor(String label) {
    final lower = label.toLowerCase();
    if (lower.contains('дім') || lower.contains('дом') || lower.contains('home')) {
      return Icons.home_outlined;
    }
    if (lower.contains('робот') || lower.contains('роб') || lower.contains('work')) {
      return Icons.work_outline;
    }
    return Icons.bookmark_outline;
  }
}
