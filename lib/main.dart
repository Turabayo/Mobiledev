
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/usermanagement.dart';
import 'firestore_service.dart';
import 'home_screen.dart';
import 'login.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      title: 'ISOMO',
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/usermanagement': (context) => UserManagementScreen(),
      },
    );
  }
}
