import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.check),
                    title: Text('TITLE'),
                    subtitle: Text('SUBTITLE'),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('BTN1'),
                        onPressed: () {/* ... */},
                      ),
                      FlatButton(
                        child: const Text('BTN2'),
                        onPressed: () {/* ... */},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              child: Text(
                "Flutter",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              color: Colors.green,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              child: Text(
                "Flutter",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              color: Colors.green,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              child: Text(
                "Flutter",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              color: Colors.green,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  color: Colors.blue,
                  height: 50.0,
                  width: 50.0,
                ),
                Icon(Icons.adjust, size: 50.0, color: Colors.pink),
                Icon(
                  Icons.adjust,
                  size: 50.0,
                  color: Colors.purple,
                ),
                Icon(
                  Icons.adjust,
                  size: 50.0,
                  color: Colors.greenAccent,
                ),
                Container(
                  color: Colors.orange,
                  height: 50.0,
                  width: 50.0,
                ),
                Icon(
                  Icons.adjust,
                  size: 50.0,
                  color: Colors.cyan,
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

/*
void main() {
  runApp(MaterialApp(
    home: Center(
      child: Image(image: AssetImage('images/cat.png')),
    ),
  ));
}

 */
//void main() => runApp(MyApp());

// void main() {
//   runApp(MyApp());
//   // print("Great Feature");
//   // print("Muhammad Abdullah Wali");
// }

// class MyApp extends StatelessWidget {
//   //@override
//   Widget build(BuildContext context) {
//     final title = 'Load My Image App';
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//         ),
//         body: Center(
//           child: Image.network(
//               'https://avatars0.githubusercontent.com/u/39946504?s=400&u=44764b768976a6b3633ee5671fbfe9dc355db83f&v=4'),
//         ),
//       ),
//     );
//   }
//
/*
class MyApp extends StatelessWidget {
  //@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(child: Text("Abdullah")),
    );
  }
}
 */
