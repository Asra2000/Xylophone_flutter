import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int a){
    final player = AudioCache();
    player.play('note$a.wav');
  }
  Expanded buildKey(Color color,int note){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          playSound(note);
        },
        child: Icon(
          Icons.music_note,
        ),
        color: color,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              buildKey(Colors.red , 1),
              buildKey(Colors.purple,2),
              buildKey(Colors.pink,3),
              buildKey(Colors.blue,4),
              buildKey(Colors.orange, 5),
              buildKey(Colors.cyan,6),
              buildKey(Colors.yellow, 7),
    ],
          ),
        ),
      ),
    );
  }
}

