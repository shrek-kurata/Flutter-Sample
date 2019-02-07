import 'package:penmark/domain/lecture.dart';
import 'package:penmark/infrastracture/dto/AllFacultyTranslator.dart';
import 'package:penmark/infrastracture/dto/CampusTranslator.dart';
import 'package:penmark/infrastracture/dto/DayAndPeriodTranslator.dart';
import 'package:penmark/infrastracture/dto/DegreeProgramTranslator.dart';
import 'package:penmark/infrastracture/dto/LectureDetailTranslator.dart';
import 'package:penmark/infrastracture/dto/SemesterTranslator.dart';

class LectureTranslator{
  Lecture fromPersistence(Map<String, dynamic> map){
    return Lecture(
      id: LectureId(map["id"]),
      title: Title(map["title"]),
      campus: CampusTranslator().fromPersistence(map["campus"]),
      degreeProgram: DegreeProgramTranslator().fromPersistence(map["degreeProgram"]),
      semester: SemesterTranslator().fromPersistence(map["semester"]),
      year: map["year"],
      teachers: map["teacher"],
      at: (map["at"] as List<Map<String, dynamic>>).map((e) => DayAndPeriodTranslator().fromPersistence(e)),
      faculties: (map["faculties"] as List<String>).map((e) => AllFacultyTranslator().fromPersistence(e)),
      keywords: map["keywords"].map((str) => Title(str)),
      details: map.containsKey("details")
        ? map["details"].map((e) => LectureDetailTranslator().fromPersistence(e)) : null,
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
      "at": lecture.at.map((dayAndPeriod) => DayAndPeriodTranslator().toPersistence(dayAndPeriod)),
      "faculties": lecture.faculties.map((faculty) => AllFacultyTranslator().toPersistence(faculty)),
      "keywords": lecture.keywords.map((title) => title.value)
    };

    if(lecture.details != null){
      result["details"] = lecture.details.map((detail) => LectureDetailTranslator().toPersistence(detail));
    }

    return result;
  }
}