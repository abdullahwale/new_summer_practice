import 'package:flutter/material.dart';

class FirstApp extends StatelessWidget {
  const FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Final"),
        ),
        body: Center(
          child: Image(image: AssetImage("imges/pakflag.png")),
        ),
      ),
    );
  }
}
