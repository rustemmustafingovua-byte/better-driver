import 'package:flutter/material.dart';

class HudOverlay extends StatelessWidget {
  final String speedText;
  final String rpmText;
  final String profileText;
  final bool isNavigating;

  const HudOverlay({
    super.key,
    required this.speedText,
    required this.rpmText,
    required this.profileText,
    required this.isNavigating,
  });

  @override
  Widget build(BuildContext context) {
    if (!isNavigating) return const SizedBox.shrink();

    final theme = Theme.of(context);
    return Positioned(
      top: 16,
      right: 16,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface.withValues(alpha: 0.85),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: theme.colorScheme.outline.withValues(alpha: 0.3)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              speedText,
              style: theme.textTheme.headlineMedium?.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (rpmText.isNotEmpty)
              Text(
                rpmText,
                style: theme.textTheme.bodySmall,
              ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                profileText,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
