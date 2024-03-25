import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('home screen ...', (tester) async {
    await  tester.pumpWidget(MaterialApp(
      home: HomeScreen(),
    ));

    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.byType(Column), findsOneWidget);
    expect(find.text('Explore the world of Floriculture with ISOMO'), findsOneWidget);
    expect(find.text('Go to Login'), findsOneWidget);
  });
}