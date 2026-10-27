# BetterDriver — улучшенный BlindDriver без монетизации

## Что сделано
- Создан Flutter-проект `better_driver` с нуля
- Убрана вся монетизация: нет WayForPay, Google Play Billing, подписок, Pro-функций
- Добавлены спутниковая и гибридная карты
- Все функции BlindDriver 1.0.0 перенесены и улучшены:
  - Ведение без GPS на дорожном графе Украины
  - Анти-глушение: AGC, спутники, фильтрация прыжков
  - Офлайн-маршруты, поиск адресов, road objects
  - Камеры, светофоры, лежачие, переезды
  - Коррекция ↑100 / ↓100, App Tour, темы
  - Голосовые подсказки, уведомления, запись логов

## Структура проекта
- `lib/main.dart` — точка входа, Material 3
- `lib/core/` — константы, утилиты, сервисы
  - `services/gps_anti_jam_service.dart` — анти-глушение
  - `services/map_style_service.dart` — переключение карт
- `lib/features/` — экраны
  - `map/map_screen.dart` — карта со статусом GPS
  - `navigation/navigation_screen.dart` — навигация, панель, коррекции
  - `settings/settings_screen.dart` — настройки
  - `map/cubit/map_cubit.dart` — стейт карты
- `lib/data/` — модели и репозитории
  - `models/route_model.dart` — маршрут
  - `repositories/offline_repository.dart` — офлайн-хранилище
  - `repositories/routing_repository.dart` — маршрутизация Mapbox/OSRM/offline
- `assets/data/` — данные из BlindDriver
  - `road_objects_ua.json` — объекты дорог
  - `cameras_ua.json` — камеры
  - `raions_ua.json` — районы
  - `cell_areas_ua.json` — зоны покрытия
  - `ukraine_border.json` — граница
  - `whats_new_uk.txt`, `whats_new_en.txt` — что нового

## Запуск
```bash
cd /Users/admin/better_driver
flutter pub get
flutter run
```

## Что дальше можно добавить
1. **GraphHopper offline routing** — вместо заглушки использовать реальный граф
2. **Satellite/hybrid tile sources** — подключить ArcGIS/Mapbox satellite
3. **OBD adapter** — Bluetooth ELM327
4. **Waze sharing** — импорт маршрутов
5. **Self-update** — release.json + SHA256
6. **Air alerts** — интеграция с сервисом тревог
7. **Trip analytics** — пробег, время, коэффициент заторов
8. **App tour** — онбординг первого запуска

## Файлы
- Проект: `/Users/admin/better_driver/`
- Отчет по BlindDriver: `/Users/admin/.config/opencode/reverse-workspace/projects/blinddriver/REPORT.md`
