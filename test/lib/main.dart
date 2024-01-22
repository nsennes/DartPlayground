// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test/pages/first_page.dart';
import 'package:test/pages/home_page.dart';
import 'package:test/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
        routes: {
          '/firstpage': (context) => FirstPage(),
          '/homepage': (context) => HomePage(),
          '/settingspage': (context) => SettingsPage()
        });
  }
}
