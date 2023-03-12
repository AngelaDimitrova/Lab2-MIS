import 'package:flutter/material.dart';
import 'package:laboratoriska2/clothes_questions.dart';

import 'clothes_answers.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final questionsAndAnswers = [
    {'question': 'Select Hat Type', 'answer': ['hat1', 'hat2', 'hat3']},
    {'question': 'Select Top Type', 'answer': ['top1', 'top2', 'top3']},
    {'question': 'Select Bottom Type', 'answer': ['bottom1', 'bottom2', 'bottom3']},
  ];
  final questions = ["q1", "q2", "q3", "q4"];
  int _questionsIndex = 0;

  void _incrementCounter() {
    setState(() {
      _questionsIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Angela Dimitrova",
      home: Scaffold(
      appBar: AppBar(
        title: const Text("Hello World"),
      ),
      body: Column(
        children: [
          ClothesQuestion(questionsAndAnswers[_questionsIndex]['question'] as String),
          ...(questionsAndAnswers[_questionsIndex]['answer'] as List<String>)
              .map((answer) {
                return ClothesAnswer(_incrementCounter, answer);
              }),
        ],
      ),
    ),
    );
  }
}