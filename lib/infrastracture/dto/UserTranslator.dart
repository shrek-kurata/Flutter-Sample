import 'package:penmark/domain/user.dart';

class UserTranslator{
  User fromPersistence(Map<String, dynamic> json){
    assert(json.containsKey("id")); //Firestoreには保存されてないので、渡してあげる必要がある

    return User(
      id: UserId(json["id"]),
      birthDay: null,
      campus: null,
      name: null,
      iconURL: null,
      sex: null,
      grade: null,
      faculty: null);
  }

  Map<String, dynamic> toPersistence(User user){

  }
}



