// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:calculator_app/buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color bg = Color.fromARGB(255, 239, 253, 231);
  Color operatorButtons = Color(0xff04724D);
  Color colorButtons = Color.fromARGB(255, 103, 199, 140);
  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];
  var question = '';
  var answer = 'answer';
  var firstNumber = '';
  int indexOfOperand = 0;

  String extractNumber(String x) {
    if ((question.contains("+") ||
            question.contains("-") ||
            question.contains("*") ||
            question.contains("/") ||
            question.contains("%")) &&
        (x == '%' || x == '/' || x == 'x' || x == '-' || x == '+')) {
      setState(() {
        indexOfOperand = question.indexOf(x);
        firstNumber = question.substring(0, indexOfOperand);
      });
    }
    return firstNumber;
  }

  String operations(String x) {
    if (x == 'C') {
      setState(() {
        question = '';
      });
    } else if (question.contains("+") && x == '+') {
      setState(() {
        // int indexOfPlus = question.indexOf("+");
        // firstNumber = question.substring(0, indexOfPlus);
        // question = '';
        // question = "$firstNumber+";
        extractNumber(x);
        print(firstNumber);
        print(question);
      });
    }
    return question;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      padding: EdgeInsets.all(25),
                      alignment: Alignment.centerRight,
                      child: Text(
                        question,
                        style: TextStyle(
                            color: Color.fromARGB(255, 90, 65, 44),
                            fontSize: 35,
                            fontWeight: FontWeight.w500),
                      )),
                  Container(
                      padding: EdgeInsets.all(25),
                      alignment: Alignment.centerRight,
                      child: Text(
                        answer,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ))
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (BuildContext context, int index) {
                  return MyButton(
                    buttonTapped: () {
                      setState(() {
                        question += buttons[index];
                        operations(buttons[index]);
                      });
                    },
                    buttonText: buttons[index],
                    color: isOperator(buttons[index])
                        ? operatorButtons
                        : colorButtons,
                    textColor: isOperator(buttons[index])
                        ? Colors.yellowAccent[100]
                        : Colors.green[50],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

bool isOperator(String x) {
  if (x == '%' || x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
    return true;
  } else {
    return false;
  }
}
