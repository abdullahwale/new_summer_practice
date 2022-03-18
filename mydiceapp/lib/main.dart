import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyNewDiceApp());
}

class MyNewDiceApp extends StatefulWidget {
  const MyNewDiceApp({Key? key}) : super(key: key);

  @override
  _MyNewDiceAppState createState() => _MyNewDiceAppState();
}

class _MyNewDiceAppState extends State<MyNewDiceApp> {
  var plus = 0;
  var dice1 = 1;
  var dice2 = 1;
  var dice3 = 1;
  var dice4 = 1;
  void totalSumofDices() {
    setState(() {
      plus = dice1 + dice2 + dice3 + dice4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Total:$plus"),
          centerTitle: true,
          backgroundColor: Colors.yellow,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    child: Image.asset('images/dice$dice1.png'),
                    onPressed: () {
                      setState(() {
                        dice1 = Random().nextInt(6) + 1;
                        // sum();
                      });
                      print(num);
                    },
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: Image.asset('images/dice$dice2.png'),
                    onPressed: () {
                      setState(() {
                        dice2 = Random().nextInt(6) + 1;
                        // sum();
                      });
                      print(num);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    child: Image.asset('images/dice$dice3.png'),
                    onPressed: () {
                      setState(() {
                        dice3 = Random().nextInt(6) + 1;
                        //sum();
                      });
                      print(num);
                    },
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: Image.asset('images/dice$dice4.png'),
                    onPressed: () {
                      setState(() {
                        dice4 = Random().nextInt(6) + 1;
                        //sum();
                      });
                      print(num);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            totalSumofDices();
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.navigation),
        ),
      ),
    );
  }
}
