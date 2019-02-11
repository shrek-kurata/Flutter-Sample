import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';
import 'package:penmark/presentation/home/mypage/main.dart';
import 'package:penmark/presentation/home/time_table/cell.dart';

class TimeTable extends StatelessWidget{

  const TimeTable({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: {0: FractionColumnWidth(0.05)},

      border: TableBorder.all(color: Colors.grey),
      children: [
        const TableRow(children: [
          Text(""),
          Center(
            heightFactor: 1.3,
            child: Text("月"),
          ),
          Center(
            heightFactor: 1.3,
            child: Text("火"),
          ),Center(
            heightFactor: 1.3,
            child: Text("水"),
          ),Center(
            heightFactor: 1.3,
            child: Text("木"),
          )
        ]),
        TableRow(
          children: [
            Center(
              heightFactor: 5,
              child: Text("1"),
            ),
            SizedBox.fromSize(
              size: Size(double.infinity, 100),
              child: InkWell(
                onTap: (){},
                child: Card(
                  color: Colors.black12,
                  margin: EdgeInsets.all(0),
                  child: Text("WWW"),
                ),
              ),
            ),
            Card(
              child: Text("A"),
            ),
            Card(
              child: Text("A"),
            ),
            Card(
              child: Text("A"),
            ),
          ]
        )
      ],
    );
  }
}
