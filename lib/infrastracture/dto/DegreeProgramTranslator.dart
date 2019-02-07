import 'package:penmark/domain/degreeProgram.dart';

class DegreeProgramTranslator{
  final map = [
    [DegreeProgram.Undergraduate, "学士"],
    [DegreeProgram.Master, "修士"],
    [DegreeProgram.Doctor, "博士"]
  ];

  DegreeProgram fromPersistence(String str){
    final index = map.indexWhere((e) => e[1] == str);
    assert(index != -1);
    return map[index][0];
  }

  String toPersistence(DegreeProgram degreeProgram){
    final index = map.indexWhere((e) => e[0] == degreeProgram);
    assert(index != -1);
    return map[index][1];
  }
}