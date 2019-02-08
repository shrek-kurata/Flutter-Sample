import 'package:penmark/domain/user.dart';
import 'package:penmark/infrastracture/dto/DegreeProgramTranslator.dart';

class GradeTranslator{
  Grade fromPersistence(Map<String, dynamic> map){
    return Grade(
      degreeProgram: DegreeProgramTranslator().fromPersistence(map["degreeProgram"] as String),
      year: map["year"] as num
    );
  }

  Map<String, dynamic> toPersistence(Grade grade){
    return <String, dynamic>{
      "degreeProgram": DegreeProgramTranslator().toPersistence(grade.degreeProgram),
      "year": grade.year
    };
  }
}