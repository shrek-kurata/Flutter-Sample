import 'package:flutter/material.dart';
import 'package:penmark/presentation/home/appbar_action/sort_lecture.dart';

class Counter extends StatefulWidget{

  const Counter();

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> with AutomaticKeepAliveClientMixin<Counter>{

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("$_count"),
        MaterialButton(
          child: Text("押せ！"),
          onPressed: (){
            setState(() {
              _count++;
            });
          }
        ),
        SortLecture()
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}