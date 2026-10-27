import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/services/update_service.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  final UpdateService _updateService = UpdateService();
  UpdateStatus? _status;
  bool _isDownloading = false;
  double _downloadProgress = 0;

  @override
  void initState() {
    super.initState();
    _updateService.statusStream.listen((status) {
      if (mounted) {
        setState(() => _status = status);
      }
    });
    _updateService.checkForUpdates();
  }

  @override
  void dispose() {
    _updateService.dispose();
    super.dispose();
  }

  Future<void> _downloadAndInstall() async {
    if (_status?.apkUrl == null) return;

    setState(() => _isDownloading = true);

    final path = await _updateService.downloadUpdate(
      _status!.apkUrl!,
      _status!.sha256,
    );

    if (!mounted) return;

    setState(() => _isDownloading = false);

    if (path != null) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          icon: const Icon(Icons.check_circle, color: Colors.green, size: 48),
          title: const Text('Оновлення завантажено'),
          content: Text('Файл збережено: $path\n\nДля установки відкрийте файл у файловому менеджері.'),
          actions: [
            FilledButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Не вдалося завантажити оновлення')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Оновлення'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _updateService.checkForUpdates,
          ),
        ],
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
                  Row(
                    children: [
                      Icon(Icons.info_outline, color: theme.colorScheme.primary),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Версія 1.2.0',
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Застосунок автоматично перевіряє оновлення раз на добу. '
                    'Після появи нової версії у вас є 30 днів для оновлення.',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          if (_status != null) _buildStatusCard(theme),
        ],
      ),
    );
  }

  Widget _buildStatusCard(ThemeData theme) {
    if (_status?.isChecking ?? false) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2)),
              const SizedBox(width: 16),
              Text('Перевіряю оновлення...', style: theme.textTheme.bodyMedium),
            ],
          ),
        ),
      );
    }

    if (_status?.isAvailable ?? false) {
      return Card(
        color: theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.new_releases, color: theme.colorScheme.primary),
                  const SizedBox(width: 12),
                  Text(
                    'Доступно: ${_status!.version}',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
              if (_status!.changelog != null && _status!.changelog!.isNotEmpty) ...[
                const SizedBox(height: 12),
                Text(
                  'Що нового:',
                  style: theme.textTheme.labelMedium,
                ),
                const SizedBox(height: 4),
                Text(
                  _status!.changelog!,
                  style: theme.textTheme.bodySmall,
                ),
              ],
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: _isDownloading ? null : _downloadAndInstall,
                  icon: _isDownloading
                      ? const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                      : const Icon(Icons.download),
                  label: Text(_isDownloading ? 'Завантаження...' : 'Завантажити'),
                ),
              ),
            ],
          ),
        ),
      );
    }

    if (_status?.error != null) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(Icons.error_outline, color: theme.colorScheme.error),
              const SizedBox(width: 12),
              Expanded(child: Text(_status!.error ?? 'Помилка', style: theme.textTheme.bodyMedium)),
            ],
          ),
        ),
      );
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(Icons.check_circle, color: Colors.green),
            const SizedBox(width: 12),
            Text('У вас остання версія', style: theme.textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
