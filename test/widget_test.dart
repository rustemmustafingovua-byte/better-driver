import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:better_driver/main.dart';

void main() {
  testWidgets('BetterDriver app launches', (WidgetTester tester) async {
    await tester.pumpWidget(const BetterDriverApp());
    expect(find.byType(Scaffold), findsOneWidget);
  });
}
