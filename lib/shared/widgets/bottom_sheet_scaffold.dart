import 'package:flutter/material.dart';

class BottomSheetScaffold extends StatelessWidget {
  final Widget body;
  final Widget? bottomSheet;
  final String? title;

  const BottomSheetScaffold({
    super.key,
    required this.body,
    this.bottomSheet,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: title == null
          ? null
          : AppBar(
              title: Text(title!),
              backgroundColor: theme.colorScheme.surface,
            ),
      body: body,
      bottomSheet: bottomSheet,
    );
  }
}
