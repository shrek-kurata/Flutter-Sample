import 'package:flutter/material.dart';

class Profile extends StatelessWidget{

  const Profile();

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          const Icon(
            Icons.event,size: 100,
          ),
          const Text("ogiwara"),
          const ListTile(
            leading: Text("性別"),
            title: Text("男"),
          ),
          const Divider(
            height: 0,
          ),
          const ListTile(
            leading: Text("学年"),
            title: Text("学部一年生"),
          ),
          const Divider(
            height: 0,
          ),
          const ListTile(
            leading: Text("学部"),
            title: Text("環境情報学部"),
          ),
          FlatButton(
            child: Text("プロフィールを編集"),
            onPressed: (){
              Scaffold.of(context)
                ..removeCurrentSnackBar()
                ..showSnackBar(SnackBar(content: Text("W")));
            },
          )
        ],
      )
    );
  }
}