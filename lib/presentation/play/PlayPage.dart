import 'package:flutter/material.dart';

void play(){
  runApp(PlayPage());
}

class PlayPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Card(child: Text("WWWcsfvvsdvvdhvbdsvhj dfjvfbvhb"),),
              Card(child: Text("WWW"),)
            ],
          )
        ),
      )
    );
  }
}