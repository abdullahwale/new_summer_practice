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

  Expanded myfunction({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
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
              myfunction(color: Colors.red, soundNumber: 1),
              myfunction(color: Colors.orange, soundNumber: 2),
              myfunction(color: Colors.yellow, soundNumber: 3),
              myfunction(color: Colors.green, soundNumber: 4),
              myfunction(color: Colors.teal, soundNumber: 5),
              myfunction(color: Colors.blue, soundNumber: 6),
              myfunction(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
