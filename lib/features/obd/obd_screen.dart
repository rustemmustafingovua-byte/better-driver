import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/services/obd_service.dart';

class ObdScreen extends StatefulWidget {
  const ObdScreen({super.key});

  @override
  State<ObdScreen> createState() => _ObdScreenState();
}

class _ObdScreenState extends State<ObdScreen> {
  final ObdService _obdService = ObdService();
  final TextEditingController _hostController = TextEditingController(text: '192.168.0.10');
  final TextEditingController _portController = TextEditingController(text: '35000');
  Map<String, dynamic> _obdData = {};
  List<String> _dtcs = [];
  bool _isConnected = false;
  String _status = 'Відключено';
  final FlutterTts _tts = FlutterTts();
  Timer? _voiceTimer;

  @override
  void initState() {
    super.initState();
    _obdService.dataStream.listen((data) {
      if (!mounted) return;
      setState(() => _obdData = data);
      _checkAlerts(data);
    });
    _initTts();
  }

  Future<void> _initTts() async {
    try {
      await _tts.setLanguage('ru-RU');
      await _tts.setSpeechRate(0.45);
    } catch (_) {}
  }

  void _checkAlerts(Map<String, dynamic> data) {
    final speed = (data['speed'] ?? 0) as int;
    final rpm = (data['rpm'] ?? 0) as int;
    final temp = (data['coolantTemp'] ?? 0) as int;
    final fuel = (data['fuel'] ?? 0) as int;
    if (temp > 105) {
      _speak('Внимание, высокая температура охлаждающей жидкости');
    }
    if (fuel < 10 && fuel >= 0) {
      _speak('Внимание, мало топлива');
    }
    if (rpm > 6000) {
      _speak('Высокие обороты двигателя');
    }
    if (speed > 120) {
      _speak('Превышение скорости');
    }
  }

  Future<void> _speak(String text) async {
    try {
      if (_voiceTimer?.isActive ?? false) return;
      await _tts.speak(text);
      _voiceTimer = Timer(const Duration(seconds: 4), () {});
    } catch (_) {}
  }

  Future<void> _connect() async {
    final host = _hostController.text.trim();
    final port = int.tryParse(_portController.text.trim()) ?? 35000;
    if (host.isEmpty) return;
    setState(() => _status = 'Підключення…');
    await _obdService.connect(host, port: port);
    setState(() {
      _isConnected = true;
      _status = 'Підключено';
    });
    await _readDtcs();
  }

  Future<void> _readDtcs() async {
    try {
      await _obdService.sendCommand('03');
      await Future.delayed(const Duration(milliseconds: 500));
      final codes = _obdService.readDtcs();
      if (!mounted) return;
      setState(() => _dtcs = codes);
    } catch (_) {}
  }

  Future<void> _clearDtcs() async {
    try {
      await _obdService.sendCommand('04');
      if (!mounted) return;
      setState(() => _dtcs = []);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Коди помилок очищено')));
    } catch (_) {}
  }

  @override
  void dispose() {
    _voiceTimer?.cancel();
    _obdService.disconnect();
    _tts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final rpm = _obdData['rpm'] ?? 0;
    final speed = _obdData['speed'] ?? 0;
    final temp = _obdData['coolantTemp'] ?? 0;
    final fuel = _obdData['fuel'] ?? 0;
    final intakeTemp = _obdData['intakeTemp'] ?? '--';
    final throttle = _obdData['throttle'] ?? '--';
    final load = _obdData['load'] ?? '--';

    return Scaffold(
      appBar: AppBar(title: const Text('OBD / ELM327 WiFi'), actions: [
        if (_isConnected)
          IconButton(
            icon: const Icon(Icons.broadcast_on_personal),
            tooltip: 'Читати коди помилок',
            onPressed: _readDtcs,
          ),
        if (_dtcs.isNotEmpty)
          IconButton(
            icon: const Icon(Icons.delete_sweep),
            tooltip: 'Очистити коди',
            onPressed: _clearDtcs,
          ),
      ]),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: _isConnected
            ? ListView(
                children: [
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    childAspectRatio: 1.6,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    children: [
                      _ObdCard(icon: Icons.speed, label: 'Швидкість', value: '$speed км/год', color: theme.colorScheme.primary),
                      _ObdCard(icon: Icons.timeline, label: 'Обороти', value: '$rpm об/хв', color: theme.colorScheme.tertiary),
                      _ObdCard(icon: Icons.thermostat, label: 'Темп. охолодж.', value: '$temp°C', color: temp > 100 ? theme.colorScheme.error : theme.colorScheme.secondary),
                      _ObdCard(icon: Icons.local_gas_station, label: 'Паливо', value: '$fuel%', color: fuel < 20 ? theme.colorScheme.error : theme.colorScheme.primary),
                      _ObdCard(icon: Icons.air, label: 'Впуск', value: '$intakeTemp°C', color: theme.colorScheme.secondary),
                      _ObdCard(icon: Icons.linear_scale, label: 'Дросель', value: '$throttle%', color: theme.colorScheme.tertiary),
                      _ObdCard(icon: Icons.power, label: 'Навантаження', value: '$load%', color: theme.colorScheme.primary),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Коди помилок (DTC)', style: theme.textTheme.titleMedium),
                              const Spacer(),
                              Chip(label: Text('${_dtcs.length}')),
                            ],
                          ),
                          const SizedBox(height: 8),
                          if (_dtcs.isEmpty)
                            Text('Не виявлено активних кодів', style: theme.textTheme.bodySmall)
                          else
                            Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              children: _dtcs.map((code) => Chip(
                                label: Text(code),
                                backgroundColor: theme.colorScheme.errorContainer,
                              )).toList(),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  TextField(controller: _hostController, decoration: const InputDecoration(labelText: 'IP адаптера')),
                  TextField(controller: _portController, decoration: const InputDecoration(labelText: 'Порт')),
                  const SizedBox(height: 16),
                  FilledButton.icon(onPressed: _connect, icon: const Icon(Icons.wifi), label: const Text('Підключити')),
                  const SizedBox(height: 8),
                  Text(_status),
                ],
              ),
      ),
    );
  }
}

class _ObdCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color color;

  const _ObdCard({required this.icon, required this.label, required this.value, required this.color});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: color.withValues(alpha: 0.1),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 28),
            const SizedBox(height: 6),
            Text(label, style: theme.textTheme.labelSmall),
            const SizedBox(height: 2),
            Text(value, style: theme.textTheme.titleLarge?.copyWith(color: color)),
          ],
        ),
      ),
    );
  }
}
