import 'package:penmark/domain/user.dart';

class SexTranslator{
  final map = [
    [Sex.Unknown, 0],
    [Sex.Male, 1],
    [Sex.Female, 2],
    [Sex.NotApplicable, 9]
  ];

  Sex fromPersistence(num num){
    final index = map.indexWhere((e) => e[1] == num);
    assert(index != -1);
    return map[index][0] as Sex;
  }

  num toPersistence(Sex sex){
    final index = map.indexWhere((e) => e[0] == sex);
    assert(index != -1);
    return map[index][1] as int;
  }
}