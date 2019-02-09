import 'package:flutter/material.dart';

class Other extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return (
      ListView(
        children: <Widget>[
          ListTile(
            leading: Text("設定"),
          ),
          Ink(
            color: Colors.grey,
            child:  ListTile(
              title: Text("時間割"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){},
            ),
          )
        ],
      )
    );
  }
}