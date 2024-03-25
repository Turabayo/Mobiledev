import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/authservice.dart';
import 'package:flutter_application_1/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';


class MockAuthService extends Mock implements AuthService {
  @override
  Future<User?> signUp(String email, String password) async {
    return MockUser();
  }
}

class MockFirebaseFirestore extends Mock implements FirebaseFirestore {}

class MockUser extends Mock implements User {}

void main() {
  late MockAuthService mockAuthService;
 /// late MockFirebaseFirestore mockFirebaseFirestore;


  setUp(() {
    mockAuthService = MockAuthService();
    ///mockFirebaseFirestore = MockFirebaseFirestore();
  });
  testWidgets('SignUpScreen Test', (WidgetTester tester) async {
    when(mockAuthService.signUp('ella@example.com', 'e@123456')).thenAnswer((_) async => (MockUser()));

    await tester.pumpWidget(MaterialApp(
      home: SignUpScreen(),
    ));

    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.byType(Column), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.text('Sign Up'), findsOneWidget);

    await tester.enterText(find.byType(TextField).first, 'test@example.com');
    await tester.enterText(find.byType(TextField).last, 'password');

    await tester.tap(find.text('Sign Up'));
    await tester.pump();

    verify(mockAuthService.signUp('test@example.com', 'password')).called(1);

  });
}