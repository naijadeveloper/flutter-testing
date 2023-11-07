// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo/pages/first_page.dart';
import 'package:todo/pages/home_page.dart';
import 'package:todo/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
        routes: {
          "/home_page": (context) => HomePage(),
          "/settings_page": (context) => SettingsPage(),
        },
    );
  }
}
