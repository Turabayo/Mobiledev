import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //title: Text('Welcome to ISOMO'),
        //centerTitle: true,
        body: Container(
          decoration: BoxDecoration( 
            image:DecorationImage( 
              image: AssetImage('assets/ISOMO_BACKGROUND.jpg'),
              fit: BoxFit.cover,
          ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Add our logo widget here
          Image.asset(
            'assets/ISOMO_LOGO.png',// Replace the Container with our logo widget which is in our assets folder
            width: 400,
            height: 400,
            //color: const Color.fromARGB(255, 243, 135, 33), // Replace with our logo image or custom widget
          ),
          SizedBox(height: 20), // Add some space between the logo and the heading
          // Heading
          Text(
            'Explore the world of Floriculture with ISOMO',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              //backgroundColor: Colors.grey,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          // Button
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Text('Go to Login'),
          ),
        ],
      ),
      ),
    );
  }
}