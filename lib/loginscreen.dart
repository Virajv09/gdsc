import 'package:flutter/material.dart';
import 'package:gdsc_design1/signscreen.dart';

class LoginScreen extends StatelessWidget {
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
                'Hi, GDG Welcomes you 👋',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'example@gmail.com',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter Your Password',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (val) {}),
                  Text('Remember Me'),
                  Spacer(),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Colors.blue, // Updated from 'primary'
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(child: Text('Or With')),
              SizedBox(height: 170),
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
                  Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () {
                      // Navigate to LoginScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text(
                      'Sign Up',
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
