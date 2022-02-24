import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: selectHandler,
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.amber, // Background Color
          ),
          child: Text(
            answerText,
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }
}
