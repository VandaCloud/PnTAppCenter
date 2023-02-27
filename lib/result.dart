import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  const Result(this.resultScore, {super.key});

  String get resultPhrase {
    String resultText;

    if (resultScore < 50) {
      resultText = 'You are fail!';
    } else if (resultScore < 60) {
      resultText = 'You are passed!';
    } else {
      resultText = 'You are awesome!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: const TextStyle(
            fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
      ),
    );
  }
}
