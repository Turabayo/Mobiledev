import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_application_1/login.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}
class MockGoogleSignIn extends Mock implements GoogleSignIn {}
class MockUserCredential extends Mock implements UserCredential {}
class MockGoogleSignInAuthentication extends Mock implements GoogleSignInAuthentication {}
///class MockGoogleSignInAccount extends Mock implements GoogleSignInAccount {}
class MockAuthCredential extends Mock implements AuthCredential {}

void main() {
  testWidgets('Test email and password controllers', (WidgetTester tester) async {

    await tester.pumpWidget(
      MaterialApp(
        home: LoginScreen(),
      ),
    );

    final controllers = (tester.widget(find.byType(LoginScreen)) as LoginScreen).getControllers();
    TextEditingController emailController = controllers[0];
    TextEditingController passwordController = controllers[1];
    emailController.text = "ella@example.com";
    passwordController.text = "e@123456";
  });

  test('Login with email and password', () async {
    final MockFirebaseAuth mockFirebaseAuth = MockFirebaseAuth();

    final String testEmail = 'ella@example.com';
    final String testPassword = 'e@123456';
    final MockUserCredential mockUserCredential = MockUserCredential();

    when(mockFirebaseAuth.signInWithEmailAndPassword(
      email: testEmail, 
      password: testPassword))
      .thenAnswer((_) => Future.value(mockUserCredential));

    expect(
      await mockFirebaseAuth.signInWithEmailAndPassword(
        email: testEmail, 
        password: testPassword),
      equals(mockUserCredential)
    );
  });

 /// test('Login with Google', () async {
   /// final MockFirebaseAuth mockFirebaseAuth = MockFirebaseAuth();
   /// final MockGoogleSignIn mockGoogleSignIn = MockGoogleSignIn();

    ///final MockGoogleSignInAccount mockGoogleSignInAccount = MockGoogleSignInAccount();
   /// final MockGoogleSignInAuthentication mockGoogleSignInAuthentication = MockGoogleSignInAuthentication();
    ///final MockAuthCredential mockAuthCredential = MockAuthCredential();
    ///final MockUserCredential mockUserCredential = MockUserCredential();

    ///when(mockGoogleSignIn.signIn()).thenAnswer((_) async => mockGoogleSignInAccount);
    ///when(mockGoogleSignInAccount.authentication).thenAnswer((_) async => mockGoogleSignInAuthentication);
    ///when(mockGoogleSignInAuthentication.accessToken).thenReturn('accessToken');
   /// when(mockGoogleSignInAuthentication.idToken).thenReturn('idToken');
    ///when(mockFirebaseAuth.signInWithCredential(mockAuthCredential)).thenAnswer((_) => Future.value(mockUserCredential));

    ///expect(
     /// await mockFirebaseAuth.signInWithCredential(mockAuthCredential),
     /// equals(mockUserCredential)
    ///);
 /// });
}
