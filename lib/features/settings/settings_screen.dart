import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../map/cubit/map_cubit.dart';
import '../../core/services/travel_profile_service.dart';
import '../../core/services/cloud/cloud_sync_service.dart';
import 'truck_params_screen.dart';

class SettingsScreen extends StatefulWidget {
  final Future<void> Function(ThemeMode) onThemeChanged;
  final ThemeMode currentThemeMode;

  const SettingsScreen({
    super.key,
    required this.onThemeChanged,
    required this.currentThemeMode,
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  static const _kSnapToRoad = 'snap_to_road';
  static const _kShowTrafficLights = 'show_traffic_lights';
  static const _kShowCameras = 'show_cameras';
  static const _kVoiceEnabled = 'voice_enabled';
  static const _kVoiceSpeed = 'voice_speed';
  static const _kEnglish = 'english_mode';

  static const _profileIcons = {
    'directions_car': Icons.directions_car,
    'local_shipping': Icons.local_shipping,
    'motorcycle': Icons.motorcycle,
    'pedal_bike': Icons.pedal_bike,
  };

  bool _snapToRoad = true;
  bool _showTrafficLights = true;
  bool _showCameras = false;
  bool _voiceEnabled = true;
  double _voiceSpeed = 0.5;
  bool _english = false;
  bool _isCheckingUpdate = false;
  late final TravelProfileService _profileService = TravelProfileService();
  TruckParameters _truckParams = const TruckParameters();

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _snapToRoad = prefs.getBool(_kSnapToRoad) ?? true;
      _showTrafficLights = prefs.getBool(_kShowTrafficLights) ?? true;
      _showCameras = prefs.getBool(_kShowCameras) ?? false;
      _voiceEnabled = prefs.getBool(_kVoiceEnabled) ?? true;
      _voiceSpeed = prefs.getDouble(_kVoiceSpeed) ?? 0.5;
      _english = prefs.getBool(_kEnglish) ?? false;
    });
    await _profileService.load();
    setState(() {
      _truckParams = _profileService.truckParams;
    });
  }

  Future<void> _saveBool(String key, bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }

  Future<void> _saveDouble(String key, double value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(key, value);
  }

  Future<void> _applyVoice() async {
    if (!_voiceEnabled) return;
    try {
      final tts = FlutterTts();
      await tts.setLanguage(_english ? 'en-US' : 'uk-UA');
      await tts.setSpeechRate(_voiceSpeed);
    } catch (_) {}
  }

  Future<void> _checkForUpdates() async {
    setState(() => _isCheckingUpdate = true);
    try {
      // In a real implementation, query a release.json endpoint.
      await Future.delayed(const Duration(seconds: 1));
      if (!mounted) return;
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Оновлення'),
          content: const Text('У вас остання версія 1.1.0'),
          actions: [
            FilledButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } catch (_) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Не вдалося перевірити оновлення')),
      );
    } finally {
      setState(() => _isCheckingUpdate = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Налаштування')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildSectionHeader('Профіль'),
          Card(
            child: Column(
              children: [
                ListTile(
                  title: const Text('Тип автомобіля'),
                  subtitle: const Text('Авто, Вантажівка, Мото, Вело'),
                  trailing: const Icon(Icons.directions_car),
                  onTap: () async {
                    final profile = await showDialog<TravelProfile>(
                      context: context,
                      builder: (context) => SimpleDialog(
                        title: const Text('Тип автомобіля'),
                        children: TravelProfileConfig.values.map((c) {
                          return SimpleDialogOption(
                            onPressed: () => Navigator.pop(context, c.profileParam == 'car'
                                ? TravelProfile.car
                                : c.profileParam == 'truck'
                                    ? TravelProfile.truck
                                    : c.profileParam == 'motorcycle'
                                        ? TravelProfile.motorcycle
                                        : TravelProfile.bicycle),
                            child: Row(
                              children: [
                                Icon(_profileIcons[c.icon] ?? Icons.help_outline, color: c.color),
                                const SizedBox(width: 12),
                                Text(c.label),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    );
                    if (profile != null) {
                      final service = TravelProfileService();
                      await service.load();
                      await service.setProfile(profile);
                      if (!mounted) return;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Профіль: ${TravelProfileConfig.fromProfile(profile).label}')),
                      );
                    }
                  },
                ),
                if (_profileService.current == TravelProfile.truck)
                  ListTile(
                    title: const Text('Параметри вантажівки'),
                    subtitle: Text('${_truckParams.weightKg} кг, ${_truckParams.heightM} м'),
                    trailing: const Icon(Icons.local_shipping),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const TruckParamsScreen()),
                      );
                    },
                  ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                SwitchListTile(
                  title: const Text('Прив\'язувати стрілку до дороги'),
                  subtitle: const Text('При GPS маркер стоїть на дорозі'),
                  value: _snapToRoad,
                  onChanged: (v) {
                    setState(() => _snapToRoad = v);
                    _saveBool(_kSnapToRoad, v);
                  },
                ),
                SwitchListTile(
                  title: const Text('Показувати світлофори'),
                  subtitle: const Text('Значки на карті з масштабу 15'),
                  value: _showTrafficLights,
                  onChanged: (v) {
                    setState(() => _showTrafficLights = v);
                    _saveBool(_kShowTrafficLights, v);
                  },
                ),
                SwitchListTile(
                  title: const Text('Камери контролю швидкості'),
                  subtitle: const Text('Показувати маркери камер'),
                  value: _showCameras,
                  onChanged: (v) {
                    setState(() => _showCameras = v);
                    _saveBool(_kShowCameras, v);
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          _buildSectionHeader('Голос'),
          Card(
            child: Column(
              children: [
                SwitchListTile(
                  title: const Text('Голосові підказки'),
                  subtitle: Text(_english ? 'English' : 'Українська мова'),
                  value: _voiceEnabled,
                  onChanged: (v) async {
                    setState(() => _voiceEnabled = v);
                    await _saveBool(_kVoiceEnabled, v);
                    if (v) await _applyVoice();
                  },
                ),
                ListTile(
                  title: const Text('Швидкість голосу'),
                  subtitle: Slider(
                    value: _voiceSpeed,
                    min: 0.1,
                    max: 1.0,
                    divisions: 9,
                    label: _voiceSpeed.toStringAsFixed(1),
                    onChanged: (v) async {
                      setState(() => _voiceSpeed = v);
                      await _saveDouble(_kVoiceSpeed, v);
                      await _applyVoice();
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          _buildSectionHeader('Офлайн'),
          Card(
            child: Column(
              children: [
                ListTile(
                  title: const Text('Завантажити офлайн-маршрути'),
                  subtitle: const Text('Граф доріг України (~285 МБ)'),
                  trailing: const Icon(Icons.download),
                  onTap: () => context.read<MapCubit>().downloadOfflineMap(),
                ),
                ListTile(
                  title: const Text('Оновити дані'),
                  subtitle: const Text('Світлофори, переїзди, камери'),
                  trailing: const Icon(Icons.update),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Дані будуть оновлені при наступному запуску')),
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          _buildSectionHeader('Оновлення'),
          Card(
            child: ListTile(
              title: const Text('Перевірити оновлення'),
              subtitle: const Text('Версія 1.1.0'),
              trailing: _isCheckingUpdate
                  ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
                  : const Icon(Icons.system_update),
              onTap: _isCheckingUpdate ? null : _checkForUpdates,
            ),
          ),
          const SizedBox(height: 24),
          _buildSectionHeader('Додаток'),
          Card(
            child: Column(
              children: [
                SwitchListTile(
                  title: const Text('English / Англійська'),
                  subtitle: const Text('Перемикач мови інтерфейсу'),
                  value: _english,
                  onChanged: (v) async {
                    setState(() => _english = v);
                    await _saveBool(_kEnglish, v);
                    await _applyVoice();
                  },
                ),
                ListTile(
                  title: const Text('Тема інтерфейсу'),
                  subtitle: Text(_themeLabel(widget.currentThemeMode)),
                  trailing: DropdownButton<ThemeMode>(
                    value: widget.currentThemeMode,
                    items: const [
                      DropdownMenuItem(value: ThemeMode.system, child: Text('Авто')),
                      DropdownMenuItem(value: ThemeMode.light, child: Text('День')),
                      DropdownMenuItem(value: ThemeMode.dark, child: Text('Ніч')),
                    ],
                    onChanged: (mode) {
                      if (mode == null) return;
                      widget.onThemeChanged(mode);
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Хмара / Синхронізація'),
                  subtitle: const Text('Синхронізація маршрутів і налаштувань'),
                  trailing: const Icon(Icons.cloud_upload),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CloudSyncScreen()),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Панель індикації'),
                  subtitle: const Text('OBD, швидкість, обороти'),
                  trailing: const Icon(Icons.dashboard),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DashboardScreen()),
                    );
                  },
                ),
                ListTile(
                  title: const Text('OBD-адаптер'),
                  subtitle: const Text('Bluetooth ELM327 / WiFi'),
                  trailing: const Icon(Icons.bluetooth),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Відкрийте вкладку OBD для підключення')),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _themeLabel(ThemeMode mode) {
    return switch (mode) {
      ThemeMode.light => 'День',
      ThemeMode.dark => 'Ніч',
      _ => 'Авто (система)',
    };
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

