import 'package:flutter/material.dart';

import 'homescreen.dart';
import 'loginscreen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Text(
                'Create an account',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),
                textAlign: TextAlign.center,

              ),
              SizedBox(height: 5),
              Text(
                'Get to know about all the GDG events simply by creating a new account',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Your Username',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Your Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Your Phone Number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Enter Your Password',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Sign Up'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(child: Text('Or With')),
              SizedBox(height: 20),
              Column(
                // Change to Column for stacked buttons
                children: [
                  SizedBox(
                    width: double.infinity, // Make button full-width
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.facebook, color: Colors.white),
                      onPressed: () {},
                      label: Text('Login with Facebook'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),// Adjust padding
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Add spacing between the buttons
                  SizedBox(
                    width: double.infinity, // Make button full-width
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.g_mobiledata, color: Colors.blueAccent),
                      onPressed: () {},
                      label: Text('Login with Google'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),// Adjust padding
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account? '),
                  GestureDetector(
                    onTap: () {
                      // Navigate to LoginScreen
                      Navigator.push(
                        context,
                        //MaterialPageRoute(builder: (context) => LoginScreen()),
                        MaterialPageRoute(builder: (context) => HomeScreen()),

                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
