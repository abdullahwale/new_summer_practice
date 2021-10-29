import 'dart:html';

import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer Selection!');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text("Total Questions1"),
            SizedBox(
              height: 10.0,
            ),
            MaterialButton(
              child: Text('Answer 01'),
              color: Color(0xFF801E48),
              onPressed: answerQuestion,
            ),
            SizedBox(
              height: 10.0,
            ),
            MaterialButton(
              child: Text('Answer 01'),
              color: Color(0xFF801E48),
              onPressed: () => print('Answer 1 Selection!'),
            ),
            SizedBox(
              height: 10.0,
            ),
            MaterialButton(
              child: Text('Answer 01'),
              color: Color(0xFF801E48),
              onPressed: () {
                print('Answer 2 Selection!');
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            MaterialButton(
              child: Text('Answer 01'),
              color: Color(0xFF801E48),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
