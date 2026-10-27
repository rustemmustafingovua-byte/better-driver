import 'package:flutter/material.dart';

class ShimmerLoading {
  static Widget skeleton({
    required double width,
    required double height,
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(8)),
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey.withValues(alpha: 0.2),
        borderRadius: borderRadius,
      ),
    );
  }

  static Widget cardSkeleton(BuildContext context, {bool showImage = false}) {
    final theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (showImage)
              skeleton(width: double.infinity, height: 120, borderRadius: BorderRadius.circular(12)),
            if (showImage) const SizedBox(height: 12),
            skeleton(width: 160, height: 16),
            const SizedBox(height: 8),
            skeleton(width: double.infinity, height: 12),
            const SizedBox(height: 6),
            skeleton(width: 200, height: 12),
          ],
        ),
      ),
    );
  }

  static Widget listTileSkeleton(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: ListTile(
        leading: skeleton(width: 40, height: 40, borderRadius: BorderRadius.circular(20)),
        title: skeleton(width: 120, height: 14),
        subtitle: skeleton(width: 180, height: 12),
        trailing: skeleton(width: 24, height: 24, borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
