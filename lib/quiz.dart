import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function ansQuestion;
  Quiz(
      {required this.questions,
      required this.ansQuestion,
      required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]["questiontext"] as String),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => ansQuestion(int.parse(answer["score"].toString())),
              answer["text"].toString());
        }).toList(),
      ],
    );
  }
}
