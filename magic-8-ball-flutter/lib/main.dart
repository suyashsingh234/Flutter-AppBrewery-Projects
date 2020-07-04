import 'package:flutter/material.dart';
import 'dart:math';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 8 ball',
      home:Scaffold(
        backgroundColor: Colors.blueAccent[200],
        appBar: AppBar(
          title:Text('Ask Me Anything'),
          backgroundColor: Colors.blue[900],
        ),
        body:BallPage(),
      ),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  @override
  int ballNumber=1;
  Widget build(BuildContext context) {
    return Center(
      child:FlatButton(
        onPressed: () {
          setState(() {
            ballNumber=Random().nextInt(5)+1;
          });
        },
        child:Image.asset('images/ball$ballNumber.png'),
      )
    );
  }
}

