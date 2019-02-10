import 'package:flutter/material.dart';
import 'package:penmark/presentation/home/schedule/schedule.dart';
import 'package:penmark/presentation/home/time_table/main.dart';
import 'package:penmark/presentation/home/webview.dart';

class HomeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("App with Tabs"),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.schedule),
                ),
                Tab(
                  icon: Icon(Icons.calendar_today),
                ),
                Tab(
                  icon: Icon(Icons.cast),
                ),
              ]
            ),
            actions: <Widget>[
              Builder(builder: (context){
                final index = DefaultTabController.of(context).index;
                print(index);
                return index == 1 ? Icon(Icons.grade) : Icon(Icons.title);
              })
            ],
          ),
          body: TabBarView(
            children: [
              Schedule(),
              TimeTable(),
              Text("aha")
            ]
          ),
        )
      ),
    );
  }
}