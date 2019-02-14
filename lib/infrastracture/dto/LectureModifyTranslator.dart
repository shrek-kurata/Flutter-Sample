import 'package:penmark/domain/lecture.dart';
import 'package:penmark/infrastracture/dto/DateTranslator.dart';
import 'package:penmark/infrastracture/dto/DayAndPeriodTranslator.dart';

class LectureModifyTranslator{

  //TODO: wrong
  LectureModify fromPersistence(Map<String, dynamic> map){
    return LectureModify(
      description: map["description"] as String,
      date:  DateTranslator().fromPersistence(map["date"] as Map<String, dynamic>),
      dayAndPeriod: DayAndPeriodTranslator().fromPersistence(map["dayAndPeriod"] as Map<String, dynamic>)
    );
  }

  //TODO: wrong
  Map<String, dynamic> toPersistence(LectureModify modify){
    return <String, dynamic>{
      "description": modify.description,
      "date": DateTranslator().toPersistence(modify.date),
      "dayAndPeriod": DayAndPeriodTranslator().toPersistence(modify.dayAndPeriod)
    };
  }
}