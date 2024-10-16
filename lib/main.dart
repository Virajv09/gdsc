import 'package:flutter/material.dart';
import 'package:gdsc_design1/signscreen.dart';
//import 'login_screen.dart';  // Import your login screen
import 'homescreen.dart';
import 'loginscreen.dart';
//import 'signup_screen.dart'; // Import your signup screen

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth UI',
      debugShowCheckedModeBanner: false, // Removes the debug banner
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Default route is set to LoginScreen
      routes: {
        '/': (context) => LoginScreen(),   // Route for the Login Screen
        '/signup': (context) => SignUpScreen(), // Route for the Sign Up Screen
      },
    );
  }
}
