import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //title: Text('Sign Up'),
        body: Container( 
          decoration: BoxDecoration( 
            image: DecorationImage( 
              image: AssetImage('assets/ISOMO_BACKGROUND.jpg'),
              fit: BoxFit.cover,
            ),
          ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Implement sign-up logic here
                String email = _emailController.text;
                String password = _passwordController.text;

                // Add your sign-up/authentication logic here
                // For simplicity, let's just print the new user's email and password
                print('New User Registered: Email: $email, Password: $password');

                // Optionally, you can navigate back to the login screen after sign-up
                Navigator.pop(context);
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
