
import 'package:flutter/material.dart';
import 'package:flutterproject/forget_password.dart';
import 'package:flutterproject/home_page.dart';
import 'package:flutterproject/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
    );
  }
}