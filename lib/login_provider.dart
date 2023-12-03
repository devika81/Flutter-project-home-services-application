// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:home_services_app/register_provider.dart';

class ScreenLoginProvider extends StatefulWidget {
  const ScreenLoginProvider({super.key});

  @override
  State<ScreenLoginProvider> createState() => _ScreenLoginProviderState();
}

class _ScreenLoginProviderState extends State<ScreenLoginProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(204, 245, 242, 242),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.android,
                size: 100,
              ), //welcome back!
              Text(
                'Welcome back!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Welcome back, you\'ve been missed!',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 50),

              //username textfield

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'username'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'password'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //sign in button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        // Navigate to the provider register page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScreenRegisterProvider()),
                        );
                      },
                      child: Text(
                        'Register now',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
