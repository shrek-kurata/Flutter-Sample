import 'package:penmark/domain/dayAndPeriod.dart';
import 'package:penmark/infrastracture/dto/DayTranslator.dart';
import 'package:penmark/infrastracture/dto/PeriodTimeTranslator.dart';

class DayAndPeriodTranslator{
  DayAndPeriod fromPersistence(Map<String, dynamic> map){
    return DayAndPeriod(
      day: DayTranslator().fromPersistence(map["day"]), 
      periodTime: PeriodTimeTranslator().fromPersistence(map["periodTime"])
    );
  }

  Map<String, dynamic> toPersistence(DayAndPeriod obj){
    return {
      "day": DayTranslator().toPersistence(obj.day),
      "periodTime": PeriodTimeTranslator().toPersistence(obj.periodTime)
    };
  }
}