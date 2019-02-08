import 'package:penmark/domain/lecture.dart';
import 'package:penmark/infrastracture/dto/DateTranslator.dart';
import 'package:penmark/infrastracture/dto/DayAndPeriodTranslator.dart';

class LectureModifyTranslator{
  LectureModify fromPersistence(Map<String, dynamic> map){
    return LectureModify(
      description: map["description"] as String,
      date:  DateTranslator().fromPersistence2(map["at"]["date"] as Map<String, dynamic>),
      dayAndPeriod: DayAndPeriodTranslator().fromPersistence(map["at"]["dayAndPeriod"] as Map<String, dynamic>)
    );
  }

  Map<String, dynamic> toPersistence(LectureModify modify){
    return <String, dynamic>{
      "description": modify.description,
      "at": {
        "date": DateTranslator().toPersistence(modify.date),
        "dayAndPeriod": DayAndPeriodTranslator().toPersistence(modify.dayAndPeriod)
      }
    };
  }
}