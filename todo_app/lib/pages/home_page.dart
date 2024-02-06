// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/components/dialog_box.dart';
import 'package:todo_app/data/database.dart';
import '../components/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _myBox = Hive.box('mybox');
  ToDoDatabase db = ToDoDatabase();

  @override
  void initState() {
    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }
    super.initState();
  }

  final _controller = TextEditingController();

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateDataBase();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  void saveNewTask() {
    setState(() {
      db.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDataBase();
  }

  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    Color MimiPink = Color(0xffFCD9E8);
    Color CherryBlossomPink = Color.fromARGB(255, 236, 188, 203);

    return Scaffold(
        backgroundColor: MimiPink,
        appBar: AppBar(
          title: Text(
            "Pinkify",
            style: TextStyle(
              //fontWeight: FontWeight.bold,
              fontSize: 35,
              fontFamily: 'AliensAndCows',
              color: Color.fromARGB(245, 151, 33, 78),
            ),
          ),
          centerTitle: true,
          backgroundColor: CherryBlossomPink,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewTask,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          backgroundColor: Color.fromARGB(255, 199, 131, 156),
          child: Icon(
            Icons.add,
            color: Color.fromARGB(255, 240, 223, 230),
          ),
        ),
        body: ListView.builder(
          itemCount: db.toDoList.length,
          itemBuilder: (context, index) {
            return ToDoTile(
              taskName: db.toDoList[index][0],
              taskCompleted: db.toDoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
              deleteFunction: (value) => deleteTask(index),
            );
          },
        ));
  }
}
