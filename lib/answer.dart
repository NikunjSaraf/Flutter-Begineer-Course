import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectAnswer;
  final String answerText;

  Answer(this.selectAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        onPressed: selectAnswer,
      ),
    );
  }
}
