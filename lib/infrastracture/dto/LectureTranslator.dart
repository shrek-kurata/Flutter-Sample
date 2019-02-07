import 'package:penmark/domain/lecture.dart';
import 'package:penmark/infrastracture/dto/CampusTranslator.dart';
import 'package:penmark/infrastracture/dto/DegreeProgramTranslator.dart';
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
      at: null,
      faculties: null,
      keywords: null,
      cancellations: null,
      supplements: null);
  }

  Map<String, dynamic> toPersistence(Lecture lecture){

  }
}