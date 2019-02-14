import 'package:penmark/domain/dayAndPeriod.dart';
import 'package:tuple/tuple.dart';

class DayTranslator{

  final map = [
    Tuple2(Day.Sunday, "日"),
    Tuple2(Day.Monday, "月"),
    Tuple2(Day.Tuesday, "火"),
    Tuple2(Day.Wednesday, "水"),
    Tuple2(Day.Thursday, "木"),
    Tuple2(Day.Friday, "金"),
    Tuple2(Day.Saturday, "土"),
  ];

  Day fromPersistence(String str){
    final index = map.indexWhere((e) => e.item2 == str);
    assert(index != -1);
    return map[index].item1;
  }

  String toPersistence(Day day){
    final index = map.indexWhere((e) => e.item1 == day);
    assert(index != -1);
    return map[index].item2;
  }
}