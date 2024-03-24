// ignore: depend_on_referenced_packages
import 'package:firebasetask/community.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
// Import the community page file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Community App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CommunityPage(), // Set the CommunityPage as the home screen
    );
  }
}
