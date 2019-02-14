import 'dart:ui';

import 'package:penmark/domain/me.dart';
import 'package:penmark/infrastracture/dto/LectureTranslator.dart';

class MeLectureTranslator{
  MeLecture fromPersistence(Map<String, dynamic> map){
    final lecture = LectureTranslator().fromPersistence(map);
    final String color = map["color"];

    return MeLecture(
      lecture: lecture,
      color: ColorTranslator().fromPersistence(color)
    );
  }

  Map<String, dynamic> toPersistence(MeLecture meLecture){
    final map = LectureTranslator().toPersistence(meLecture.lecture);
    map["color"] = ColorTranslator().toPersistence(meLecture.color);

    return map;
  }
}

//TODO: wrong
class ColorTranslator{
  Color fromPersistence(String str){
    assert(str.startsWith("#"));

    return Color(int.parse(str.replaceAll("#", "")));
  }

  String toPersistence(Color color){
    return "#${color.value}";
  }
}