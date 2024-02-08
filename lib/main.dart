import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'login.dart';
import 'signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      title: 'ISOMO',
      initialRoute: '/home',
      routes: {
        '/home':(context) => HomeScreen(),
        '/login':(context) => LoginScreen(),
      },
    );
  }
}