import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:share_plus/share_plus.dart';

class WazeShareScreen extends StatelessWidget {
  final LatLng from;
  final LatLng to;
  final String? fromLabel;
  final String toLabel;

  const WazeShareScreen({
    super.key,
    required this.from,
    required this.to,
    this.fromLabel,
    required this.toLabel,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Build Waze URL with waypoints
    final wazeUrl = 'https://waze.com/ul?ll=${to.latitude},${to.longitude}&navigate=yes'
        '&from=${from.latitude},${from.longitude}';

    // Build Intent-style deep link for Android
    final wazeIntent = 'waze://?ll=${to.latitude},${to.longitude}&navigate=yes'
        '&from=${from.latitude},${from.longitude}';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Поділитися з Waze'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer.withValues(alpha: 0.5),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.navigation_rounded, size: 60, color: theme.colorScheme.primary),
            ),
            const SizedBox(height: 32),
            Text(
              'Відкрити маршрут у Waze',
              style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              'З: ${fromLabel ?? '${from.latitude.toStringAsFixed(4)}, ${from.longitude.toStringAsFixed(4)}'}\n'
              'Куди: $toLabel',
              style: theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            FilledButton.icon(
              onPressed: () async {
                try {
                  // Try Waze app first
                  await Share.shareUri(Uri.parse(wazeIntent));
                } catch (_) {
                  // Fallback to web
                  if (context.mounted) {
                    _openInBrowser(context, wazeUrl);
                  }
                }
              },
              icon: const Icon(Icons.open_in_browser),
              label: const Text('Відкрити у Waze'),
            ),
            const SizedBox(height: 12),
            TextButton.icon(
              onPressed: () => _openInBrowser(context, wazeUrl),
              icon: const Icon(Icons.public),
              label: const Text('Відкрити в браузері'),
            ),
          ],
        ),
      ),
    );
  }

  void _openInBrowser(BuildContext context, String url) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Відкрити посилання'),
        content: SelectableText(url),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Скасувати'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
              // In a real app, launch URL via url_launcher
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Посилання: $url')),
              );
            },
            child: const Text('Копіювати'),
          ),
        ],
      ),
    );
  }
}
