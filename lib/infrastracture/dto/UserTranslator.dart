import 'package:penmark/domain/user.dart';
import 'package:penmark/infrastracture/dto/CampusTranslator.dart';
import 'package:penmark/infrastracture/dto/DateTranslator.dart';
import 'package:penmark/infrastracture/dto/FacultyTranslator.dart';
import 'package:penmark/infrastracture/dto/GradeTranslator.dart';
import 'package:penmark/infrastracture/dto/SexTranslator.dart';

class UserTranslator{
  User fromPersistence(Map<String, dynamic> json){
    return User(
      id: UserId(json["id"] as String),
      birthDay: DateTranslator().fromPersistence(json["birthDay"] as Map<String, dynamic>),
      campus: CampusTranslator().fromPersistence(json["campus"] as String),
      name: json["name"] as String,
      iconURL: json["icon"] as String,
      sex: SexTranslator().fromPersistence(json["sex"] as num),
      grade: GradeTranslator().fromPersistence(json["grade"] as Map<String, dynamic>),
      faculty: FacultyTranslator().fromPersistence(json["faculty"] as String));
  }

  Map<String, dynamic> toPersistence(User user){
    return <String, dynamic>{
      "birthDay": DateTranslator().toPersistence(user.birthDay),
      "campus": CampusTranslator().toPersistence(user.campus),
      "name": user.name,
      "icon": user.iconURL,
      "sex": SexTranslator().toPersistence(user.sex),
      "grade": GradeTranslator().toPersistence(user.grade),
      "faculty": FacultyTranslator().toPersistence(user.faculty)
    };
  }
}



