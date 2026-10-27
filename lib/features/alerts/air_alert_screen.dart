import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AirAlertScreen extends StatefulWidget {
  const AirAlertScreen({super.key});

  @override
  State<AirAlertScreen> createState() => _AirAlertScreenState();
}

class _AirAlertScreenState extends State<AirAlertScreen> {
  bool _isAlert = false;
  String _message = 'Немає даних';
  DateTime? _updatedAt;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _checkAlerts();
  }

  Future<void> _checkAlerts() async {
    setState(() {
      _isLoading = true;
      _message = 'Оновлення…';
    });

    // Try multiple sources for Ukrainian air raid alerts.
    String? alertText;
    DateTime? updated;

    // Source 1: alerts.com.ua public API (no key required).
    try {
      final uri = Uri.parse('https://alerts.com.ua/api/states');
      final response = await http.get(uri, headers: {'Accept': 'application/json'}).timeout(
            const Duration(seconds: 12),
          );
      if (response.statusCode == 200) {
        final data = json.decode(response.body) as Map<String, dynamic>;
        // The API returns {"states": [{"name": "...", "alert": true/false}, ...]}.
        final states = data['states'] as List?;
        if (states != null) {
          final active = states.where((s) => s is Map && (s['alert'] ?? false) == true).toList();
          if (active.isNotEmpty) {
            final names = active.map((s) => s['name'] as String? ?? 'Невідома область').toList();
            alertText = 'Тривога в: ${names.join(', ')}';
          } else {
            alertText = 'Тривог немає';
          }
        }
        updated = DateTime.now();
      }
    } catch (_) {
      // Source 1 unavailable.
    }

    // Source 2: ukrainealarm.com API (fallback).
    if (alertText == null) {
      try {
        final uri = Uri.parse('https://ukrainealarm.com/api/v1/alerts');
        final response = await http.get(uri, headers: {'Accept': 'application/json'}).timeout(
              const Duration(seconds: 12),
            );
        if (response.statusCode == 200) {
          final data = json.decode(response.body);
          if (data is Map && data['alert'] == true) {
            alertText = 'Повітряна тривога';
          } else {
            alertText = 'Тривог немає';
          }
          updated = DateTime.now();
        }
      } catch (_) {
        // Source 2 unavailable.
      }
    }

    if (!mounted) return;
    setState(() {
      _isAlert = alertText != null && alertText != 'Тривог немає';
      _message = alertText ?? 'Не вдалося отримати дані про тривоги';
      _updatedAt = updated;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = _isAlert ? theme.colorScheme.error : theme.colorScheme.primary;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Повітряні тривоги'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _isLoading ? null : _checkAlerts,
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_isLoading)
                const CircularProgressIndicator()
              else
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: color.withValues(alpha: 0.15),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    _isAlert ? Icons.warning_rounded : Icons.check_circle_rounded,
                    color: color,
                    size: 64,
                  ),
                ),
              const SizedBox(height: 32),
              Text(
                _isAlert ? 'ТРИВОГА' : 'СПОКІЙНО',
                style: theme.textTheme.headlineMedium?.copyWith(
                  color: color,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                _message,
                style: theme.textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              if (_updatedAt != null)
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text(
                    'Оновлено: ${_updatedAt!.toLocal()}',
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              const SizedBox(height: 24),
              FilledButton.icon(
                onPressed: _isLoading ? null : _checkAlerts,
                icon: const Icon(Icons.refresh),
                label: const Text('Оновити'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
