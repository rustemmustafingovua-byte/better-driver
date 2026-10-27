import 'package:latlong2/latlong.dart';

class RouteModel {
  final String id;
  final String name;
  final List<LatLng> points;
  final DateTime createdAt;
  final double distance;
  final int duration;
  final bool isOffline;
  final String? profile;

  RouteModel({
    required this.id,
    required this.name,
    required this.points,
    required this.createdAt,
    required this.distance,
    required this.duration,
    this.isOffline = false,
    this.profile = 'car',
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'points': points.map((p) => {'lat': p.latitude, 'lng': p.longitude}).toList(),
        'createdAt': createdAt.toIso8601String(),
        'distance': distance,
        'duration': duration,
        'isOffline': isOffline,
        'profile': profile,
      };

  factory RouteModel.fromJson(Map<String, dynamic> json) {
    final pointsList = json['points'] as List;
    return RouteModel(
      id: json['id'] as String,
      name: json['name'] as String,
      points: pointsList.map((p) => LatLng(p['lat'], p['lng'])).toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      distance: json['distance'] as double,
      duration: json['duration'] as int,
      isOffline: json['isOffline'] as bool? ?? false,
      profile: json['profile'] as String? ?? 'car',
    );
  }
}
