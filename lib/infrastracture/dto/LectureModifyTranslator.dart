import 'package:penmark/domain/lecture.dart';
import 'package:penmark/infrastracture/dto/DateTranslator.dart';
import 'package:penmark/infrastracture/dto/DayAndPeriodTranslator.dart';

class LectureModifyTranslator{
  LectureModify fromPersistence(Map<String, dynamic> map){
    return LectureModify(
      description: map["description"],
      date:  DateTranslator().fromPersistence2(map["at"]["date"]),
      dayAndPeriod: DayAndPeriodTranslator().fromPersistence(map["at"]["dayAndPeriod"])
    );
  }

  Map<String, dynamic> toPersistence(LectureModify modify){
    return {
      "description": modify.description,
      "at": {
        "date": DateTranslator().toPersistence(modify.date),
        "dayAndPeriod": DayAndPeriodTranslator().toPersistence(modify.dayAndPeriod)
      }
    };
  }
}