import 'package:flutter/material.dart';
import 'package:myapp/result.dart';

import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3}
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answer': [
        {'text': 'Rabbit', 'score': 7},
        {'text': 'Lion', 'score': 8},
        {'text': 'Cat', 'score': 5},
        {'text': 'Dog', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s your favourite movie?',
      'answer': [
        {'text': 'Romantic', 'score': 6},
        {'text': 'Action', 'score': 7},
        {'text': 'Thriller', 'score': 8},
        {'text': 'Drama', 'score': 5}
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answeredQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: Container(
                margin: const EdgeInsets.all(10.0),
                alignment: Alignment.center,
                child: _questionIndex < _questions.length
                    ? Quiz(
                        answeredQuestion: _answeredQuestion,
                        questionIndex: _questionIndex,
                        questions: _questions,
                      )
                    : Result(_totalScore, _resetQuiz))));
  }
}
