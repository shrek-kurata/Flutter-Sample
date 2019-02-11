
import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';

class Schedule extends StatelessWidget{

  const Schedule({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
   return Calendar(
     isExpandable: true,
   );
  }
}