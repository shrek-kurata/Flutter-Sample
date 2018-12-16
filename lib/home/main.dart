import 'package:flutter/material.dart';
import 'package:penmark/home/time_table/main.dart';

class HomeApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomeApp>{
  int _selectedIndex = 0;
  final _widgetOptions = [
    TimeTable(),
    Text("ニュース"),
    Text("マイページ")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
      theme: ThemeData(
          primaryColor: Colors.deepPurple
      ),
      home: Scaffold(
        body: Center(
          child: _widgetOptions[_selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today), title: Text("時間割")),
            BottomNavigationBarItem(icon: Icon(Icons.cast), title: Text("ニュース")),
            BottomNavigationBarItem(icon: Icon(Icons.perm_identity), title: Text("マイページ")),
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