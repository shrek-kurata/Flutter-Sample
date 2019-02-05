import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';
import 'package:penmark/presentation/home/time_table/cell.dart';

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
            data: ThemeData(
              primaryColor: Colors.deepPurple
            ),
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
            Table(
              border: TableBorder.all(),
              children: [
                TableRow(children: [
                  Card(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Cell()));
                      },
                      child: Text("数学"),
                    )
                  ), Text("cd"),
                ]),
                TableRow(children: [
                  Text("ab"), Text("cd"),
                ]),
                TableRow(children: [
                  Text("ab"), Text("cd")
                ]),
                TableRow(children: [
                  Text("ab"), Text("cd")
                ]),
              ],
            ),
            Calendar(
              isExpandable: true,
            )
          ]),
      ),
    );
  }
}
