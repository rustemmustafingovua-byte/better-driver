# BetterDriver — Быстрый старт

## Что это
Flutter-приложение для навигации и планирования маршрутов для дальнобойщиков.

## Установка (2 минуты)
```bash
cd /Users/admin/better_driver
flutter pub get
```

## Запуск (1 минута)
```bash
flutter run
# Или на эмуляторе:
flutter run -d emulator-5554
```

## Сборка APK (5 минут)
```bash
flutter build apk --release
# APK: android/app/build/outputs/flutter-apk/app-release.apk
```

## Структура проекта
- `lib/main.dart` — точка входа
- `lib/features/` — экраны (planning, navigation, map, settings)
- `lib/shared/` — общие виджеты
- `core/` — темы, константы, сервисы

## Зависимости
- flutter_map + latlong2 — карты
- geolocator 12 — геолокация
- permission_handler ^11.4.0 — разрешения
- shared_preferences — настройки

## Тесты
```bash
flutter test
```

## Troubleshooting
- Gradle error → `flutter clean && flutter pub get`
- Permission denied → проверь AndroidManifest.xml
- Map not loading → проверь internet permission
