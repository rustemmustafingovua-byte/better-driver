import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/services/travel_profile_service.dart';

class TruckParamsScreen extends StatefulWidget {
  const TruckParamsScreen({super.key});

  @override
  State<TruckParamsScreen> createState() => _TruckParamsScreenState();
}

class _TruckParamsScreenState extends State<TruckParamsScreen> {
  final TravelProfileService _profileService = TravelProfileService();
  late double _weightKg;
  late double _heightM;
  late double _widthM;
  late double _lengthM;
  late bool _hazardous;
  late bool _axleLoad;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    await _profileService.load();
    final params = _profileService.truckParams;
    setState(() {
      _weightKg = params.weightKg;
      _heightM = params.heightM;
      _widthM = params.widthM;
      _lengthM = params.lengthM;
      _hazardous = params.hazardous;
      _axleLoad = params.axleLoad;
      _isLoading = false;
    });
  }

  Future<void> _save() async {
    await _profileService.setTruckParams(TruckParameters(
      weightKg: _weightKg,
      heightM: _heightM,
      widthM: _widthM,
      lengthM: _lengthM,
      hazardous: _hazardous,
      axleLoad: _axleLoad,
    ));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (_isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Параметри вантажівки'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () async {
              await _save();
              if (!mounted) return;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Збережено')),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Розміри та вага', style: theme.textTheme.titleMedium),
                  const SizedBox(height: 16),
                  _buildSlider('Вага (кг)', _weightKg, 0, 50000, 100, (v) => _weightKg = v, 'кг'),
                  _buildSlider('Висота (м)', _heightM, 0, 10, 0.1, (v) => _heightM = v, 'м'),
                  _buildSlider('Ширина (м)', _widthM, 0, 5, 0.1, (v) => _widthM = v, 'м'),
                  _buildSlider('Довжина (м)', _lengthM, 0, 30, 0.1, (v) => _lengthM = v, 'м'),
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
                  Text('Обмеження', style: theme.textTheme.titleMedium),
                  const SizedBox(height: 12),
                  SwitchListTile(
                    title: const Text('Небезпечний вантаж'),
                    subtitle: const Text('ADR, обмеження на рух'),
                    value: _hazardous,
                    onChanged: (v) => setState(() => _hazardous = v),
                  ),
                  SwitchListTile(
                    title: const Text('Аксільне навантаження'),
                    subtitle: const Text('Обмеження по мостам'),
                    value: _axleLoad,
                    onChanged: (v) => setState(() => _axleLoad = v),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          FilledButton.icon(
            onPressed: () async {
              await _save();
              if (!mounted) return;
              Navigator.pop(context);
            },
            icon: const Icon(Icons.check),
            label: const Text('Зберегти'),
          ),
        ],
      ),
    );
  }

  Widget _buildSlider(String label, double value, double min, double max, double step, ValueChanged<double> onChanged, String unit) {
    final stepped = (value / step).round() * step;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          SizedBox(width: 160, child: Text(label)),
          Expanded(
            child: Slider(
              value: stepped,
              min: min,
              max: max,
              divisions: ((max - min) / step).round(),
              onChanged: onChanged,
            ),
          ),
          SizedBox(width: 70, child: Text('${stepped.toStringAsFixed(step < 1 ? 1 : 0)} $unit')),
        ],
      ),
    );
  }
}
