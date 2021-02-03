import 'package:flutter/material.dart';
import 'package:style_app/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CitiTrends',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black
      ),
      home: LoginScreen(),
    );
  }
}

