import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';

import 'community.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: newMethod.currentPlatform,
  );
  runApp(const MyApp());
}

dynamic get newMethod => DefaultFirebaseOptions;

class DefaultFirebaseOptions {
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: newMethod(),
      title: 'our community',
      initialRoute: '/community',
      routes: {
        '/community': (context) =>  CommunityPage(),
      },
    );
  }

  dynamic newMethod() => HomeScreen();
}

class HomeScreen {
}
