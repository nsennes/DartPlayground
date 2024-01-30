// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  const ToDoTile({super.key});

  @override
  Widget build(BuildContext context) {
    Color Eggplant = Color(0xff554149);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Watch Peaky Blinders"),
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Eggplant, width: 1.5),
            borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
