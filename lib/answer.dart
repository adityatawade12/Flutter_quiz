import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const name({Key? key}) : super(key: key);
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(onPressed: selectHandler, child: Text(answerText)),
    );
  }
}
