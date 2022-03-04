import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  ///Getter (must have return)
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awesome and Innocent!";
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likable!';
    } else if (resultScore <= 16) {
      resultText = "Ummm ok!";
    } else {
      resultText = 'You are so BAD!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: const TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
