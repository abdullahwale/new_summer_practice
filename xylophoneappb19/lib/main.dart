import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(XylophoneApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 40,
      navigateAfterSeconds: XylophoneApp(),
      title: Text(
        'Welcome In SplashScreen',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: Image.network(
          'https://flutter.io/images/catalog-widget-placeholder.png'),
      backgroundColor: Colors.white,
      loaderColor: Colors.red,
    );
  }
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded myfunction({Color colur, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: colur,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              myfunction(colur: Colors.red, soundNumber: 1),
              myfunction(colur: Colors.orange, soundNumber: 2),
              myfunction(colur: Colors.yellow, soundNumber: 3),
              myfunction(colur: Colors.green, soundNumber: 4),
              myfunction(colur: Colors.teal, soundNumber: 5),
              myfunction(colur: Colors.blue, soundNumber: 6),
              myfunction(colur: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
