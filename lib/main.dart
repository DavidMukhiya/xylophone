import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/scheduler.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                child: Container(
                  color: Colors.red,
                ),
                onPressed: () {
                  playSound(1);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                child: Container(
                  color: Colors.blue,
                ),
                onPressed: () {
                  playSound(2);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.orange),
                child: Container(
                  color: Colors.orange,
                ),
                onPressed: () {
                  playSound(3);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.purple),
                child: Container(
                  color: Colors.purple,
                ),
                onPressed: () {
                  playSound(4);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                child: Container(
                  color: Colors.yellow,
                ),
                onPressed: () {
                  playSound(5);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.green),
                child: Container(
                  color: Colors.green,
                ),
                onPressed: () {
                  playSound(6);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.lime),
                child: Container(
                  color: Colors.lime,
                ),
                onPressed: () {
                  playSound(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
