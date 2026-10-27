import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:latlong2/latlong.dart';

class QrScanScreen extends StatefulWidget {
  const QrScanScreen({super.key});

  @override
  State<QrScanScreen> createState() => _QrScanScreenState();
}

class _QrScanScreenState extends State<QrScanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QR-сканер')),
      body: MobileScanner(
        onDetect: (capture) {
          final barcode = capture.barcodes.firstOrNull;
          if (barcode == null) return;
          final raw = barcode.rawValue ?? '';
          final coords = _parseCoordinates(raw);
          if (coords != null && mounted) {
            Navigator.pop(context, coords);
          }
        },
      ),
    );
  }

  LatLng? _parseCoordinates(String raw) {
    try {
      final cleaned = raw.replaceAll(' ', '');
      final parts = cleaned.split(',');
      if (parts.length == 2) {
        final lat = double.parse(parts[0]);
        final lng = double.parse(parts[1]);
        return LatLng(lat, lng);
      }
    } catch (e) {
      // ignore
    }
    return null;
  }
}
