// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../components/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList = [
    ["Watch Peaky Blinder", false],
    ["Buy groceries", true],
    ["Complete the assignment", false],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

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
        body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return ToDoTile(
              taskName: toDoList[index][0],
              taskCompleted: toDoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
            );
          },
        ));
  }
}
