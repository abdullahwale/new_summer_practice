import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FA19-BCS-061',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'FA19-BCS-061'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double a = 0;
  double b = 10;
  double result = 0;

  void _incrementCounter() {
    setState(() {
      a++;
    });
  }

  void _decrementCounter() {
    setState(() {
      b--;
    });
  }

  void add() {
    setState(() {
      result = a + b;
    });
  }

  void sub() {
    setState(() {
      result = a - b;
    });
  }

  void mul() {
    setState(() {
      result = a * b;
    });
  }

  void div() {
    setState(() {
      result = a / b;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 8,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "$a",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  "$b",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 170,
          ),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Result",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ]),
          ),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "$result",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ]),
          ),
        ],
      ),
      floatingActionButton: Stack(fit: StackFit.expand, children: [
        Positioned(
            left: 100,
            top: 120,
            child: FloatingActionButton(
              child: const Text('+'),
              onPressed: _incrementCounter,
              tooltip: 'Increment',
            )),
        Positioned(
          right: 80,
          top: 120,
          child: FloatingActionButton(
            child: const Text('-'),
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
          ),
        ),
        Positioned(
          left: 60,
          bottom: 30,
          child: FloatingActionButton(
            child: const Text('X'),
            onPressed: mul,
            tooltip: 'Multiply',
          ),
        ),
        Positioned(
          left: 165,
          bottom: 30,
          child: FloatingActionButton(
            child: const Text('/'),
            onPressed: div,
            tooltip: 'Divide',
          ),
        ),
        Positioned(
          right: 165,
          bottom: 30,
          child: FloatingActionButton(
            child: const Text('-'),
            onPressed: sub,
            tooltip: 'Subtract',
          ),
        ),
        Positioned(
          right: 50,
          bottom: 30,
          child: FloatingActionButton(
            child: const Text('+'),
            onPressed: add,
            tooltip: 'Add',
          ),
        ),
      ]),
    );
  }
}
