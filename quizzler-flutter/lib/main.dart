import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'Question.dart';
import 'Score.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Quizzler',
      home:Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:Center(
            child:QuizApp(),
          )
        ),
      )
    );
  }
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  Questions Q=Questions();
  Score S=Score();
  bool questionAnswer;
  ScrollController _scrollController = new ScrollController();

  void checkAnswer(){
    setState(() {
      if(Q.ended) {
        Alert(context: context, title: "Quiz ended", desc: "Close this box to start again").show();
        Q=Questions();
        S=Score();
      }
      else{
        if(Q.checkAnswer(questionAnswer)){
          S.correct();
        }
        else{
          S.wrong();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollController.jumpTo(_scrollController.position.maxScrollExtent));

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Center(
              child: Text(Q.getQuestion(),
                    textAlign: TextAlign.center,
                    style:TextStyle(color:Colors.white,fontSize: 25),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: FlatButton(
              color: Colors.green,
              onPressed: (){
                questionAnswer=true;
                checkAnswer();
              },
              child:Text('TRUE',
                textAlign: TextAlign.center,
                style:TextStyle(color:Colors.white,fontSize: 20),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: FlatButton(
              color: Colors.red,
              onPressed: (){
                questionAnswer=false;
                checkAnswer();
              },
              child:Text('FALSE',
                textAlign: TextAlign.center,
                style:TextStyle(color:Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
        Expanded(
          child: new ListView.builder(
            scrollDirection: Axis.horizontal,
            controller: _scrollController,
            itemCount: S.getScore().length,
            itemBuilder: (BuildContext ctxt, int index){
              return S.getScore()[index];
            },
          ),
        )
      ],
    );
  }
}
