// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:home_services_app/register_seeker.dart';
import 'package:home_services_app/service_list.dart';

class ScreenLoginSeeker extends StatefulWidget {
  const ScreenLoginSeeker({super.key});

  @override
  State<ScreenLoginSeeker> createState() => _ScreenLoginSeekerState();
}

class _ScreenLoginSeekerState extends State<ScreenLoginSeeker> {
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
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  padding: EdgeInsets.only(left: 1.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepPurple),
                        minimumSize: MaterialStateProperty.all(
                          Size(625, 40),
                        ),
                        textStyle: MaterialStateProperty.all(TextStyle(
                          fontSize: 20,
                        )),
                      ),
                      onPressed: () {
                        //navigate to the service list page
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreenServiceList()));
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )),
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
                        // Navigate to the seeker register page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScreenRegisterSeeker()),
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
