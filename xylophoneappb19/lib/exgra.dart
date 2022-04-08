import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyXylophoneApp());
}

//CTRL + ALt + L
class MyXylophoneApp extends StatelessWidget {
  void myFunction(int num, String name){
    final player = AudioCache();
    player.play('note$num.wav');
    print(name);
  }

  Expanded Create_Button(int number,String name,String buttonText,Color colur){
    return Expanded(child: ElevatedButton(
      onPressed: (){
        myFunction(number,name);
      },
      child: Text(buttonText),
      style: ElevatedButton.styleFrom(
        primary: colur, // This is what you need!
      ),
    ),);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Xylophone App"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Create_Button(1,"First","XyloApp",Colors.green),
            Create_Button(2,"Second","XyloApp",Colors.yellow),
            Create_Button(3,"Second","XyloApp",Colors.blue),
            Create_Button(4,"Second","XyloApp",Colors.black),
            Create_Button(5,"Second","XyloApp",Colors.purple),
            Create_Button(6,"Second","XyloApp",Colors.pink),
            Create_Button(7,"Second","XyloApp",Colors.red),
        ],),
      ),
    );
  }
}
