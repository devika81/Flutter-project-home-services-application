// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScreenServiceRequest extends StatefulWidget {
  const ScreenServiceRequest({super.key});

  @override
  State<ScreenServiceRequest> createState() => _ScreenServiceRequestState();
}

class _ScreenServiceRequestState extends State<ScreenServiceRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Work in progress...",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
    );
  }
}
