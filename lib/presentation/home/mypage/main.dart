import 'package:flutter/material.dart';
import 'package:penmark/presentation/home/counter.dart';
import 'package:penmark/presentation/home/mypage/other.dart';
import 'package:penmark/presentation/home/mypage/profile.dart';

class MyPage extends StatelessWidget{

  const MyPage();

  @override
  Widget build(BuildContext context) {
    return (
      DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("マイページ"),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: "プロフィール"),
                Tab(text: "その他")
              ]
            ),
          ),
          body: const TabBarView(
            children: [
              const Profile(),
              const Other()
            ]
          ),
        ),
      )
    );
  }

}