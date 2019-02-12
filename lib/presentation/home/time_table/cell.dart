import 'package:flutter/material.dart';

class Cell extends StatelessWidget{

  final String title;

  const Cell({this.title});

  @override
  Widget build(BuildContext context){
    return SizedBox.fromSize(
      size: Size.fromHeight(90),
      child: InkWell(
        onTap: (){

        },
        child: Opacity(
          opacity: title == null ? 0 : 1,
          child: Card(
            elevation: 0,
            color: Colors.amberAccent,
            margin: EdgeInsets.all(5),
            child: Center(
              child: Text(title ?? ""),
            ),
          ),
        )
      ),
    );
  }
}