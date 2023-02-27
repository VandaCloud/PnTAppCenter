import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(const PnTAppCenter());

class PnTAppCenter extends StatefulWidget {
  const PnTAppCenter({super.key});

  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _PnTAppCenterState();
  }
}

class _PnTAppCenterState extends State<PnTAppCenter> {
  int _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorable function inside PnT App Center?',
      'answers': [
        {
          'text': 'Column Chooser',
          'score': 100,
        },
        {
          'text': 'Live chat',
          'score': 50,
        },
        {
          'text': 'PWA',
          'score': 45,
        },
        {
          'text': 'Shimmer Effect',
          'score': 60,
        },
        {
          'text': 'DevExpress',
          'score': 100,
        },
      ],
    },
    {
      'questionText': 'What\'s your expression on PnT App Center?',
      'answers': [
        'Super Good',
        'Best',
        'Good',
        'Normal',
      ],
    },
  ];

  int _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex =
          // _questionIndex >= _questions.length - 1 ? 0 : _questionIndex + 1;
          _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PnT App Center'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
