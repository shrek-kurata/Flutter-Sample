import 'package:flutter/material.dart';

class Profile extends StatelessWidget{

  const Profile();

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          SizedBox.fromSize(
            size: Size.fromHeight(100),
            child: CircleAvatar(
              child: FadeInImage.assetNetwork(
                placeholder: "images/lake.jpg",
                image: "https://firebasestorage.googleapis.com/v0/b/staging-penmark.appspot.com/o/Aperture_Science_grey.jpg?alt=media&token=cbe20a22-4e7b-4eea-90dd-aa585bcb65a2"
              ),
            )
          ),
          const Padding(
            padding: EdgeInsets.all(5),
            child: Text("ogiwara", style: TextStyle(fontSize: 20),),
          ),
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