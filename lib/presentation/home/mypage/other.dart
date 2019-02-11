import 'package:flutter/material.dart';

class Other extends StatelessWidget{

  const Other();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const ListTile(
          leading: const Text("設定"),
        ),
        Container(
          color: Colors.white,
          child: const ListTile(
            title: Text("時間割"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ),
        const Divider(
          indent: 20,
          height: 0,
        ),
        Container(
          color: Colors.white,
          child: const ListTile(
            title: Text("ニュース"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        )
      ],
    );
  }
}