import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text(questions[_questionIndex]),
            SizedBox(
              height: 10.0,
            ),
            MaterialButton(
              child: Text('Answer 01'),
              color: Color(0xFF801E48),
              textColor: Colors.white,
              onPressed: _answerQuestion,
            ),
            SizedBox(
              height: 10.0,
            ),
            MaterialButton(
              child: Text('Answer 01'),
              color: Color(0xFF801E48),
              textColor: Colors.white,
              onPressed: () => print('Answer 1 Selection!'),
            ),
            SizedBox(
              height: 10.0,
            ),
            MaterialButton(
              child: Text('Answer 01'),
              color: Color(0xFF801E48),
              textColor: Colors.white,
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
              textColor: Colors.white,
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
