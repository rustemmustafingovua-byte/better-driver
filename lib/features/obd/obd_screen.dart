import 'package:flutter/material.dart';
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
  bool _isConnected = false;
  String _status = 'Відключено';

  @override
  void initState() {
    super.initState();
    _obdService.dataStream.listen((data) {
      if (mounted) setState(() => _obdData = data);
    });
  }

  @override
  void dispose() {
    _obdService.disconnect();
    super.dispose();
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
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final rpm = _obdData['rpm'] ?? 0;
    final speed = _obdData['speed'] ?? 0;
    final temp = _obdData['coolantTemp'] ?? 0;
    final fuel = _obdData['fuel'] ?? 0;

    return Scaffold(
      appBar: AppBar(title: const Text('OBD / ELM327 WiFi')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: _isConnected
            ? GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: [
                  _ObdCard(icon: Icons.speed, label: 'Швидкість', value: '$speed км/год', color: theme.colorScheme.primary),
                  _ObdCard(icon: Icons.timeline, label: 'Обороти', value: '$rpm об/хв', color: theme.colorScheme.tertiary),
                  _ObdCard(icon: Icons.thermostat, label: 'Температура', value: '$temp°C', color: temp > 100 ? theme.colorScheme.error : theme.colorScheme.secondary),
                  _ObdCard(icon: Icons.local_gas_station, label: 'Паливо', value: '$fuel%', color: fuel < 20 ? theme.colorScheme.error : theme.colorScheme.primary),
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
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 32),
            const SizedBox(height: 8),
            Text(label, style: theme.textTheme.labelSmall),
            const SizedBox(height: 4),
            Text(value, style: theme.textTheme.titleLarge?.copyWith(color: color)),
          ],
        ),
      ),
    );
  }
}
