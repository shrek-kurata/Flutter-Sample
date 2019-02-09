import 'package:flutter/material.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(50),
          child: Icon(
            Icons.event,size: 100,),
        ),
        ListTile(
          leading: Text("性別"),
          title: Text("男"),
        ),
        Divider(
          indent: 20,
          height: 0,
        ),
        ListTile(
          leading: Text("学年"),
          title: Text("学部一年生"),
        ),
        MaterialButton(
          shape: CircleBorder(),
          color: Theme.of(context).primaryColor,
          textColor: Colors.white,
          child: Text("編集"),
          onPressed: (){
            Scaffold.of(context)
              ..removeCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text("W")));
          }
        )
      ],
    );
  }
}