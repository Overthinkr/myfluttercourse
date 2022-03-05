import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 8},
        {'text': 'blue', 'score': 10},
        {'text': 'green', 'score': 6},
        {'text': 'yellow', 'score': 4},
        {'text': 'pink', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'bunny', 'score': 10},
        {'text': 'koala', 'score': 8},
        {'text': 'dog', 'score': 6},
        {'text': 'giraffe', 'score': 4},
      ],
    },
    {
      'questionText': 'Who\'s your favorite comedian?',
      'answers': [
        {'text': 'ME', 'score': 10},
        {'text': 'ME', 'score': 10},
        {'text': 'ME', 'score': 10},
        {'text': 'ME', 'score': 10},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('Aur questions hai bro');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
