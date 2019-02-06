import 'package:flutter/material.dart';
import 'package:penmark/domain/repository/NewsRepository.dart' as NewsRepo;
import 'package:penmark/domain/news.dart';
import 'package:penmark/domain/date.dart';

class Cell extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CellState();
  }
}

class CellState extends State<Cell> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container();
  }
}

class Index1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Index1State();
  }
}

class Index1State extends State<Index1> {

  PresentationNews news;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  }

  // パースしたい
   PresentationNews parseNews(thumbNailURL: String, ) {
    Image image = Image.network(thumbNailURL);
  }
}

class PresentationNews {
  Image _image;
  String _content;
  Date _date;

  PresentationNews(image, content, date) {
    this._image = image;
    this._content = content;
    this._date = date;
  }
}