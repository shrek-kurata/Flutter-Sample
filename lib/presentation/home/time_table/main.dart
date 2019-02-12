import 'package:flutter/material.dart';
import 'package:penmark/presentation/home/time_table/cell.dart';

class TimeTable extends StatelessWidget{

  const TimeTable({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Table(
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
              _Period(1),
              Cell(title: "数学"),
              Cell(),
              Cell(),
              Cell()
            ]
          ),
          TableRow(
            children: [
              _Period(2),
              Cell(),
              Cell(),
              Cell(),
              Cell()
            ]
          ),
          TableRow(
            children: [
              _Period(3),
              Cell(),
              Cell(),
              Cell(),
              Cell()
            ]
          ),
          TableRow(
            children: [
              _Period(4),
              Cell(),
              Cell(),
              Cell(),
              Cell()
            ]
          ),
          TableRow(
            children: [
              _Period(5),
              Cell(),
              Cell(),
              Cell(),
              Cell()
            ]
          ),
          TableRow(
            children: [
              _Period(6),
              Cell(),
              Cell(),
              Cell(),
              Cell()
            ]
          ),
          TableRow(
            children: [
              _Period(7),
              Cell(),
              Cell(),
              Cell(),
              Cell()
            ]
          ),
        ],
      ),
    );
  }
}

class _Period extends StatelessWidget{

  final int _periodTime;
  const _Period(this._periodTime);

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 5,
      child: Text("$_periodTime"),
    );
  }
}