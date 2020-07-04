import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Xylophone(),
        ),
      ),
    );
  }
}

class Xylophone extends StatelessWidget{
  //vibgyor
  var colors=[Hexcolor("#EE82EE"),Colors.indigo,Colors.blue,Colors.green,Colors.yellow,Colors.orange,Colors.red];

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded tile(Color color,int soundNumber)
  {
    return Expanded(
      child:FlatButton(
        onPressed: ()=>playSound(soundNumber),
        color: color,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children:<Widget>[
        tile(colors[6],1),
        tile(colors[5],2),
        tile(colors[4],3),
        tile(colors[3],4),
        tile(colors[2],5),
        tile(colors[1],6),
        tile(colors[0],7),
      ]
    );
  }
}