import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final void Function() resetHandler;

  Result(this.resultScore, this.resetHandler);

  ///Getter (must have return)
  String get resultPhrase {
    String resultText;
    if (resultScore >= 26) {
      resultText = "You are awesome!";
    } else if (resultScore <= 20) {
      resultText = 'Pretty Likable!';
    } else if (resultScore <= 11) {
      resultText = "Ummm ok!";
    } else {
      resultText = 'You are so BAD!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz!'),
            style: TextButton.styleFrom(
              primary: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
