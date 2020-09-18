import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 10) {
      resultText = 'You are awesome personality';
    } else if (resultScore <= 16) {
      resultText = 'You are PrettyLikeable Personality';
    } else if (resultScore <= 22) {
      resultText = 'You are strange personality';
    } else {
      resultText = 'You are awful personality';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart the Quiz'),
          onPressed: resetQuiz,
          color: Colors.blue,
        )
      ],
    );
  }
}
