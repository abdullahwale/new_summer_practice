import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var lastPosition = 0.0;
  var random = Random();

  AnimationController _animationController;
  Animation _animation;

  double getRandom() {
    return random.nextDouble();
  }

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "images/floor.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Container(
              child: RotationTransition(
                turns: Tween(begin: 0.0, end: getRandom()).animate(
                    CurvedAnimation(
                        parent: _animationController, curve: Curves.linear)),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _animationController = AnimationController(
                          vsync: this, duration: Duration(seconds: 1));
                      _animationController.forward();
                    });
                  },
                  child: Image.asset(
                    "images/bottle.png",
                    width: 250,
                    height: 250,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
