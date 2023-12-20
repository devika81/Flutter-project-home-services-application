// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:home_services_app/service_confirm.dart';
import 'package:home_services_app/global.dart' as globals;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:home_services_app/service_list.dart';
import 'package:home_services_app/user_auth/firebase_services_auth.dart';

class ScreenServiceConfirm extends StatefulWidget {
  const ScreenServiceConfirm({super.key});

  @override
  State<ScreenServiceConfirm> createState() => _ScreenServiceConfirmState();
}

class _ScreenServiceConfirmState extends State<ScreenServiceConfirm> {
  final FirebaseAuthService db_service = FirebaseAuthService();
  var userDocId = globals.getSelectedUserDocId() ?? '';

  @override
  void initState() {
    super.initState();
    // Call the function when the page initializes
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(204, 245, 242, 242),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Icon(
                  Icons.checklist_outlined,
                  size: 100,
                  color: Colors.blue,
                ),
              ),
              Text(
                'CONFIRM YOUR SERVICE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Call your confirmation function here
                  confirmOrder();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'CONFIRM',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future confirmOrder() async {
    try {
       await db_service.createOrder(userDocId);

      await Future.delayed(Duration(seconds: 5));

      // Redirect to a new screen
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ScreenServiceList(),
        ),
      );
    } catch (e) {
      // Handle errors if needed
      print('Error fetching user data: $e');
      return [];
    }
  }
}
