import 'package:flutter/material.dart';

class NewsCoverFlow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        SizedBox(width: double.infinity, height: 300,),
        SizedBox(width: double.infinity, height: 300,)
      ],
    );
  }
}