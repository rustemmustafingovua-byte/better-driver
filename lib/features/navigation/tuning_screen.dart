import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TuningScreen extends StatefulWidget {
  const TuningScreen({super.key});

  @override
  State<TuningScreen> createState() => _TuningScreenState();
}

class _TuningScreenState extends State<TuningScreen> {
  // Navigation / routing.
  double _turnAheadM = 200;
  double _turnBehindM = 40;
  double _turnWindowMs = 3000;
  bool _turnHoldEnabled = true;
  double _turnHoldMaxS = 10;
  double _turnMinDeg = 15;
  double _turnTolDeg = 30;

  bool _missedTurnEnabled = true;
  double _missedTurnM = 300;

  double _offRouteM = 80;
  double _offRouteFastM = 300;
  double _offRouteFastDeg = 45;
  double _offRouteHoldMs = 4000;
  double _offRouteFastHoldMs = 1500;

  double _resumeAccMean = 0.5;
  double _resumeAccStd = 2.0;
  double _resumeConfirmMs = 1200;
  bool _resumeGyro = true;
  double _resumeRampMs = 800;
  double _resumeSlowCap = 3.0;
  double _resumeSlowMs = 2000;

  double _stopAccMean = 0.2;
  double _stopAccStd = 1.5;
  bool _stopGyro = true;
  double _stopGyroAccMeanMax = 4.0;
  double _stopHoldMs = 3000;
  double _stopWindowMs = 5000;

  double _arriveM = 30;

  // Cameras.
  double _cameraShowM = 500;
  double _cameraWarnM = 400;
  double _cameraBeepM = 300;
  double _cameraSpeedTolKmh = 5;

  // GPS / quality.
  double _roadSnap = 15;
  double _roadSnapGps = 25;
  double _signalSnap = 40;

  bool _blindDeviationEnabled = false;
  double _blindDeviationDelayS = 2;
  double _blindDeviationMinDeg = 10;

  double _suspectNearM = 50;
  double _gateMaxSpeedKmh = 120;
  double _trailSeconds = 30;
  double _labelScale = 1.0;
  String _speedPlan = 'default';

  // Logs.
  int _logKeepDays = 7;
  int _maxLogMb = 50;

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _turnAheadM = prefs.getDouble('turnAheadM') ?? _turnAheadM;
      _turnBehindM = prefs.getDouble('turnBehindM') ?? _turnBehindM;
      _turnWindowMs = prefs.getDouble('turnWindowMs') ?? _turnWindowMs;
      _turnHoldEnabled = prefs.getBool('turnHoldEnabled') ?? _turnHoldEnabled;
      _turnHoldMaxS = prefs.getDouble('turnHoldMaxS') ?? _turnHoldMaxS;
      _turnMinDeg = prefs.getDouble('turnMinDeg') ?? _turnMinDeg;
      _turnTolDeg = prefs.getDouble('turnTolDeg') ?? _turnTolDeg;

      _missedTurnEnabled = prefs.getBool('missedTurnEnabled') ?? _missedTurnEnabled;
      _missedTurnM = prefs.getDouble('missedTurnM') ?? _missedTurnM;

      _offRouteM = prefs.getDouble('offRouteM') ?? _offRouteM;
      _offRouteFastM = prefs.getDouble('offRouteFastM') ?? _offRouteFastM;
      _offRouteFastDeg = prefs.getDouble('offRouteFastDeg') ?? _offRouteFastDeg;
      _offRouteHoldMs = prefs.getDouble('offRouteHoldMs') ?? _offRouteHoldMs;
      _offRouteFastHoldMs = prefs.getDouble('offRouteFastHoldMs') ?? _offRouteFastHoldMs;

      _resumeAccMean = prefs.getDouble('resumeAccMean') ?? _resumeAccMean;
      _resumeAccStd = prefs.getDouble('resumeAccStd') ?? _resumeAccStd;
      _resumeConfirmMs = prefs.getDouble('resumeConfirmMs') ?? _resumeConfirmMs;
      _resumeGyro = prefs.getBool('resumeGyro') ?? _resumeGyro;
      _resumeRampMs = prefs.getDouble('resumeRampMs') ?? _resumeRampMs;
      _resumeSlowCap = prefs.getDouble('resumeSlowCap') ?? _resumeSlowCap;
      _resumeSlowMs = prefs.getDouble('resumeSlowMs') ?? _resumeSlowMs;

      _stopAccMean = prefs.getDouble('stopAccMean') ?? _stopAccMean;
      _stopAccStd = prefs.getDouble('stopAccStd') ?? _stopAccStd;
      _stopGyro = prefs.getBool('stopGyro') ?? _stopGyro;
      _stopGyroAccMeanMax = prefs.getDouble('stopGyroAccMeanMax') ?? _stopGyroAccMeanMax;
      _stopHoldMs = prefs.getDouble('stopHoldMs') ?? _stopHoldMs;
      _stopWindowMs = prefs.getDouble('stopWindowMs') ?? _stopWindowMs;

      _arriveM = prefs.getDouble('arriveM') ?? _arriveM;

      _cameraShowM = prefs.getDouble('cameraShowM') ?? _cameraShowM;
      _cameraWarnM = prefs.getDouble('cameraWarnM') ?? _cameraWarnM;
      _cameraBeepM = prefs.getDouble('cameraBeepM') ?? _cameraBeepM;
      _cameraSpeedTolKmh = prefs.getDouble('cameraSpeedTolKmh') ?? _cameraSpeedTolKmh;

      _roadSnap = prefs.getDouble('roadSnap') ?? _roadSnap;
      _roadSnapGps = prefs.getDouble('roadSnapGps') ?? _roadSnapGps;
      _signalSnap = prefs.getDouble('signalSnap') ?? _signalSnap;

      _blindDeviationEnabled = prefs.getBool('blindDeviationEnabled') ?? _blindDeviationEnabled;
      _blindDeviationDelayS = prefs.getDouble('blindDeviationDelayS') ?? _blindDeviationDelayS;
      _blindDeviationMinDeg = prefs.getDouble('blindDeviationMinDeg') ?? _blindDeviationMinDeg;

      _suspectNearM = prefs.getDouble('suspectNearM') ?? _suspectNearM;
      _gateMaxSpeedKmh = prefs.getDouble('gateMaxSpeedKmh') ?? _gateMaxSpeedKmh;
      _trailSeconds = prefs.getDouble('trailSeconds') ?? _trailSeconds;
      _labelScale = prefs.getDouble('labelScale') ?? _labelScale;
      _speedPlan = prefs.getString('speedPlan') ?? _speedPlan;

      _logKeepDays = prefs.getInt('logKeepDays') ?? _logKeepDays;
      _maxLogMb = prefs.getInt('maxLogMb') ?? _maxLogMb;

      _isLoading = false;
    });
  }

  Future<void> _save() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('turnAheadM', _turnAheadM);
    await prefs.setDouble('turnBehindM', _turnBehindM);
    await prefs.setDouble('turnWindowMs', _turnWindowMs);
    await prefs.setBool('turnHoldEnabled', _turnHoldEnabled);
    await prefs.setDouble('turnHoldMaxS', _turnHoldMaxS);
    await prefs.setDouble('turnMinDeg', _turnMinDeg);
    await prefs.setDouble('turnTolDeg', _turnTolDeg);

    await prefs.setBool('missedTurnEnabled', _missedTurnEnabled);
    await prefs.setDouble('missedTurnM', _missedTurnM);

    await prefs.setDouble('offRouteM', _offRouteM);
    await prefs.setDouble('offRouteFastM', _offRouteFastM);
    await prefs.setDouble('offRouteFastDeg', _offRouteFastDeg);
    await prefs.setDouble('offRouteHoldMs', _offRouteHoldMs);
    await prefs.setDouble('offRouteFastHoldMs', _offRouteFastHoldMs);

    await prefs.setDouble('resumeAccMean', _resumeAccMean);
    await prefs.setDouble('resumeAccStd', _resumeAccStd);
    await prefs.setDouble('resumeConfirmMs', _resumeConfirmMs);
    await prefs.setBool('resumeGyro', _resumeGyro);
    await prefs.setDouble('resumeRampMs', _resumeRampMs);
    await prefs.setDouble('resumeSlowCap', _resumeSlowCap);
    await prefs.setDouble('resumeSlowMs', _resumeSlowMs);

    await prefs.setDouble('stopAccMean', _stopAccMean);
    await prefs.setDouble('stopAccStd', _stopAccStd);
    await prefs.setBool('stopGyro', _stopGyro);
    await prefs.setDouble('stopGyroAccMeanMax', _stopGyroAccMeanMax);
    await prefs.setDouble('stopHoldMs', _stopHoldMs);
    await prefs.setDouble('stopWindowMs', _stopWindowMs);

    await prefs.setDouble('arriveM', _arriveM);

    await prefs.setDouble('cameraShowM', _cameraShowM);
    await prefs.setDouble('cameraWarnM', _cameraWarnM);
    await prefs.setDouble('cameraBeepM', _cameraBeepM);
    await prefs.setDouble('cameraSpeedTolKmh', _cameraSpeedTolKmh);

    await prefs.setDouble('roadSnap', _roadSnap);
    await prefs.setDouble('roadSnapGps', _roadSnapGps);
    await prefs.setDouble('signalSnap', _signalSnap);

    await prefs.setBool('blindDeviationEnabled', _blindDeviationEnabled);
    await prefs.setDouble('blindDeviationDelayS', _blindDeviationDelayS);
    await prefs.setDouble('blindDeviationMinDeg', _blindDeviationMinDeg);

    await prefs.setDouble('suspectNearM', _suspectNearM);
    await prefs.setDouble('gateMaxSpeedKmh', _gateMaxSpeedKmh);
    await prefs.setDouble('trailSeconds', _trailSeconds);
    await prefs.setDouble('labelScale', _labelScale);
    await prefs.setString('speedPlan', _speedPlan);

    await prefs.setInt('logKeepDays', _logKeepDays);
    await prefs.setInt('maxLogMb', _maxLogMb);
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tuning'),
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
          _section('Повороти / Повернення', [
            _slider('Поворот за:', _turnAheadM, 50, 500, 10, (v) => _turnAheadM = v, 'м'),
            _slider('Поворот позаду:', _turnBehindM, 0, 200, 5, (v) => _turnBehindM = v, 'м'),
            _slider('Вікно повороту:', _turnWindowMs, 500, 10000, 100, (v) => _turnWindowMs = v, 'мс'),
            _switch('Утримувати поворот', _turnHoldEnabled, (v) => _turnHoldEnabled = v),
            _slider('Макс утримання:', _turnHoldMaxS, 1, 30, 1, (v) => _turnHoldMaxS = v, 'с'),
            _slider('Мін кут повороту:', _turnMinDeg, 5, 45, 1, (v) => _turnMinDeg = v, '°'),
            _slider('Допуск кута:', _turnTolDeg, 10, 90, 1, (v) => _turnTolDeg = v, '°'),
          ]),
          const SizedBox(height: 12),
          _section('Пропущений поворот', [
            _switch('Увімкнено', _missedTurnEnabled, (v) => _missedTurnEnabled = v),
            _slider('Дистанція:', _missedTurnM, 100, 1000, 50, (v) => _missedTurnM = v, 'м'),
          ]),
          const SizedBox(height: 12),
          _section('Поза маршрутом', [
            _slider('Поза маршрутом:', _offRouteM, 20, 500, 10, (v) => _offRouteM = v, 'м'),
            _slider('Швидко поза:', _offRouteFastM, 100, 1000, 50, (v) => _offRouteFastM = v, 'м'),
            _slider('Кут швидко:', _offRouteFastDeg, 15, 90, 1, (v) => _offRouteFastDeg = v, '°'),
            _slider('Утримання:', _offRouteHoldMs, 1000, 10000, 100, (v) => _offRouteHoldMs = v, 'мс'),
            _slider('Швидке утримання:', _offRouteFastHoldMs, 500, 5000, 100, (v) => _offRouteFastHoldMs = v, 'мс'),
          ]),
          const SizedBox(height: 12),
          _section('Відновлення / Зупинка', [
            _slider('Acc mean (resume):', _resumeAccMean, 0.1, 2.0, 0.1, (v) => _resumeAccMean = v, 'м/с²'),
            _slider('Acc std (resume):', _resumeAccStd, 0.5, 5.0, 0.1, (v) => _resumeAccStd = v, 'м/с²'),
            _slider('Підтвердження:', _resumeConfirmMs, 500, 5000, 100, (v) => _resumeConfirmMs = v, 'мс'),
            _switch('Гіроскоп (resume)', _resumeGyro, (v) => _resumeGyro = v),
            _slider('Рампа:', _resumeRampMs, 200, 3000, 100, (v) => _resumeRampMs = v, 'мс'),
            _slider('Slow cap:', _resumeSlowCap, 1.0, 10.0, 0.5, (v) => _resumeSlowCap = v, 'м/с'),
            _slider('Slow:', _resumeSlowMs, 500, 5000, 100, (v) => _resumeSlowMs = v, 'мс'),

            _slider('Acc mean (stop):', _stopAccMean, 0.05, 1.0, 0.05, (v) => _stopAccMean = v, 'м/с²'),
            _slider('Acc std (stop):', _stopAccStd, 0.5, 5.0, 0.1, (v) => _stopAccStd = v, 'м/с²'),
            _switch('Гіроскоп (stop)', _stopGyro, (v) => _stopGyro = v),
            _slider('Gyro acc max:', _stopGyroAccMeanMax, 1.0, 10.0, 0.5, (v) => _stopGyroAccMeanMax = v, 'м/с²'),
            _slider('Утримання стоп:', _stopHoldMs, 1000, 10000, 100, (v) => _stopHoldMs = v, 'мс'),
            _slider('Вікно стоп:', _stopWindowMs, 1000, 10000, 100, (v) => _stopWindowMs = v, 'мс'),

            _slider('Прибуття:', _arriveM, 10, 200, 5, (v) => _arriveM = v, 'м'),
          ]),
          const SizedBox(height: 12),
          _section('Камери', [
            _slider('Показ:', _cameraShowM, 100, 2000, 50, (v) => _cameraShowM = v, 'м'),
            _slider('Попередження:', _cameraWarnM, 100, 1500, 50, (v) => _cameraWarnM = v, 'м'),
            _slider('Сигнал:', _cameraBeepM, 100, 1000, 50, (v) => _cameraBeepM = v, 'м'),
            _slider('Допуск швидкості:', _cameraSpeedTolKmh, 0, 30, 1, (v) => _cameraSpeedTolKmh = v, 'км/год'),
          ]),
          const SizedBox(height: 12),
          _section('GPS / Якість', [
            _slider('Прив\'язка дороги:', _roadSnap, 5, 50, 1, (v) => _roadSnap = v, 'м'),
            _slider('GPS прив\'язка:', _roadSnapGps, 10, 100, 1, (v) => _roadSnapGps = v, 'м'),
            _slider('Сигнал:', _signalSnap, 10, 150, 1, (v) => _signalSnap = v, 'м'),
            _switch('Сліпота', _blindDeviationEnabled, (v) => _blindDeviationEnabled = v),
            _slider('Затримка сліпоти:', _blindDeviationDelayS, 0.5, 10, 0.5, (v) => _blindDeviationDelayS = v, 'с'),
            _slider('Мін кут сліпоти:', _blindDeviationMinDeg, 5, 45, 1, (v) => _blindDeviationMinDeg = v, '°'),
            _slider('Підозрілий поріг:', _suspectNearM, 10, 200, 5, (v) => _suspectNearM = v, 'м'),
            _slider('Макс швидкість:', _gateMaxSpeedKmh, 30, 200, 5, (v) => _gateMaxSpeedKmh = v, 'км/год'),
            _slider('Трейл:', _trailSeconds, 0, 120, 5, (v) => _trailSeconds = v, 'с'),
            _slider('Масштаб міток:', _labelScale, 0.5, 3.0, 0.1, (v) => _labelScale = v, ''),
            _dropdown('План швидкості', _speedPlan, (v) => _speedPlan = v, ['default', 'eco', 'sport']),
          ]),
          const SizedBox(height: 12),
          _section('Логи', [
            _slider('Зберігати днів:', _logKeepDays.toDouble(), 1, 90, 1, (v) => _logKeepDays = v.toInt(), 'днів'),
            _slider('Макс розмір:', _maxLogMb.toDouble(), 10, 500, 10, (v) => _maxLogMb = v.toInt(), 'МБ'),
          ]),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: FilledButton.icon(
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () async {
                    await _save();
                    if (!mounted) return;
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Збережено')),
                    );
                  },
                  icon: const Icon(Icons.save),
                  label: const Text('Зберегти'),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance();
                    await prefs.clear();
                    await _load();
                    if (!mounted) return;
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Скинуто до замовчування')),
                    );
                  },
                  icon: const Icon(Icons.restore),
                  label: const Text('Скинути'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _section(String title, List<Widget> children) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 12),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _slider(
    String label,
    double value,
    double min,
    double max,
    double step,
    ValueChanged<double> onChanged,
    String unit,
  ) {
    final steppedValue = (value / step).round() * step;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          SizedBox(width: 180, child: Text(label)),
          Expanded(
            child: Slider(
              value: steppedValue,
              min: min,
              max: max,
              divisions: ((max - min) / step).round(),
              onChanged: (v) {
                setState(() => onChanged(v));
              },
              onChangeEnd: (_) => _save(),
            ),
          ),
          SizedBox(width: 60, child: Text('${steppedValue.toStringAsFixed(step < 1 ? 1 : 0)} $unit')),
        ],
      ),
    );
  }

  Widget _switch(String label, bool value, ValueChanged<bool> onChanged) {
    return SwitchListTile(
      value: value,
      title: Text(label),
      onChanged: (v) {
        setState(() => onChanged(v));
        _save();
      },
      contentPadding: EdgeInsets.zero,
    );
  }

  Widget _dropdown(
    String label,
    String value,
    ValueChanged<String> onChanged,
    List<String> items,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          SizedBox(width: 180, child: Text(label)),
          Expanded(
            child: DropdownButton<String>(
              value: value,
              isDense: true,
              items: items
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (v) {
                if (v == null) return;
                setState(() => onChanged(v));
                _save();
              },
            ),
          ),
        ],
      ),
    );
  }
}
