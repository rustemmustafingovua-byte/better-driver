import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum TravelProfile { car, truck, motorcycle, bicycle }

class TravelProfileConfig {
  final String label;
  final String profileParam;
  final String icon;
  final Color color;

  const TravelProfileConfig({
    required this.label,
    required this.profileParam,
    required this.icon,
    required this.color,
  });

  static const car = TravelProfileConfig(
    label: 'Авто',
    profileParam: 'car',
    icon: 'directions_car',
    color: Color(0xFF2E7DF7),
  );

  static const truck = TravelProfileConfig(
    label: 'Вантажівка',
    profileParam: 'truck',
    icon: 'local_shipping',
    color: Color(0xFF8E44AD),
  );

  static const motorcycle = TravelProfileConfig(
    label: 'Мото',
    profileParam: 'motorcycle',
    icon: 'motorcycle',
    color: Color(0xFFE67E22),
  );

  static const bicycle = TravelProfileConfig(
    label: 'Вело',
    profileParam: 'bike',
    icon: 'pedal_bike',
    color: Color(0xFF27AE60),
  );

  static const values = [car, truck, motorcycle, bicycle];

  static TravelProfileConfig fromProfile(TravelProfile profile) {
    return switch (profile) {
      TravelProfile.car => car,
      TravelProfile.truck => truck,
      TravelProfile.motorcycle => motorcycle,
      TravelProfile.bicycle => bicycle,
    };
  }
}

class TruckParameters {
  final double weightKg;
  final double heightM;
  final double widthM;
  final double lengthM;
  final bool hazardous;
  final bool axleLoad;

  const TruckParameters({
    this.weightKg = 0,
    this.heightM = 0,
    this.widthM = 0,
    this.lengthM = 0,
    this.hazardous = false,
    this.axleLoad = false,
  });

  Map<String, dynamic> toJson() => {
    'weightKg': weightKg,
    'heightM': heightM,
    'widthM': widthM,
    'lengthM': lengthM,
    'hazardous': hazardous,
    'axleLoad': axleLoad,
  };

  factory TruckParameters.fromJson(Map<String, dynamic> json) => TruckParameters(
    weightKg: (json['weightKg'] as num?)?.toDouble() ?? 0,
    heightM: (json['heightM'] as num?)?.toDouble() ?? 0,
    widthM: (json['widthM'] as num?)?.toDouble() ?? 0,
    lengthM: (json['lengthM'] as num?)?.toDouble() ?? 0,
    hazardous: json['hazardous'] as bool? ?? false,
    axleLoad: json['axleLoad'] as bool? ?? false,
  );
}

class TravelProfileService {
  static const _profileKey = 'selected_travel_profile';
  static const _truckParamsKey = 'truck_parameters';

  TravelProfile _profile = TravelProfile.car;
  TruckParameters _truckParams = const TruckParameters();

  TravelProfile get current => _profile;
  TruckParameters get truckParams => _truckParams;

  Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();
    final profileIndex = prefs.getInt(_profileKey) ?? 0;
    _profile = TravelProfile.values[profileIndex.clamp(0, TravelProfile.values.length - 1)];

    final truckJson = prefs.getString(_truckParamsKey);
    if (truckJson != null) {
      try {
        _truckParams = TruckParameters.fromJson(json.decode(truckJson));
      } catch (_) {}
    }
  }

  Future<void> setProfile(TravelProfile profile) async {
    _profile = profile;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_profileKey, TravelProfile.values.indexOf(profile));
  }

  Future<void> setTruckParams(TruckParameters params) async {
    _truckParams = params;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_truckParamsKey, json.encode(params.toJson()));
  }
}
