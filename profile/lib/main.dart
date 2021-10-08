import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Brand Name",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blue, fontSize: 55),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 50),
            ],
          ),
          SizedBox(
            height: 80,
            child: Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
          ),
          Text(
            "Some Text of your choice",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.green[700], fontSize: 40),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 50),
            ],
          ),
          MaterialButton(
            minWidth: double.infinity,
            height: 60,
            onPressed: () {},
            color: Colors.redAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            child: Text(
              "Sign UP",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 20),
            ],
          ),
          MaterialButton(
            minWidth: double.infinity,
            height: 60,
            onPressed: () {},
            color: Colors.redAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            child: Text(
              "Register",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          Text(
            '',
          ),
        ],
      )),
    ));
  }
}
