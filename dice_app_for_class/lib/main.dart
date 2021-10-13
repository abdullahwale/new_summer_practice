import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int number = 1;
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    number = Random().nextInt(6) + 1;
                  });
                  print(number);
                },
                child: Image(
                  image: AssetImage('images/dice$number.png'),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    number = Random().nextInt(6) + 1;
                  });
                  print(number);
                },
                child: Image(
                  image: AssetImage('images/dice$number.png'),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    number = Random().nextInt(6) + 1;
                  });
                  print(number);
                },
                child: Image(
                  image: AssetImage('images/dice$number.png'),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    number = Random().nextInt(6) + 1;
                  });
                  print(number);
                },
                child: Image(
                  image: AssetImage('images/dice$number.png'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

/*
 Row(
          children: [
            Expanded(
              child: Image(
                image: AssetImage('images/dice1.png'),
              ),
            ),
            SizedBox(
              width: 12.0,
            ),
            Expanded(
              child: Image(
                image: AssetImage('images/dice2.png'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 12.0,
        ),
        Row(
          children: [
            Expanded(
              child: Image(
                image: AssetImage('images/dice1.png'),
              ),
            ),
            SizedBox(
              width: 12.0,
            ),
            Expanded(
              child: Image(
                image: AssetImage('images/dice2.png'),
              ),
            ),
          ],
        ),
 */
