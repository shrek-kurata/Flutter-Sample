import 'package:penmark/domain/degreeProgram.dart';
import 'package:tuple/tuple.dart';

class DegreeProgramTranslator{
  final map = [
    Tuple2(DegreeProgram.Undergraduate, "学士"),
    Tuple2(DegreeProgram.Master, "修士"),
    Tuple2(DegreeProgram.Doctor, "博士"),
    Tuple2(DegreeProgram.Expert, "専門"),
  ];

  DegreeProgram fromPersistence(String str){
    final index = map.indexWhere((e) => e.item2 == str);
    assert(index != -1);
    return map[index].item1;
  }

  String toPersistence(DegreeProgram degreeProgram){
    final index = map.indexWhere((e) => e.item1 == degreeProgram);
    assert(index != -1);
    return map[index].item2;
  }
}