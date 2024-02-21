// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Submitted extends StatefulWidget {
  final String name;
  final String studentID;
  final String email;

  Submitted({required this.name, required this.studentID, required this.email});

  @override
  State<Submitted> createState() => _SubmittedState();
}

class _SubmittedState extends State<Submitted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Submitted'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${widget.name}'),
            Text('Student ID: ${widget.studentID}'),
            Text('Email: ${widget.email}'),
          ],
        ),
      ),
    );
  }
}
