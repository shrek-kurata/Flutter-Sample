import 'package:penmark/domain/date.dart';

class DateTranslator{

  //TODO: wrong
  Date fromPersistence(String str){
    final split = str.split("-");
    assert(split.length == 3);
    return Date(
      year:  int.parse(split[0]),
      month: int.parse(split[1]),
      day: int.parse(split[2])
    );
  }

  Date fromPersistence2(Map<String, dynamic> map){
    return Date(
      year: map["year"] as num,
      month: map["month"] as num,
      day: map["day"] as num
    );
  }

  //TODO: wrong
  String toPersistence(Date date){
    return "${date.year}-${date.month}-${date.day}";
  }
}