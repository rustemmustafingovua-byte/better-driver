import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/services/cloud/cloud_sync_service.dart';

class CloudSyncScreen extends StatefulWidget {
  const CloudSyncScreen({super.key});

  @override
  State<CloudSyncScreen> createState() => _CloudSyncScreenState();
}

class _CloudSyncScreenState extends State<CloudSyncScreen> {
  final CloudSyncService _cloud = CloudSyncService();
  final TextEditingController _endpointController = TextEditingController();
  bool _syncing = false;
  String? _lastSync;
  String? _error;

  @override
  void initState() {
    super.initState();
    _cloud.init();
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    final endpoint = prefs.getString('cloud_sync_endpoint');
    if (!mounted) return;
    setState(() {
      _endpointController.text = endpoint ?? '';
    });
    _refreshStatus();
  }

  Future<void> _refreshStatus() async {
    final t = await _cloud.lastSyncTime;
    if (!mounted) return;
    setState(() => _lastSync = t);
  }

  Future<void> _saveEndpoint() async {
    final v = _endpointController.text.trim();
    await _cloud.setEndpoint(v.isEmpty ? null : v);
    _refreshStatus();
  }

  Future<void> _syncNow() async {
    setState(() { _syncing = true; _error = null; });
    try {
      final prefs = await SharedPreferences.getInstance();
      final historyRaw = prefs.getStringList('route_history') ?? <String>[];
      final routes = historyRaw.map((r) => json.decode(r) as Map<String, dynamic>).toList();
      final result = await _cloud.syncRoutes(routes);
      if (!mounted) return;
      if (result != null && result.containsKey('error')) {
        setState(() => _error = 'Помилка: ${result['error']}');
      } else {
        await _refreshStatus();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Синхронізацію завершено')),
        );
      }
    } catch (e) {
      setState(() => _error = 'Помилка: $e');
    } finally {
      if (mounted) setState(() => _syncing = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Хмара / Синхронізація')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Вкажіть URL свого sync-сервера (власний backend).', style: theme.textTheme.bodySmall),
          const SizedBox(height: 12),
          TextField(
            controller: _endpointController,
            decoration: const InputDecoration(
              labelText: 'Sync endpoint',
              hintText: 'https://sync.example.com',
            ),
            keyboardType: TextInputType.url,
          ),
          const SizedBox(height: 8),
          FilledButton.icon(
            onPressed: _saveEndpoint,
            icon: const Icon(Icons.save),
            label: const Text('Зберегти endpoint'),
          ),
          const SizedBox(height: 24),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Стан', style: theme.textTheme.titleMedium),
                  const SizedBox(height: 8),
                  Text('Остання синхронізація: ${_lastSync ?? "ніколи"}'),
                  if (_error != null) ...[
                    const SizedBox(height: 8),
                    Text(_error!, style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.error)),
                  ],
                  const SizedBox(height: 12),
                  FilledButton.icon(
                    onPressed: _syncing ? null : _syncNow,
                    icon: _syncing
                        ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                        : const Icon(Icons.cloud_upload),
                    label: Text(_syncing ? 'Синхронізую…' : 'Синхронізувати зараз'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Мульти-пристрій', style: theme.textTheme.titleMedium),
                  const SizedBox(height: 8),
                  Text(
                    'Кожен пристрій отримує власний deviceId. '
                    'Після налаштування endpoint, маршрути й налаштування '
                    'будуть синхронізуватися між пристроями через backend.',
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
