import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/scheduler.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }

  Widget buildKey({required int soundNumber, required Color keyColor}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: keyColor),
        child: Container(
          color: keyColor,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              buildKey(soundNumber: 1, keyColor: Colors.red),
              buildKey(soundNumber: 2, keyColor: Colors.green),
              buildKey(soundNumber: 3, keyColor: Colors.blue),
              buildKey(soundNumber: 4, keyColor: Colors.indigo),
              buildKey(soundNumber: 5, keyColor: Colors.orange),
              buildKey(soundNumber: 6, keyColor: Colors.lime),
              buildKey(soundNumber: 7, keyColor: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
