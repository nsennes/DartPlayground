// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable
  int _counter = 0;
  //method
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have pushed the button this many times:",
                style: TextStyle(fontSize: 18.0)),

            //counter value
            Text(_counter.toString(),
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.purple[800],
                    fontWeight: FontWeight.bold)),

            //button
            ElevatedButton(
              onPressed: _incrementCounter,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purpleAccent[400],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0))),
              child: Text(
                "Click me to increment!",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
