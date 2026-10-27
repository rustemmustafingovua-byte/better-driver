import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<OnboardingPage> _pages = [
    OnboardingPage(
      icon: Icons.gps_fixed_rounded,
      title: 'Навігація без GPS',
      description: 'Веде по маршруту навіть при глушінні: датчики, останній GPS і позиція за мережею.',
      color: Colors.blue,
    ),
    OnboardingPage(
      icon: Icons.warning_amber_rounded,
      title: 'Захист від глушіння',
      description: 'Розпізнає глушіння за сигналом приймача і попереджає, коли позиція втрачена.',
      color: Colors.orange,
    ),
    OnboardingPage(
      icon: Icons.tune_rounded,
      title: 'Корекція позиції',
      description: 'Кнопки ↑100 / ↓100 виправляють маркер одним дотиком. Безпечно і швидко.',
      color: Colors.green,
    ),
    OnboardingPage(
      icon: Icons.download_rounded,
      title: 'Офлайн-режим',
      description: 'Завантажте граф доріг і каталоги адрес — маршрути будуть працювати без інтернету.',
      color: Colors.purple,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) => setState(() => _currentPage = index),
                itemCount: _pages.length,
                itemBuilder: (context, index) {
                  final page = _pages[index];
                  return Padding(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                            color: page.color.withValues(alpha: 0.15),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(page.icon, size: 80, color: page.color),
                        ),
                        const SizedBox(height: 48),
                        Text(
                          page.title,
                          style: theme.textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          page.description,
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      _pages.length,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: _currentPage == index ? 24 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: _currentPage == index
                              ? theme.colorScheme.primary
                              : theme.colorScheme.outline,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  if (_currentPage < _pages.length - 1)
                    FilledButton.icon(
                      onPressed: () => _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      ),
                      icon: const Icon(Icons.arrow_forward),
                      label: const Text('Далі'),
                    )
                  else
                    FilledButton.icon(
                      onPressed: _finishOnboarding,
                      icon: const Icon(Icons.check),
                      label: const Text('Почати'),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _finishOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboarding_completed', true);
    if (mounted) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const _MainApp()),
      );
    }
  }
}

class OnboardingPage {
  final IconData icon;
  final String title;
  final String description;
  final Color color;

  const OnboardingPage({
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
  });
}

class _MainApp extends StatelessWidget {
  const _MainApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.navigation_rounded, size: 80, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 24),
            Text('BetterDriver', style: Theme.of(context).textTheme.headlineMedium),
          ],
        ),
      ),
    );
  }
}
