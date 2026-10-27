import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'tuning_screen.dart';
import '../settings/settings_screen.dart';
import '../../core/services/position_service.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  bool _voiceEnabled = true;
  bool _mapFollowsCourse = true;
  double _manualOffsetM = 0;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    if (!mounted) return;
    setState(() {
      _voiceEnabled = prefs.getBool('voice_enabled') ?? true;
      _mapFollowsCourse = prefs.getBool('map_follows_course') ?? true;
      _manualOffsetM = prefs.getDouble('manual_offset_m') ?? 0;
      _isLoading = false;
    });
  }

  Future<void> _save() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('voice_enabled', _voiceEnabled);
    await prefs.setBool('map_follows_course', _mapFollowsCourse);
    await prefs.setDouble('manual_offset_m', _manualOffsetM);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (_isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('More'),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _section(theme, 'Навігація', [
            _tile(
              theme,
              icon: Icons.tune,
              title: 'Tuning',
              subtitle: 'Параметри навігації',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TuningScreen()),
              ),
            ),
            _tile(
              theme,
              icon: Icons.settings,
              title: 'Налаштування',
              subtitle: 'Загальні налаштування',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsScreen(
                    onThemeChanged: (mode) async {},
                    currentThemeMode: ThemeMode.system,
                  ),
                ),
              ),
            ),
          ]),
          const SizedBox(height: 12),
          _section(theme, 'Позиція', [
            _tile(
              theme,
              icon: Icons.explore,
              title: 'Карта за курсом',
              subtitle: _mapFollowsCourse ? 'Автоматично повертати карту' : 'Фіксована карта',
              trailing: Switch(
                value: _mapFollowsCourse,
                onChanged: (v) {
                  setState(() => _mapFollowsCourse = v);
                  _save();
                },
              ),
            ),
            _tile(
              theme,
              icon: Icons.volume_up,
              title: 'Голосові підказки',
              subtitle: _voiceEnabled ? 'Увімкнено' : 'Вимкнено',
              trailing: Switch(
                value: _voiceEnabled,
                onChanged: (v) {
                  setState(() => _voiceEnabled = v);
                  _save();
                },
              ),
            ),
            _tile(
              theme,
              icon: Icons.adjust,
              title: 'Корекція позиції',
              subtitle: '${_manualOffsetM.round()} м',
              onTap: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => _OffsetAdjustScreen(
                      initialOffset: _manualOffsetM,
                    ),
                  ),
                );
                if (result != null && result is double) {
                  setState(() => _manualOffsetM = result);
                  await _save();
                }
              },
            ),
          ]),
          const SizedBox(height: 12),
          _section(theme, 'Інформація', [
            _tile(
              theme,
              icon: Icons.info_outline,
              title: 'BetterDriver',
              subtitle: 'v1.2.0',
              onTap: null,
            ),
            _tile(
              theme,
              icon: Icons.public,
              title: 'Дані',
              subtitle: 'OpenStreetMap, OSMnx',
              onTap: null,
            ),
          ]),
        ],
      ),
    );
  }

  Widget _section(ThemeData theme, String title, List<Widget> children) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: theme.textTheme.titleMedium),
            const SizedBox(height: 12),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _tile(
    ThemeData theme, {
    required IconData icon,
    required String title,
    String? subtitle,
    Widget? trailing,
    VoidCallback? onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: theme.colorScheme.primary),
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing: trailing,
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
    );
  }
}

class _OffsetAdjustScreen extends StatefulWidget {
  final double initialOffset;

  const _OffsetAdjustScreen({required this.initialOffset});

  @override
  State<_OffsetAdjustScreen> createState() => _OffsetAdjustScreenState();
}

class _OffsetAdjustScreenState extends State<_OffsetAdjustScreen> {
  late double _offset;

  @override
  void initState() {
    super.initState();
    _offset = widget.initialOffset;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Корекція позиції'),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              PositionService().setManualOffset(_offset);
              Navigator.pop(context, _offset);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                '${_offset.round()} м',
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: _offset != 0 ? theme.colorScheme.error : theme.colorScheme.onSurface,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                IconButton.filledTonal(
                  onPressed: () => setState(() => _offset -= 100),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  tooltip: 'Назад 100 м',
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Slider(
                    value: _offset,
                    min: -500,
                    max: 500,
                    divisions: 50,
                    onChanged: (v) => setState(() => _offset = v),
                  ),
                ),
                const SizedBox(width: 16),
                IconButton.filledTonal(
                  onPressed: () => setState(() => _offset += 100),
                  icon: const Icon(Icons.keyboard_arrow_up),
                  tooltip: 'Вперед 100 м',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: FilledButton.tonal(
              onPressed: () => setState(() => _offset = 0),
              child: const Text('Скинути'),
            ),
          ),
        ],
      ),
    );
  }
}
