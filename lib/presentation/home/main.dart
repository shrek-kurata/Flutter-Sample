import 'package:flutter/material.dart';
import 'package:penmark/presentation/home/counter.dart';
import 'package:penmark/presentation/home/schedule/schedule.dart';
import 'package:penmark/presentation/home/time_table/main.dart';
import 'package:penmark/presentation/home/toolbar_action/user_icon.dart';
import 'package:penmark/presentation/home/webview.dart';
import 'package:tuple/tuple.dart';

void home(){
 runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Penmark",
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 71, 64, 89)
      ),
      home: Home()
    );
  }
}

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _BasePageState();
}

class _BasePageState extends State<Home> {
  int _index = 0;

  final _list = const <Tuple2<String, Widget>>[
    Tuple2<String, Widget>("スケジュール", const Schedule()),
    Tuple2<String, Widget>("時間割", const TimeTable()),
    Tuple2<String, Widget>("ニュース", const Counter())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const UserIcon(),
        title: Text(_list[_index].item1),
      ),
      body: new Stack(
        children: <Widget>[
          _buildOffstage(0, _list[0].item2),
          _buildOffstage(1, _list[1].item2),
          _buildOffstage(2, _list[2].item2),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            this._index = index;
          });
        },
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.schedule),
            title: new Text("スケジュール"),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.calendar_today),
            title: new Text('時間割'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cast),
            title: Text("ニュース")
          )
        ],
      ),
    );
  }


  Widget _buildOffstage(int index, Widget page) {
    return Offstage(
      offstage: index != _index,
      child: page
    );
  }
}

class _HomeState extends State<Home>{
  int _index = 1;

  final _widgets = [
    const Counter(),
    const TimeTable(),
    const Center(child: Text("ニュース"))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("スケジュール"),
      ),
      body: _widgets.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (int index){
          setState(() {
            _index = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            title: Text("スケジュール")
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text("時間割")
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.cast),
            title: Text("ニュース")
          ),
        ]
      )
    );
  }
}