import 'package:penmark/domain/semester.dart';

class SemesterTranslator{
  final map = [
    [Semester.Spring, "春学期"],
    [Semester.Fall, "秋学期"],
    [Semester.YearRound, "通年"],
    [Semester.SpringIntensive, "春学期集中"],
    [Semester.FallIntensive, "秋学期集中"]
  ];

  Semester fromPersistence(String str){
    final index = map.indexWhere((e) => e[1] == str);
    assert(index != -1);
    return map[index][0];
  }

  String toPersistence(Semester semester){
    final index = map.indexWhere((e) => e[0] == semester);
    assert(index != -1);
    return map[index][1];
  }
}