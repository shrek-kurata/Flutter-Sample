import 'package:penmark/domain/dayAndPeriod.dart';

class DayTranslator{

  final map = [
    [Day.Sunday, "日"],
    [Day.Monday, "月"],
    [Day.Tuesday, "火"],
    [Day.Wednesday, "水"],
    [Day.Thursday, "木"],
    [Day.Friday, "金"],
    [Day.Saturday, "土"]
  ];

  Day fromPersistence(String str){
    final index = map.indexWhere((e) => e[1] == str);
    assert(index != -1);
    return map[index][0] as Day;
  }

  String toPersistence(Day day){
    final index = map.indexWhere((e) => e[0] == day);
    assert(index != -1);
    return map[index][1] as String;
  }
}