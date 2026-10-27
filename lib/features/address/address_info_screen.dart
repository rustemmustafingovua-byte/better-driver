import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import '../../core/services/address_normalizer.dart';
import '../../features/outages/outage_info_screen.dart';

class AddressInfoScreen extends StatelessWidget {
  final String address;
  final LatLng point;
  const AddressInfoScreen({super.key, required this.address, required this.point});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final normalized = AddressNormalizer.normalize(address);
    final variants = AddressNormalizer.variants(address.split(',').first.trim());

    // Parse street/house from address for outage lookup
    final parts = address.split(',');
    final street = parts.length > 1 ? parts[1].trim() : '';
    final house = parts.length > 2 ? parts[2].trim() : '';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Інформація про адресу'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Адреса', style: theme.textTheme.labelLarge),
                  const SizedBox(height: 8),
                  Text(normalized, style: theme.textTheme.titleMedium),
                  const SizedBox(height: 12),
                  Text('Нормалізована адреса', style: theme.textTheme.labelLarge),
                  const SizedBox(height: 4),
                  Text(normalized, style: theme.textTheme.bodyMedium),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Історичні назви', style: theme.textTheme.labelLarge),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: variants
                        .map((v) => Chip(label: Text(v)))
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: ListTile(
              leading: const Icon(Icons.power),
              title: const Text('Електропостачання'),
              subtitle: Text('$street, $house'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OutageInfoScreen(
                      street: street,
                      house: house,
                      lat: point.latitude,
                      lng: point.longitude,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
