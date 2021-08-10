import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  print("Console Aysha");
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("Abdullah"),
        ),
      ),
    );
  }
}
