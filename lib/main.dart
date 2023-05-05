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

  Widget buildKey({ required int note, required Color colorKey }) {
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
          buildKey( note: 1, colorKey: Colors.redAccent),
          buildKey( note: 2, colorKey: Colors.indigo),
          buildKey( note: 3, colorKey: Colors.blue),
          buildKey( note: 4, colorKey: Colors.green),
          buildKey( note: 5, colorKey: Colors.orangeAccent),
          buildKey( note: 6, colorKey: Colors.brown),
          buildKey( note: 7, colorKey: Colors.cyan),
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
