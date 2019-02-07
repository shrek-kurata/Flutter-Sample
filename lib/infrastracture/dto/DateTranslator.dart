import 'package:penmark/domain/date.dart';

class DateTranslator{
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
      year: int.parse(map["year"]),
      month: int.parse(map["month"]),
      day: int.parse(map["day"])
    );
  }

  String toPersistence(Date date){
    return "${date.year}-${date.month}-${date.day}";
  }
}