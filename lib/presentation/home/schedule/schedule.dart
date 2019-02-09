
import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';

class Schedule extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("スケジュール"),
     ),
     body: Calendar(
       isExpandable: true,
     ),
   );
  }
}