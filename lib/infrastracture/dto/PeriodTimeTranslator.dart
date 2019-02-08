import 'package:penmark/domain/dayAndPeriod.dart';

class PeriodTimeTranslator{
  final map = [
    [PeriodTime.One, 1],
    [PeriodTime.Two, 2],
    [PeriodTime.Three, 3],
    [PeriodTime.Four, 4],
    [PeriodTime.Five, 5],
    [PeriodTime.Six, 6],
    [PeriodTime.Seven, 7],
  ];

  PeriodTime fromPersistence(num num){
    final index = map.indexWhere((e) => e[1] == num);
    assert(index != -1);
    return map[index][0] as PeriodTime;
  }

  num toPersistence(PeriodTime period){
    final index = map.indexWhere((e) => e[0] == period);
    assert(index != -1);
    return map[index][1] as num;
  }
}