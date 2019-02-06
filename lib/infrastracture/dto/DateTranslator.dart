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

  String toPersistence(Date date){
    return "${date.year}-${date.month}-${date.day}";
  }
}