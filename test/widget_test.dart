// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
<<<<<<< HEAD
// utility in the flutter_test package. For example, you can send tap and scroll
=======
// utility that Flutter provides. For example, you can send tap and scroll
>>>>>>> 832902c6efaf2492d6bfa53e8d1f5389c238b0d4
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

<<<<<<< HEAD
import 'package:flutter_application_1/main.dart';
=======
import 'package:search_bar_app/main.dart';
>>>>>>> 832902c6efaf2492d6bfa53e8d1f5389c238b0d4

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
<<<<<<< HEAD
    await tester.pumpWidget(const MyApp());
=======
    await tester.pumpWidget(MyApp());
>>>>>>> 832902c6efaf2492d6bfa53e8d1f5389c238b0d4

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
