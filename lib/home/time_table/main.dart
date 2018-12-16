import 'package:flutter/material.dart';

class TimeTable extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: new Theme(
            child: new DropdownButtonHideUnderline(
              child: new DropdownButton<String>(
                value: "one",
                items: <DropdownMenuItem<String>>[
                  new DropdownMenuItem(
                    child: new Text('My Page'),
                    value: 'one',
                  ),
                ],
                onChanged: (String value) {
                },
              ),
            ),
            data: new ThemeData.dark(),
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: "時間割"),
              Tab(text: "スケジュール"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Text("cf"),
            Text("vge")
          ]),
      ),
    );
  }
}