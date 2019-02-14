import 'package:penmark/domain/lecture.dart';
import 'package:penmark/infrastracture/dto/CampusTranslator.dart';
import 'package:penmark/infrastracture/dto/DayAndPeriodTranslator.dart';
import 'package:penmark/infrastracture/dto/DegreeProgramTranslator.dart';
import 'package:penmark/infrastracture/dto/FacultyTranslator.dart';
import 'package:penmark/infrastracture/dto/LectureDetailTranslator.dart';
import 'package:penmark/infrastracture/dto/SemesterTranslator.dart';

class LectureTranslator{
  Lecture fromPersistence(Map<String, dynamic> map){
    return Lecture(
      id: LectureId(map["id"] as String),
      title: Title(map["title"] as String),
      campus: CampusTranslator().fromPersistence(map["campus"] as String),
      degreeProgram: DegreeProgramTranslator().fromPersistence(map["degreeProgram"] as String),
      semester: SemesterTranslator().fromPersistence(map["semester"] as String),
      year: map["year"] as int,
      teachers: map["teacher"] as List<String>,
      at: (map["at"] as List<Map<String, dynamic>>).map(DayAndPeriodTranslator().fromPersistence).toList(),
      faculties: (map["faculties"] as List<String>).map(FacultyTranslator().fromPersistence).toList(),
      keywords: (map["keywords"] as List<String>).map((e) => Title(e)).toList(),
      details: map.containsKey("details")
        ? (map["details"] as List<Map<String, dynamic>>).map(LectureDetailTranslator().fromPersistence).toList()
        : null,
      cancellations: Future.value([]),
      supplements: Future.value([]));
  }

  Map<String, dynamic> toPersistence(Lecture lecture){
    final result = {
      "id": lecture.id.value,
      "title": lecture.title.value,
      "campus": CampusTranslator().toPersistence(lecture.campus),
      "degreeProgram": DegreeProgramTranslator().toPersistence(lecture.degreeProgram),
      "semester": SemesterTranslator().toPersistence(lecture.semester),
      "year": lecture.year,
      "teacher": lecture.teachers,
      "at": lecture.at.map(DayAndPeriodTranslator().toPersistence),
      "faculties": lecture.faculties.map(FacultyTranslator().toPersistence),
      "keywords": lecture.keywords.map((title) => title.value)
    };

    if(lecture.details != null){
      result["details"] = lecture.details.map(LectureDetailTranslator().toPersistence);
    }

    return result;
  }
}