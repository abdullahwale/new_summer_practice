import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            color: Colors.green,
            textColor: Colors.white,
            child: Text(answerText),
            onPressed: selectHandler,
          ),
        ],
      ),
    );
  }
}
