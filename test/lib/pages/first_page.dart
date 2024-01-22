// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test/pages/home_page.dart';
import 'package:test/pages/profile_page.dart';
import 'package:test/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // this keeps track of the selected index
  int _selectedIndex = 0;

  //this method updates the selected index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    //homepage
    HomePage(),
    //profile
    ProfilePage(),
    //settings
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    //Color mysteryGreen = Color(0xff128A84);
    Color shaggyGreen = Color.fromARGB(255, 121, 175, 48);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mystery Incorporated",
          style: TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: shaggyGreen,
        centerTitle: true,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          items: [
            //home
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            //profile
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            //settings
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_suggest_rounded), label: 'Settings')
          ]),
    );
  }
}
