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
    return _hexToColor(str);
  }

  /// from: https://stackoverflow.com/questions/50381968/flutter-dart-convert-hex-color-string-to-color
  Color _hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  String toPersistence(Color color){
    //Ignore alpha value
    return "#${color.value.toRadixString(16).substring(2,8).toUpperCase()}";
  }
}