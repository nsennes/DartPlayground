// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:calculator_app/buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

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
  var answer = '';

  String otherOperations(String x) {
    if (x == 'C') {
      setState(() {
        question = '';
        answer = '';
      });
    } else if (x == 'DEL') {
      setState(() {
        question = question.substring(0, question.length - 1);
      });
    }
    return question;
  }

  String equalPressed(String x) {
    setState(() {
      String finalQuestion = question;
      finalQuestion = finalQuestion.replaceAll('x', '*');
      Parser p = Parser();
      Expression exp = p.parse(finalQuestion);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      if (eval % 1 == 0) {
        answer = eval.toInt().toString();
      } else {
        answer = eval.toString();
      }
    });
    return answer;
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                      alignment: Alignment.centerRight,
                      child: Text(
                        question,
                        style: TextStyle(
                            color: Color.fromARGB(255, 90, 65, 44),
                            fontFamily: 'Roboto',
                            fontSize: 40,
                            fontWeight: FontWeight.w500),
                      )),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 3),
                      alignment: Alignment.centerRight,
                      child: Text(
                        answer,
                        style: TextStyle(
                            color: Color.fromARGB(255, 132, 116, 103),
                            fontSize: 30,
                            fontWeight: FontWeight.w500),
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
                        if (buttons[index] == 'DEL') {
                          otherOperations(buttons[index]);
                        } else if (buttons[index] == '=') {
                          equalPressed(buttons[index]);
                        } else {
                          question += buttons[index];
                          otherOperations(buttons[index]);
                        }
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
