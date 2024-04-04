import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/signup.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_application_1/homepage.dart';
///import 'package:flutter_application_1/SearchItems.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override 
  _LoginScreenState createState() => _LoginScreenState();

  List<TextEditingController> getControllers() {
    return [_LoginScreenState()._emailController, _LoginScreenState()._passwordController];
  }
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  @override 
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void navigateToHomePage() {
   Navigator.push( 
     context,
      MaterialPageRoute(builder: (context) => MyHomePage()),
    );
  }
  

  // Getter method for email
  String getEmail() {
    return _emailController.text;
  }
  // Setter method for email
  void setEmail(String email) {
    _emailController.text = email;
  }

      Future<void> login() async {
        try{
          String emailAddress = _emailController.text;
          String password = _passwordController.text;

          if (emailAddress.isNotEmpty && password.isNotEmpty) {
            final emailCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: emailAddress,
               password: password,
               );
               
               if (emailCredential.user != null) {
                print("User sign in successful with email: ${emailCredential.user!.email}");
                storeUserEmail(emailCredential.user!.email!);
                navigateToHomePage(); }
          } else {
            final GoogleSignInAccount? googleUser = 
              await GoogleSignIn(clientId: '.....').signIn();
              
            if (googleUser != null) {
              final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

              final AuthCredential credential = GoogleAuthProvider.credential(
                accessToken: googleAuth.accessToken,
                idToken: googleAuth.idToken,
              );

              final googleCredential = await FirebaseAuth.instance.signInWithCredential(credential);

              if (googleCredential.user != null) {
                print('User sign in successful with Google: ${googleCredential.user!.email}');
                storeUserEmail(googleCredential.user!.email!);
                navigateToHomePage();
                
              } else {
                print('Google sign-in canceled');
              }
            }   else {
              print('Google sign-in failed');
            }   
             }
        } catch (e) {
          print('Error during sign-in: $e');
        }
        }

        void storeUserEmail(String userEmail) {
          FirebaseFirestore.instance.collection('users').add({
            'email':userEmail,
            'timestamp': FieldValue.serverTimestamp(),
          });
        }

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
            
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column( 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    TextField(
                      controller: _emailController,
                      decoration: const InputDecoration( 
                        labelText: 'Email',
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: const InputDecoration( 
                        labelText: 'Password',
                      )
                    ),
                    const SizedBox(height: 32.0),
                    ElevatedButton(
                      onPressed: login, 
                      child: const Text('Login')
                      ),
                      const SizedBox(height: 16.0),
                      ElevatedButton(
                        onPressed: login, 
                        child: const Text('Login with Google'),
                        ),
                        const SizedBox(height: 16.0),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context, MaterialPageRoute(builder: (context) => SignUpScreen()),
                              );
                          },
                          child: const Text('Setup Account'),
                          ),
                  ],
    
            ),
          ),
          ),
          );
        
        }
      }
