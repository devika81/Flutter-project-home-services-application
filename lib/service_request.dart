import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ScreenServiceRequest extends StatefulWidget {
  @override
  State<ScreenServiceRequest> createState() => _ScreenServiceRequestState();
}

class _ScreenServiceRequestState extends State<ScreenServiceRequest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ORDER SUMMARY'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await _signInAnonymously();
                // Retrieve and update user details
                _updateUserDetails();
              },
              child: Text('CLICK HERE'),
            ),
            SizedBox(height: 20),
            _user != null
                ? Column(
                    children: [
                      Text('User ID: ${_user!.uid}',style: TextStyle(fontSize: 16),),
                      Text('User Email: ${_user!.email}',style: TextStyle(fontSize: 16),),
                    ],
                  )
                : Text(''),
          ],
        ),
      ),
    );
  }

  Future<void> _signInAnonymously() async {
    try {
      await _auth.signInAnonymously();
    } catch (e) {
      print('Error signing in anonymously: $e');
    }
  }

  void _updateUserDetails() {
    setState(() {
      _user = _auth.currentUser;
    });
  }
}
