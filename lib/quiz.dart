import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answeredQuestion;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answeredQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answeredQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
