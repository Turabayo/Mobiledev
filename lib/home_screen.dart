import 'package:flutter/material.dart';
///import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/ISOMO_BACKGROUND.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/ISOMO_LOGO.png',
              width: 400,
              height: 400,
            ),
            const SizedBox(height: 20),
            const Text(
              'Explore the world of Floriculture with ISOMO',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text('Go to Login'),
            ),
            ///const SizedBox(height: 20),
            ///TextField(
              ///controller: emailController,
              ///decoration: const InputDecoration(
                ///labelText: 'Email',
              ///),
            ///),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
