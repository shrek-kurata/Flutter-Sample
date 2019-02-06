import 'package:meta/meta.dart';
import 'package:penmark/domain/campus.dart';
import 'package:penmark/domain/date.dart';
import 'package:penmark/domain/degreeProgram.dart';
import 'package:penmark/domain/entity.dart';
import 'package:penmark/domain/faculty.dart';

// ユーザーを表す
// クライアントは Me オブジェクト
class User extends Entity{
  UserId id;
  Date birthDay;
  Campus campus;
  String name;
  String iconURL;
  Sex sex;
  Grade grade;
  Faculty faculty;

  User({
    @required this.id,
    @required this.birthDay,
    @required this.campus,
    @required this.name,
    @required this.iconURL,
    @required this.sex,
    @required this.grade,
    @required this.faculty
  }): super(){
   _validate();
  }

  void _validate(){
  }
}

@immutable
class UserId{
  final String value;

  const UserId(this.value);
}

enum Sex{
  Unknown, Male, Female, NotApplicable
}

@immutable
class Grade{
  final DegreeProgram degreeProgram;
  final num year;

  const Grade({
    @required this.degreeProgram,
    @required this.year});
}