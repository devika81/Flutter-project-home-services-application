// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:home_services_app/splash.dart';
//import 'package:home_services_app/seeker_or_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenSplash(),
    );
  }
}
