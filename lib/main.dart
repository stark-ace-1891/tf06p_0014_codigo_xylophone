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

//"audios/note1.wav"
  playNote(note) {
    player.play(
      AssetSource("audios/note$note.wav"),
    );
  }

  Widget buildKey(int note, Color colorKey) {
    return Expanded(
      child: Container(
        color: colorKey,
        child: TextButton(
          onPressed: () {
            playNote(note);
          },
          child: Text(""),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Xylophone"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(1, Colors.redAccent),
          buildKey(2, Colors.indigo),
          buildKey(3, Colors.blue),
          buildKey(4, Colors.green),
          buildKey(5, Colors.orangeAccent),
          // Expanded(
          //   child: Container(
          //     color: Colors.pinkAccent,
          //     child: TextButton(
          //       onPressed: () {
          //         playNote(1);
          //       },
          //       child: Text(""),
          //     ),
          //   ),
          // ),
          // Expanded(
          //   child: Container(
          //     color: Colors.indigo,
          //     child: TextButton(
          //       onPressed: () {
          //         playNote(2);
          //       },
          //       child: Text(""),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
