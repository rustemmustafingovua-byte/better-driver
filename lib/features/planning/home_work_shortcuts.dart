import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeWorkShortcutsScreen extends StatefulWidget {
  const HomeWorkShortcutsScreen({super.key});

  @override
  State<HomeWorkShortcutsScreen> createState() => _HomeWorkShortcutsScreenState();
}

class _HomeWorkShortcutsScreenState extends State<HomeWorkShortcutsScreen> {
  static const _homeKey = 'shortcut_home';
  static const _workKey = 'shortcut_work';

  LatLng? _home;
  LatLng? _work;
  String? _homeLabel;
  String? _workLabel;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    final homeJson = prefs.getString(_homeKey);
    final workJson = prefs.getString(_workKey);

    setState(() {
      if (homeJson != null) {
        final data = _decode(homeJson);
        _home = data['point'];
        _homeLabel = data['label'];
      }
      if (workJson != null) {
        final data = _decode(workJson);
        _work = data['point'];
        _workLabel = data['label'];
      }
      _isLoading = false;
    });
  }

  Map<String, dynamic> _decode(String jsonStr) {
    try {
      final data = json.decode(jsonStr) as Map<String, dynamic>;
      return {
        'point': LatLng((data['lat'] as num).toDouble(), (data['lon'] as num).toDouble()),
        'label': data['label'] as String? ?? '',
      };
    } catch (_) {
      return {'point': null, 'label': ''};
    }
  }

  Future<void> _saveShortcut(String key, LatLng? point, String? label) async {
    final prefs = await SharedPreferences.getInstance();
    if (point == null) {
      await prefs.remove(key);
    } else {
      await prefs.setString(key, json.encode({
        'lat': point.latitude,
        'lon': point.longitude,
        'label': label ?? '',
      }));
    }
  }

  Future<void> _pickPoint(String key, String label) async {
    final result = await showDialog<LatLng>(
      context: context,
      builder: (context) => const _PointPickerDialog(),
    );

    if (result != null) {
      final chosenLabel = await showDialog<String>(
        context: context,
        builder: (context) => _LabelInputDialog(initialLabel: label),
      );

      await _saveShortcut(key, result, chosenLabel ?? label);
      await _load();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Дім і Робота'),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _ShortcutTile(
                  icon: Icons.home_outlined,
                  label: _homeLabel ?? 'Дім',
                  point: _home,
                  theme: theme,
                  onSet: () => _pickPoint(_homeKey, _homeLabel ?? 'Дім'),
                  onClear: () async {
                    await _saveShortcut(_homeKey, null, null);
                    await _load();
                  },
                ),
                const SizedBox(height: 12),
                _ShortcutTile(
                  icon: Icons.work_outline,
                  label: _workLabel ?? 'Робота',
                  point: _work,
                  theme: theme,
                  onSet: () => _pickPoint(_workKey, _workLabel ?? 'Робота'),
                  onClear: () async {
                    await _saveShortcut(_workKey, null, null);
                    await _load();
                  },
                ),
              ],
            ),
    );
  }
}

class _ShortcutTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final LatLng? point;
  final ThemeData theme;
  final VoidCallback onSet;
  final VoidCallback onClear;

  const _ShortcutTile({
    required this.icon,
    required this.label,
    required this.point,
    required this.theme,
    required this.onSet,
    required this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(icon, size: 32, color: theme.colorScheme.primary),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(label, style: theme.textTheme.titleMedium),
                  const SizedBox(height: 4),
                  Text(
                    point != null
                        ? '${point!.latitude.toStringAsFixed(4)}, ${point!.longitude.toStringAsFixed(4)}'
                        : 'Не встановлено',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            IconButton.filledTonal(
              onPressed: point != null ? onClear : onSet,
              icon: Icon(point != null ? Icons.close : Icons.add_location_alt),
              tooltip: point != null ? 'Видалити' : 'Встановити',
            ),
          ],
        ),
      ),
    );
  }
}

class _PointPickerDialog extends StatefulWidget {
  const _PointPickerDialog();

  @override
  State<_PointPickerDialog> createState() => _PointPickerDialogState();
}

class _PointPickerDialogState extends State<_PointPickerDialog> {
  final TextEditingController _latController = TextEditingController();
  final TextEditingController _lngController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AlertDialog(
      title: const Text('Координати'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _latController,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            decoration: const InputDecoration(labelText: 'Широта'),
          ),
          TextField(
            controller: _lngController,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            decoration: const InputDecoration(labelText: 'Довгота'),
          ),
        ],
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: const Text('Скасувати')),
        FilledButton(
          onPressed: () {
            final lat = double.tryParse(_latController.text);
            final lng = double.tryParse(_lngController.text);
            if (lat != null && lng != null) {
              Navigator.pop(context, LatLng(lat, lng));
            }
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}

class _LabelInputDialog extends StatefulWidget {
  final String initialLabel;
  const _LabelInputDialog({required this.initialLabel});

  @override
  State<_LabelInputDialog> createState() => _LabelInputDialogState();
}

class _LabelInputDialogState extends State<_LabelInputDialog> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialLabel);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Назва'),
      content: TextField(
        controller: _controller,
        decoration: const InputDecoration(labelText: 'Назва'),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: const Text('Скасувати')),
        FilledButton(
          onPressed: () => Navigator.pop(context, _controller.text),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
