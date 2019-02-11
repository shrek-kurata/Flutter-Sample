import 'package:flutter/material.dart';
import 'package:penmark/presentation/home/mypage/main.dart';

class UserIcon extends StatelessWidget{
  
  const UserIcon();
  
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.person), 
      onPressed: (){
        Navigator.push(context, MaterialPageRoute<MyPage>(builder: (_) => const MyPage()));
      }
    );
  }
}