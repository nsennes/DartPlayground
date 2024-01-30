// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import '../components/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Color MimiPink = Color(0xffFCD9E8);
    Color CherryBlossomPink = Color(0xffFFB5C1);

    return Scaffold(
        backgroundColor: MimiPink,
        appBar: AppBar(
          title: Text(
            "Pink Task",
            style: TextStyle(
              // fontWeight: FontWeight.w600,
              fontSize: 35,
              fontFamily: 'PacifyAngry',
              color: Colors.black87,
            ),
          ),
          centerTitle: true,
          backgroundColor: CherryBlossomPink,
        ),
        body: ListView(
          children: [
            ToDoTile(),
          ],
        ));
  }
}
