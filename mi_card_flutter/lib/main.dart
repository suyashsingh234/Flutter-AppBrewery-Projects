import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Card app',
      home:Scaffold(
        backgroundColor: Colors.teal[700],
        body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage:AssetImage('images/photo3.jpg')
              ),
              Text(
                'Suyash Singh',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize:25, color:Colors.white, fontFamily: 'Pacifico')
              ),
              Container(
                  width: 100,
                  child:Divider(
                    color: Colors.tealAccent,
                    height: 15
                  )
              ),
              Card(
                margin: EdgeInsets.all(10),
                child:Padding(
                  padding: EdgeInsets.all(5),
                  child:Container(
                    width: 300,
                    color: Colors.white,
                    child: ListTile(
                      leading: Icon(Icons.phone,color: Colors.teal[700]),
                      title: Text('+91 9717804194')
                    )
                  )
              )
              ),
              Card(
                  child:Padding(
                      padding: EdgeInsets.all(5),
                      child:Container(
                          width: 300,
                          color: Colors.white,
                          child: ListTile(
                              leading: Icon(Icons.mail, color: Colors.teal[700],),
                              title: Text('suyashsingh234@gmail.com')
                          )
                      )
                  )
              )
            ],
          )
        )
      )
    );
  }
}

