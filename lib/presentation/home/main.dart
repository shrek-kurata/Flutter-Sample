import 'package:flutter/material.dart';
import 'package:penmark/presentation/home/schedule/schedule.dart';
import 'package:penmark/presentation/home/time_table/main.dart';

class HomeApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomeApp>{
  int _selectedIndex = 1;
  final _widgetOptions = [
    Schedule(),
    TimeTable(),
    Text("ニュース")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
      theme: ThemeData(
          primaryColor: Color.fromARGB(255, 71, 64, 89)
      ),
      home: Scaffold(
        body: Center(
          child: _widgetOptions[_selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [

            BottomNavigationBarItem(icon: Icon(Icons.schedule), title: Text("スケジュール")),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today), title: Text("時間割")),
            BottomNavigationBarItem(icon: Icon(Icons.cast), title: Text("ニュース")),
          ],
          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }

}