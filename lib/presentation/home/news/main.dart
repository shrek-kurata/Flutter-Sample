import 'package:flutter/material.dart';
import 'package:penmark/Theme/theme.dart' as Theme;

class NewsAppPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NewsAppPageState();
  }
}

class NewsAppPageState extends State<NewsAppPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ニュース"),
      ),
      body: Container(
      ),
      backgroundColor: Colors.white,
    );
  }



}