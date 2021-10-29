import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  _launchURLBrowser() async {
    const url = 'https://www.pakacademy79.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLApp() async {
    const url = 'https://flutterdevs.com/';
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: deprecated_member_use
            RaisedButton(
              color: Colors.teal,
              onPressed: _launchURLBrowser,
              child: Text(
                'Press Url Browser',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              color: Colors.teal,
              onPressed: _launchURLApp,
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                'Press Url App',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
