// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Color(0xffC62E65),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.5)),
      height: 50,
      minWidth: 140,
      child: Text(
        text,
        style: TextStyle(color: Color(0xffFDF0D5)),
      ),
    );
  }
}
