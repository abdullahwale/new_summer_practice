import 'package:flutter/material.dart';

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Pakistani"),
        ),
        body: Center(
          child: Image.asset("imges/pakflag.png"),
        ),
      ),
    );
  }
}
