import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(233, 233, 123, 234),
      body: Container(
        child: Column(
          children: [
            Image.network('https://picsum.photos/250?image=9'),
            Row(
              children: [
                Image(image: AssetImage('images/flag.jpg')),
              ],
            ),
            Image.network('https://picsum.photos/250?image=9'),
          ],
        ),
      ),
    );
  }
}
