import 'package:flutter/material.dart';
import 'package:penmark/presentation/home/mypage/main.dart';

class UserIcon extends StatelessWidget{
  
  const UserIcon();
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute<MyPage>(builder: (_) => const MyPage()));
      },
      child: Padding(
        padding: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: FadeInImage.assetNetwork(
            placeholder: "images/lake.jpg",
            image: "https://firebasestorage.googleapis.com/v0/b/staging-penmark.appspot.com/o/Aperture_Science_grey.jpg?alt=media&token=cbe20a22-4e7b-4eea-90dd-aa585bcb65a2"
          ),
        ),
      ),
    );
  }
}