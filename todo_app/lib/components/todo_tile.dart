// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, non_constant_identifier_names

import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    Color DogwoodRose = Color(0xffC62E65);
    Color PapayaWhip = Color(0xffFDF0D5);

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(26),
          child: Row(
            children: [
              Checkbox(value: taskCompleted, onChanged: onChanged),
              Text(
                taskName,
                style: TextStyle(color: PapayaWhip),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: DogwoodRose, borderRadius: BorderRadius.circular(13.5)),
      ),
    );
  }
}
