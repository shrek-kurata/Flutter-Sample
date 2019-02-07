import 'package:penmark/domain/user.dart';
import 'package:penmark/infrastracture/dto/DegreeProgramTranslator.dart';

class GradeTranslator{
  Grade fromPersistence(Map<String, dynamic> map){
    return Grade(
      degreeProgram: DegreeProgramTranslator().fromPersistence(map["degreeProgram"]),
      year: int.parse(map["year"])
    );
  }

  Map<String, dynamic> toPersistence(Grade grade){
    return {
      "degreeProgram": DegreeProgramTranslator().toPersistence(grade.degreeProgram),
      "year": grade.year
    };
  }
}