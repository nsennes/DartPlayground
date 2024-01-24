// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final buttonTapped;

  MyButton(
      {required this.color,
      required this.textColor,
      required this.buttonText,
      this.buttonTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
              color: color,
              child: Center(
                  child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ))),
        ),
      ),
    );
  }
}
