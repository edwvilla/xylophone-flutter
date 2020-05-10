import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: XyloBody(),
    );
  }
}

class XyloBody extends StatelessWidget {
  final player = AudioCache();

  void playSound(int soundNumber) {
    player.play('note$soundNumber.wav');
  }

  Expanded playButton({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        child: null,
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            playButton(color: Colors.red, soundNumber: 1),
            playButton(color: Colors.orange, soundNumber: 2),
            playButton(color: Colors.yellow, soundNumber: 3),
            playButton(color: Colors.green, soundNumber: 4),
            playButton(color: Colors.teal, soundNumber: 5),
            playButton(color: Colors.blue, soundNumber: 6),
            playButton(color: Colors.purple, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
