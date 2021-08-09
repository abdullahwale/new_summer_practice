import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottle spinner',
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
  Animation _animation;
  AnimationController _animationController;
  var rng = new Random();
  Tween _tween;

  double randomNumber() {
    return rng.nextDouble();
  }

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _tween = new Tween<double>(
        begin: rng.nextInt(3).toDouble(), end: rng.nextInt(3).toDouble());
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            "images/floor.jpg",
            fit: BoxFit.fill,
          ),
        ),
        Center(
          child: Container(
            child: RotationTransition(
                turns: Tween(begin: 0.0, end: randomNumber()).animate(
                    CurvedAnimation(
                        parent: _animationController, curve: Curves.linear)),
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _animationController = AnimationController(
                            vsync: this, duration: Duration(seconds: 3));
                        _tween = Tween<double>(
                            begin: rng.nextInt(3).toDouble(),
                            end: rng.nextInt(3).toDouble());

                        _animationController.forward();
                      });
                    },
                    child: Image.asset(
                      "images/bottle.png",
                      height: 250,
                      width: 250,
                    ))),
          ),
        ),
      ],
    ));
  }
}
