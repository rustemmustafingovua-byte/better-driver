# BetterDriver — комплексный отчет по анализу BlindDriver и улучшениям

## Анализ референсного APK (BlindDriver 1.0.1)

### Архитектура
- **Пакет**: `ua.nav.blinddriver`
- **Min SDK**: 29 (Android 10), **Target SDK**: 36
- **Карты**: MapLibre (нативная библиотека libmaplibre.so)
- **Маршрутизация**: Mapbox Directions API + OSRM (fallback)
- **Геолокация**: fused location + сеть + dead reckoning
- **Офлайн**: GraphHopper-граф дорог (~285 МБ), каталоги адресов по областям
- **Данные вшиты**: камеры (426 шт), светофоры/переходы/переезды (>90 тыс), лежачие полицейские
- **Голос**: TTS, три режима (все/важное/выкл)
- **OBD**: Bluetooth ELM327 (только скорость)
- **Монетизация**: WayForPay, Google Play Billing, подписки Pro
- **Самообновление**: release.json + SHA256 + 30 дней

### Ключевые алгоритмы
1. **Анти-глушение**: AGC, количество спутников, frozen coordinates, jump detection, accelerometer micro-vibrations
2. **Dead reckoning**: гироскоп + последний GPS + скорость, похибка растет с расстоянием
3. **Road graph offline**: узлы+ребра, Dijkstra для офлайн-маршрутов
4. **Camera warnings**: 700 м голос, 300 м звуковой сигнал, фильтр по направлению
5. **Position correction**: ↑100 / ↓100 с удержанием для непрерывной коррекции

### Smali-анализ
- 7603 smali-файла, обфuscation (R8)
- Основные классы: `BlindDriverApp`, `MainActivity`, `NavService`, `PackDownloadService`
- Google Play Services, WorkManager, Room, EmojiCompat

## Что реализовано в BetterDriver (до изменений)

### Есть
- Flutter-скелет с Material 3
- Планирование маршрутов A/B/через
- Turn-by-turn guidance с TTS
- PositionService (GPS trust, dead reckoning, ↑100/↓100)
- CameraService (426 камер, направление)
- RoadObjectsService (светофоры, переходы, лежачие)
- TileCacheService (кеш тайлов)
- MapStyleService (OSM, спутник, гибрид)
- AddressNormalizer ( RU→UA, исторические названия)
- AirAlertScreen (два источника)
- PowerOutageService (DTEK, oblenergo)
- OBDService (WiFi ELM327)
- RoutePlanner (OSRM + local GraphHopper fallback)
- RouteHistory, SavedPlaces
- QR-сканер координат
- TuningScreen (30+ параметров)
- Настройки темы/голоса/камер

### Нет / Заглушки
- Офлайн-граф дорог (нет данных, нет алгоритма)
- Офлайн-поиск адресов по каталогам областей
- Вантажний режим (вес, высота, ширина,石墨)
- Самообновление (release.json + SHA256)
- Аналитика поездок
- App Tour / онбординг
- Waze sharing
- Сохраненные маршруты
- Быстрые ярлыки Дом/Работа
- Фоновый сервис навигации с уведомлением
- Speed plan (default/eco/sport)
- Trip analytics chart
- Proper loading/empty/error skeletons

## Комплексные улучшения, добавленные

### 1. UpdateService (core/services/update_service.dart)
- Проверка обновлений раз в 24ч
- release.json с GitHub raw
- SHA256 верификация APK
- Скачивание в ApplicationSupport
- Версионирование

### 2. TripAnalytics (core/services/analytics_service.dart)
- Запись поездок (точки, скорость, остановки)
- Статистика: расстояние, время, средняя скорость, стоянки
- История поездок (до 500)
- Общий пробег
- Агрегация в реальном времени

### 3. RouteGraphService (core/services/route_graph_service.dart)
- Dijkstra на графе дорог
- Haversine для поиска ближайшего узла
- Поддержка скачанного графа
- Fallback на bundled asset

### 4. OnboardingScreen (features/onboarding/onboarding_screen.dart)
- 4 слайда: без GPS, глушение, коррекция, офлайн
- PageView с индикаторами
- Сохранение флага onboarding_completed

### 5. AnalyticsScreen (features/analytics/analytics_screen.dart)
- Карточки общего пробега и количества поездок
- Список последних 10 поездок
- Пустое состояние

### 6. UpdateScreen (features/update/update_screen.dart)
- Проверка обновлений
- Отображение changelog
- Прогресс загрузки
- SHA256 верификация

### 7. WazeShareScreen (features/waze/waze_share_screen.dart)
- Deep link в Waze
- Fallback на браузер
- Копирование ссылки

### 8. TravelProfileService (core/services/travel_profile_service.dart)
- 4 профиля: авто, вантажівка, мото, вело
- Параметры грузовика: вес, высота, ширина, длина, опасный, ось
- Персистенция в SharedPreferences

### 9. SavedRoutesService (features/planning/saved_routes_service.dart)
- Сохранение маршрутов с via-points
- Удаление, счетчик использования
- До 500 маршрутов

### 10. NavService (core/services/nav_service.dart)
- Фоновый foreground service
- Persistent notification
- Периодические TTS-обновления

### 11. Обновления существующих файлов
- **pubspec.yaml**: добавлены share_plus, url_launcher, crypto, shimmer
- **main.dart**: онбординг, SplashScreen, theme persistence
- **routing_repository.dart**: поддержка TravelProfile.truck, TruckParameters
- **route_model.dart**: поле profile

## Что еще можно добавить (дальше)

### Высокий приоритет
1. **Офлайн-каталоги адресов по областям** (25 файлов по 0.7-4.3 МБ)
2. **Граф дорог Украины** (узлы+ребра, ~500 МБ после распаковки)
3. **Mapbox Directions API** с собственным ключом
4. **Загрузка offline-графа** в фоне (WorkManager)
5. **Speed plans** (default/eco/sport) в GuidanceScreen
6. **Дом/Работа** быстрые кнопки в PlanningScreen
7. **Shimmer skeletons** для loading-состояний
8. **Обработка ошибок сети** в текущих экранах

### Средний приоритет
9. **Lane guidance** (стрелки полос)
10. **Complex maneuver icons** вместо текстовых инструкций
11. **Трафик на маршруте** (Mapbox Traffic API)
12. **Кнопка "Стоп" в guidance** с persistent notification
13. **Импорт трека из файла** (GPX)
14. **Экспорт лога поездки** (GPX/CSV)
15. **OBD BLE** (Bluetooth, не только WiFi)

### Низкий приоритет
16. **iPhone версия** (SwiftUI + MapLibre)
17. **Widget** для быстрого старта навигации
18. **Complication** для Wear OS
19. **CarPlay / Android Auto**
20. **Multi-stop route optimization** (genetic algorithm)

## Файлы изменены/созданы

### Новые файлы
- lib/core/services/update_service.dart
- lib/core/services/analytics_service.dart
- lib/core/services/route_graph_service.dart
- lib/core/services/nav_service.dart
- lib/core/services/travel_profile_service.dart
- lib/features/onboarding/onboarding_screen.dart
- lib/features/analytics/analytics_screen.dart
- lib/features/update/update_screen.dart
- lib/features/waze/waze_share_screen.dart
- lib/features/planning/saved_routes_service.dart

### Измененные файлы
- lib/main.dart
- pubspec.yaml
- lib/data/repositories/routing_repository.dart
- lib/data/models/route_model.dart

### Данные
- assets/data/ — все JSON из APK скопированы

## Следующие шаги

1. `flutter pub get` в /Users/admin/better_driver
2. Добавить недостающие assets (map_style.json, satellite_style.json)
3. Реализовать offline-граф (требует GraphHopper или osm2graph)
4. Добавить screens для truck parameters, saved routes, home/work
5. Внедрить shimmer-скелетоны
6. Добавить error boundaries
7. Протестировать на устройстве (Android 10+)
