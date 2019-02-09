import 'package:flutter/material.dart';
import 'package:penmark/presentation/home/mypage/other.dart';
import 'package:penmark/presentation/home/mypage/profile.dart';

class MyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return (
      DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("マイページ"),
            bottom: TabBar(
              tabs: [
                Tab(text: "プロフィール"),
                Tab(text: "その他")
              ]
            ),
          ),
          body: TabBarView(
            children: [
              Profile(),
              Other()
            ]
          ),
        ),
      )
    );
  }

}