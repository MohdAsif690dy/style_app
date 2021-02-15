import 'package:flutter/material.dart';
import 'package:style_app/screens/home_screen.dart';
import 'package:style_app/screens/login_screen.dart';
import 'package:style_app/screens/market_place.dart';
import 'package:style_app/screens/navigation_bar.dart';
import 'package:style_app/screens/scan_items.dart';
import 'package:style_app/screens/scanned_items.dart';
import 'package:style_app/screens/settings_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CitiTrends',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.orange
      ),
      home: LoginScreen(),
    );
  }
}

