class MapStyleService {
  static const osm = MapStyle(
    name: 'Карта',
    urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
    overlayUrlTemplate: null,
  );

  static const satellite = MapStyle(
    name: 'Супутник',
    urlTemplate: 'https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}',
    overlayUrlTemplate: null,
  );

  static const hybrid = MapStyle(
    name: 'Гібрид',
    urlTemplate: 'https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}',
    overlayUrlTemplate:
        'https://server.arcgisonline.com/ArcGIS/rest/services/Reference/World_Boundaries_and_Places/MapServer/tile/{z}/{y}/{x}',
  );

  static const styles = [osm, satellite, hybrid];

  static int _currentIndex = 0;

  static MapStyle get currentStyle => styles[_currentIndex];

  static void cycleStyle() {
    _currentIndex = (_currentIndex + 1) % styles.length;
  }

  static void setStyle(int index) {
    if (index >= 0 && index < styles.length) {
      _currentIndex = index;
    }
  }

  static int get currentIndex => _currentIndex;
}

class MapStyle {
  final String name;
  final String urlTemplate;
  final String? overlayUrlTemplate;

  const MapStyle({
    required this.name,
    required this.urlTemplate,
    this.overlayUrlTemplate,
  });
}
