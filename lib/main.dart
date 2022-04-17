import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/scheduler.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
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
                  final player = AudioCache();
                  player.play("note1.wav");
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                child: Container(
                  color: Colors.blue,
                ),
                onPressed: () {
                  final player = AudioCache();
                  player.play("note2.wav");
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.orange),
                child: Container(
                  color: Colors.orange,
                ),
                onPressed: () {
                  final player = AudioCache();
                  player.play("note3.wav");
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.purple),
                child: Container(
                  color: Colors.purple,
                ),
                onPressed: () {
                  final player = AudioCache();
                  player.play("note4.wav");
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                child: Container(
                  color: Colors.yellow,
                ),
                onPressed: () {
                  final player = AudioCache();
                  player.play("note5.wav");
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.green),
                child: Container(
                  color: Colors.green,
                ),
                onPressed: () {
                  final player = AudioCache();
                  player.play("note6.wav");
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.lime),
                child: Container(
                  color: Colors.lime,
                ),
                onPressed: () {
                  final player = AudioCache();
                  player.play("note7.wav");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
