import 'package:penmark/domain/date.dart';

class DateTranslator{

  Date fromPersistence(Map<String, dynamic> map){
    return Date(
      year: map["year"] as int,
      month: map["month"] as int,
      day: map["day"] as int
    );
  }

  Map<String, dynamic> toPersistence(Date date){
    return <String, dynamic>{
      "year": date.year,
      "month": date.month,
      "day": date.day
    };
  }
}

