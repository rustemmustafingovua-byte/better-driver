import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';
import 'core/constants/app_constants.dart';
import 'core/theme/app_theme.dart';
import 'core/services/travel_profile_service.dart';
import 'core/services/position_service.dart';
import 'core/services/route_planner.dart';
import 'features/planning/planning_screen.dart';
import 'features/navigation/guidance_screen.dart';
import 'features/map/map_screen.dart';
import 'features/settings/settings_screen.dart';
import 'features/onboarding/onboarding_screen.dart';
import 'features/analytics/analytics_screen.dart';
import 'features/update/update_screen.dart';
import 'features/obd/obd_screen.dart';
import 'features/alerts/air_alert_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _setPreferredOrientations();
  runApp(const BetterDriverApp());
}

Future<void> _setPreferredOrientations() async {
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
}

class BetterDriverApp extends StatefulWidget {
  const BetterDriverApp({super.key});

  @override
  State<BetterDriverApp> createState() => _BetterDriverAppState();
}

class _BetterDriverAppState extends State<BetterDriverApp> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  void initState() {
    super.initState();
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final mode = prefs.getString('theme_mode') ?? 'system';
    if (!mounted) return;
    setState(() {
      _themeMode = switch (mode) {
        'light' => ThemeMode.light,
        'dark' => ThemeMode.dark,
        _ => ThemeMode.system,
      };
    });
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    final prefs = await SharedPreferences.getInstance();
    final key = switch (mode) {
      ThemeMode.light => 'light',
      ThemeMode.dark => 'dark',
      _ => 'system',
    };
    await prefs.setString('theme_mode', key);
    if (!mounted) return;
    setState(() => _themeMode = mode);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: _themeMode,
      home: FutureBuilder<bool>(
        future: _showOnboarding(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          }
          if (snapshot.data == true) {
            return const OnboardingScreen();
          }
          return MainScreen(
            onThemeChanged: setThemeMode,
            currentThemeMode: _themeMode,
          );
        },
      ),
    );
  }

  Future<bool> _showOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('onboarding_completed') != true;
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 80, textColor: theme.colorScheme.primary),
            const SizedBox(height: 24),
            Text(
              AppConstants.appName,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Україна',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 32),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  final Future<void> Function(ThemeMode) onThemeChanged;
  final ThemeMode currentThemeMode;

  const MainScreen({
    super.key,
    required this.onThemeChanged,
    required this.currentThemeMode,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List<Widget> get _screens => [
    const PlanningScreen(),
    GuidanceScreen(
      route: const _EmptyRoute(),
      originLabel: '',
      destinationLabel: '',
      startPoint: const LatLng(50.4501, 30.5234),
      startFix: null,
      cameras: const [],
    ),
    const MapScreen(),
    SettingsScreen(
      onThemeChanged: widget.onThemeChanged,
      currentThemeMode: widget.currentThemeMode,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _screens),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) => setState(() => _selectedIndex = index),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.route), label: 'Маршрут'),
          NavigationDestination(icon: Icon(Icons.navigation), label: 'Ведення'),
          NavigationDestination(icon: Icon(Icons.map), label: 'Карта'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Налаштування'),
        ],
      ),
    );
  }
}

class _EmptyRoute extends RouteVariant {
  const _EmptyRoute()
      : super(
          id: 'empty',
          geometry: const <LatLng>[],
          distanceM: 0,
          durationS: 0,
          trafficDelayS: 0,
          summary: '',
        );
}
