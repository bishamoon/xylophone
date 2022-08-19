import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylopnoneScreen extends StatelessWidget {
  void playSound(int soundNumber) async {
    AudioCache player = AudioCache(prefix: 'assets/music/');
    await player.play('note$soundNumber.wav');
  }

  Widget buildKey({int? soundNumber, Color? color}) {
    return Expanded(
        child: ElevatedButton(
      onPressed: () => playSound(soundNumber!),
      child: Padding(
        padding: EdgeInsets.all(10),
      ),
      style: ElevatedButton.styleFrom(primary: color),
    ));
  }

  const XylopnoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Xylophone'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(color: Colors.red, soundNumber: 1),
          buildKey(color: Colors.orange, soundNumber: 2),
          buildKey(color: Colors.yellow, soundNumber: 3),
          buildKey(color: Colors.green, soundNumber: 4),
          buildKey(color: Colors.teal, soundNumber: 5),
          buildKey(color: Colors.blue, soundNumber: 6),
          buildKey(color: Colors.purple, soundNumber: 7),
        ],
      )),
    );
  }
}
