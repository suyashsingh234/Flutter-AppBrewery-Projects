import 'package:flutter/material.dart';

class Score{
  List<Icon>scores;
  Score(){
    scores=[];
  }

  void correct(){
    scores.add(
      Icon(
        Icons.check,
        color: Colors.green,
      )
    );
  }

  void wrong(){
    scores.add(
        Icon(
          Icons.close,
          color: Colors.red,
        )
    );
  }

  List<Icon> getScore(){
    return scores;
  }
}