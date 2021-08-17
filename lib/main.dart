import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questiontext": "whats your favorite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Green", "score": 8},
        {"text": "Red", "score": 6},
        {"text": "White", "score": 4}
      ]
    },
    {
      "questiontext": "whats your favourite animal?",
      "answers": [
        {"text": "Horse", "score": 8},
        {"text": "Rabbit", "score": 10},
        {"text": "Lion", "score": 6},
        {"text": "Tiger", "score": 2}
      ]
    },
    {
      "questiontext": "Who is your favourite icecream?",
      "answers": [
        {"text": "Choco", "score": 1},
        {"text": "Mint", "score": 3},
        {"text": "Mango", "score": 8},
        {"text": "Peach", "score": 10}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _ansQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {}
  }

  void _rsetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                ansQuestion: _ansQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore, _rsetQuiz),
      ),
    );
  }
}
