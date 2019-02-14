import 'package:meta/meta.dart';
import 'package:penmark/domain/campus.dart';
import 'package:penmark/domain/date.dart';
import 'package:penmark/domain/degreeProgram.dart';
import 'package:penmark/domain/entity.dart';
import 'package:penmark/domain/faculty.dart';

// ユーザーを表す
// クライアントは Me オブジェクト
class User extends Entity{
  final UserId id;
  final Date birthDay;
  final Campus campus;
  final String name;
  final String iconURL;
  final Sex sex;
  final Grade grade;
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
  }):
      assert(id != null),
      assert(birthDay != null),
      assert(campus != null),
      assert(name != null),
      assert(iconURL != null),
      assert(sex != null),
      assert(grade != null),
      assert(faculty != null),
      super();
}

@immutable
class UserId{
  final String value;

  const UserId(this.value): assert(value != null);
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
    @required this.year}):
      assert(degreeProgram != null),
      assert(year != null);
}