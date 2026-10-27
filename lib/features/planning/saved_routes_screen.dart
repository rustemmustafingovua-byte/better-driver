import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../planning/saved_routes_service.dart';
import '../planning/planning_screen.dart';

class SavedRoutesScreen extends StatefulWidget {
  const SavedRoutesScreen({super.key});

  @override
  State<SavedRoutesScreen> createState() => _SavedRoutesScreenState();
}

class _SavedRoutesScreenState extends State<SavedRoutesScreen> {
  final SavedRoutesService _service = SavedRoutesService();
  List<SavedRoute> _routes = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    await _service.load();
    if (!mounted) return;
    setState(() {
      _routes = _service.routes;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Збережені маршрути'),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _routes.isEmpty
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Icon(Icons.bookmark_border, size: 64, color: theme.colorScheme.primary.withValues(alpha: 0.3)),
                        const SizedBox(height: 16),
                        Text('Маршрутів немає', style: theme.textTheme.bodyLarge),
                        const SizedBox(height: 8),
                        Text('Зберігайте маршрути з планувальника', style: theme.textTheme.bodySmall),
                      ],
                    ),
                  ),
                )
              : ListView.separated(
                  padding: const EdgeInsets.all(12),
                  itemCount: _routes.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemBuilder: (context, index) {
                    final route = _routes[index];
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: theme.colorScheme.primaryContainer,
                          child: Icon(Icons.route, color: theme.colorScheme.onPrimaryContainer),
                        ),
                        title: Text(route.name, style: theme.textTheme.titleSmall),
                        subtitle: Text(
                          '${route.origin.label} → ${route.destination.label}\n'
                          '${(route.destination.point.latitude - route.origin.point.latitude).abs() * 111} км • ${route.useCount} використань',
                          style: theme.textTheme.bodySmall,
                        ),
                        isThreeLine: true,
                        trailing: IconButton(
                          icon: const Icon(Icons.delete_outline),
                          onPressed: () async {
                            final confirmed = await showDialog<bool>(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text('Видалити маршрут?'),
                                actions: [
                                  TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Скасувати')),
                                  FilledButton(onPressed: () => Navigator.pop(context, true), child: const Text('Видалити')),
                                ],
                              ),
                            );
                            if (confirmed == true) {
                              await _service.delete(route.id);
                              _load();
                            }
                          },
                        ),
                        onTap: () {
                          Navigator.pop(context, route);
                        },
                      ),
                    );
                  },
                ),
    );
  }
}
