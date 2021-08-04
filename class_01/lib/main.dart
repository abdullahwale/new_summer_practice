import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  print("Abdullah");
  print("My Name");
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        floatingActionButton: FloatingActionButton(),
        body: Center(
          child: Image(image: AssetImage('images/pic.jpeg')),
        ),
      ),
    ),
  );
}
