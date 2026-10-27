import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

import '../../core/services/address_normalizer.dart';

/// Result payload returned to the caller.
class SearchResult {
  final String displayName;
  final LatLng point;
  final String? street;
  final String? house;
  final String? city;

  const SearchResult({
    required this.displayName,
    required this.point,
    this.street,
    this.house,
    this.city,
  });
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<SearchResult> _results = [];
  bool _isSearching = false;
  String? _error;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _search(String query) async {
    final raw = query.trim();
    if (raw.isEmpty) return;

    setState(() {
      _isSearching = true;
      _error = null;
      _results.clear();
    });

    // Build the query set: user input + normalized (UA/RU/EN) + historical variants.
    final normalized = AddressNormalizer.normalize(raw);
    final variants = AddressNormalizer.variants(raw);
    final terms = <String>{raw, normalized, ...variants};

    final collected = <SearchResult>[];
    final seen = <String>{};

    for (final term in terms) {
      try {
        final uri = Uri.https('nominatim.openstreetmap.org', '/search', {
          'q': term,
          'format': 'jsonv2',
          'limit': '5',
          'addressdetails': '1',
          'accept-language': 'uk,ru,en',
        });

        final request = await HttpClient().getUrl(uri).timeout(
              const Duration(seconds: 12),
            );
        request.headers.set('User-Agent', 'BetterDriver/1.0 (ua.nav.betterdriver)');
        final response = await request.close();
        if (response.statusCode != 200) continue;

        final body = await response.transform(utf8.decoder).join();
        final data = json.decode(body);
        if (data is! List) continue;

        for (final item in data) {
          if (item is! Map<String, dynamic>) continue;
          final displayName = item['display_name'] as String?;
          final latRaw = item['lat'];
          final lonRaw = item['lon'];
          if (displayName == null || latRaw == null || lonRaw == null) continue;

          final lat = double.tryParse(latRaw.toString());
          final lon = double.tryParse(lonRaw.toString());
          if (lat == null || lon == null) continue;

          // Dedupe by rounded coordinates.
          final key = '${lat.toStringAsFixed(5)},${lon.toStringAsFixed(5)}';
          if (!seen.add(key)) continue;

          final address = item['address'] as Map<String, dynamic>?;
          collected.add(
            SearchResult(
              displayName: displayName,
              point: LatLng(lat, lon),
              street: (address?['road'] ?? address?['street'] ?? address?['pedestrian'])?.toString(),
              house: address?['house_number']?.toString(),
              city: (address?['city'] ?? address?['town'] ?? address?['village'] ?? address?['county'])
                  ?.toString(),
            ),
          );
        }
      } catch (_) {
        // One term failing must not abort the whole search.
      }
    }

    if (!mounted) return;
    setState(() {
      _results
        ..clear()
        ..addAll(collected);
      _isSearching = false;
      if (collected.isEmpty) {
        _error = 'Нічого не знайдено. Спробуйте іншу назву вулиці або номер будинку.';
      }
    });
  }

  void _select(SearchResult result) {
    Navigator.pop(context, result);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Куди їдемо?'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(72),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: TextField(
              controller: _controller,
              autofocus: true,
              textInputAction: TextInputAction.search,
              onSubmitted: _search,
              decoration: InputDecoration(
                hintText: 'Вулиця та номер будинку',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  tooltip: 'Очистити',
                  onPressed: () {
                    _controller.clear();
                    setState(() {
                      _results.clear();
                      _error = null;
                    });
                  },
                ),
                filled: true,
                fillColor: theme.colorScheme.surfaceContainerHighest,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          if (_isSearching) const LinearProgressIndicator(minHeight: 3),
          Expanded(
            child: _results.isEmpty
                ? _EmptySearchState(error: _error, theme: theme)
                : ListView.separated(
                    padding: const EdgeInsets.all(12),
                    itemCount: _results.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 8),
                    itemBuilder: (context, index) {
                      final result = _results[index];
                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: theme.colorScheme.primaryContainer,
                            child: Icon(
                              Icons.location_on,
                              color: theme.colorScheme.onPrimaryContainer,
                            ),
                          ),
                          title: Text(
                            _titleFor(result),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleSmall,
                          ),
                          subtitle: Text(
                            result.city ?? '',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall,
                          ),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () => _select(result),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  String _titleFor(SearchResult result) {
    final parts = <String>[
      if (result.street != null && result.street!.isNotEmpty) result.street!,
      if (result.house != null && result.house!.isNotEmpty) result.house!,
    ];
    if (parts.isNotEmpty) return parts.join(', ');
    return result.displayName.split(',').take(2).join(',');
  }
}

class _EmptySearchState extends StatelessWidget {
  final String? error;
  final ThemeData theme;

  const _EmptySearchState({required this.error, required this.theme});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              error == null ? Icons.search : Icons.error_outline,
              size: 64,
              color: theme.colorScheme.primary.withValues(alpha: 0.35),
            ),
            const SizedBox(height: 16),
            Text(
              error ?? 'Введіть адресу для пошуку',
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Наприклад: Київська 17',
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
