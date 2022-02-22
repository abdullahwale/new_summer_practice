import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: TextButton(
          onPressed: selectHandler,
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.lightBlue, // Background Color
          ),
          child: Text(
            answerText,
            style: TextStyle(fontSize: 12),
          ),
        ));
  }
}
/*
ElevatedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
 */
