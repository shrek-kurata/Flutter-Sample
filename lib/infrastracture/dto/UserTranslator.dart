import 'package:penmark/domain/user.dart';
import 'package:penmark/infrastracture/dto/CampusTranslator.dart';
import 'package:penmark/infrastracture/dto/DateTranslator.dart';
import 'package:penmark/infrastracture/dto/GradeTranslator.dart';
import 'package:penmark/infrastracture/dto/SexTranslator.dart';

class UserTranslator{
  User fromPersistence(Map<String, dynamic> json){
    assert(json.containsKey("id")); //Firestoreには保存されてないので、渡してあげる必要がある

    return User(
      id: UserId(json["id"]),
      birthDay: DateTranslator().fromPersistence(json["birthDay"]),
      campus: CampusTranslator().fromPersistence(json["campus"]),
      name: json["name"],
      iconURL: json["icon"],
      sex: SexTranslator().fromPersistence(json["sex"]),
      grade: GradeTranslator().fromPersistence(json["grade"]),
      faculty: null);
  }

  Map<String, dynamic> toPersistence(User user){
    
  }
}



