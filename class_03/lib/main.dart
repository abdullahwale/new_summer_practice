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
  var left_image = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Column(
          children: [
            Row(
              children: [
                FlatButton(
                  child: Image.asset('images/dice$left_image.png'),
                  onPressed: () {
                    setState(() {
                      left_image = Random().nextInt(6) + 1;
                    });
                  },
                ),
                FlatButton(
                  child: Image.asset('images/dice$left_image.png'),
                  onPressed: () {
                    setState(() {
                      left_image = Random().nextInt(6) + 1;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/*
Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$left_image.png'),
              onPressed: () {
                setState(() {
                  left_image = Random().nextInt(6) + 1;
                });
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$left_image.png'),
              onPressed: () {
                setState(() {
                  left_image = Random().nextInt(6) + 1;
                });
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$left_image.png'),
              onPressed: () {
                setState(() {
                  left_image = Random().nextInt(6) + 1;
                });
              },
            ),
          ),
 */
