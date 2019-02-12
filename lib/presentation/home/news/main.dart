import 'package:flutter/material.dart';
import 'package:penmark/presentation/home/news/coverflow.dart';

class NewsTop extends StatelessWidget{

  const NewsTop();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox.fromSize(
          size: Size.fromHeight(250),
          child: Stack(
            children: <Widget>[
              PageView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Card(child: Text("W")),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Card(child: Text("W")),
                  ),
                ],
              ),
              Align(
                alignment: Alignment(0, 0.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.blur_circular),
                    Icon(Icons.blur_circular),
                  ],
                )
              )
            ],
          )
        ),
        SizedBox.fromSize(
          size: Size.fromHeight(100),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1/1.4,
                child: Card(child: Text("WWW"),),
              ),
              AspectRatio(
                aspectRatio: 1/1.4,
                child: Card(child: Text("WWW"),),
              ),
              AspectRatio(
                aspectRatio: 1/1.4,
                child: Card(child: Text("WWW"),),
              ),
              AspectRatio(
                aspectRatio: 1/1.4,
                child: Card(child: Text("WWW"),),
              ),
              AspectRatio(
                aspectRatio: 1/2,
                child: Card(child: Text("WWW"),),
              ),
              AspectRatio(
                aspectRatio: 1/2,
                child: Card(child: Text("WWW"),),
              ),
              AspectRatio(
                aspectRatio: 1/2,
                child: Card(child: Text("WWW"),),
              ),
            ],
          )
        ),
        GridView.count(
          physics: ScrollPhysics(), // to disable GridView's scrolling
          shrinkWrap: true,
          crossAxisCount: 2,
          children: <Widget>[
            Card(child: Text("WWW"),),
            Card(child: Text("WWW"),),
            Card(child: Text("WWW"),),
            Card(child: Text("WWW"),),
          ],
        )
      ],
    );
  }
}