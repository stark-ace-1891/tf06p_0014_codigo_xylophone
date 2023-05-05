import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  AudioPlayer player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Xylophone"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.pinkAccent,
              child: TextButton(
                
                onPressed: () {},
                child: Text(""),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.indigo,
              child: TextButton(
                
                onPressed: () {},
                child: Text(""),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
