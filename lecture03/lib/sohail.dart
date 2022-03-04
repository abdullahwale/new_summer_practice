import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CountingApp extends StatefulWidget {
  const CountingApp({Key? key}) : super(key: key);

  @override
  _CountingAppState createState() => _CountingAppState();
}

class _CountingAppState extends State<CountingApp> {
  int num1 = 0;
  int num2 = 100;
  int result = 0;
  void increment() {
    setState(() {
      num1++;
    });
  }

  void decrement() {
    setState(() {
      num2--;
    });
  }

  void cal(String op) {
    setState(() {
      switch (op) {
        case '+':
          result = num1 + num2;
          break;
        case '-':
          result = num1 - num2;
          break;
        case '/':
          result = num1 ~/ num2;
          break;
        case 'X':
          result = num1 * num2;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green.shade50,
        appBar: AppBar(
          title: Text('CIIT/FA19-BCS-016/VHR'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Container(
          margin: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: increment,
                        child: Text('+',
                            style: TextStyle(
                              fontSize: 50.0,
                            )),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          shape: CircleBorder(),
                        ),
                      ),
                      Text('$num1',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: decrement,
                        child: Text(
                          '-',
                          style: TextStyle(fontSize: 50.0),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          shape: CircleBorder(),
                        ),
                      ),
                      Text(
                        '$num2',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Result',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30.0),
                      ),
                      Text(
                        "$result",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30.0),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      cal("X");
                    },
                    child: Text(
                      'X',
                      style: TextStyle(
                        fontSize: 50.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: CircleBorder(),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      cal("/");
                    },
                    child: Text(
                      '/',
                      style: TextStyle(
                        fontSize: 50.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: CircleBorder(),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      cal('-');
                    },
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontSize: 50.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: CircleBorder(),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      cal('+');
                    },
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 50.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: CircleBorder(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
