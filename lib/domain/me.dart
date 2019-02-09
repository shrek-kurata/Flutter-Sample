import 'dart:async';
import 'dart:ui';

import 'package:meta/meta.dart';
import 'package:penmark/domain/campus.dart';
import 'package:penmark/domain/date.dart';
import 'package:penmark/domain/faculty.dart';
import 'package:penmark/domain/lecture.dart';
import 'package:penmark/domain/service/AuthService.dart';
import 'package:penmark/domain/user.dart';

// ユーザ自身を表す
// モバイルアプリ特有のmodel
class Me extends User{

  final List<MeLecture> lectures;

  Me.fromUser(User user, List<MeLecture> lectures): this(
    id: user.id,
    birthDay: user.birthDay,
    campus: user.campus,
    name: user.name,
    iconURL: user.iconURL,
    sex: user.sex,
    grade: user.grade,
    faculty: user.faculty,
    lectures: lectures
  );

  Me({
    @required UserId id,
    @required Date birthDay,
    @required Campus campus,
    @required String name,
    @required String iconURL,
    @required Sex sex,
    @required Grade grade,
    @required Faculty faculty,
    @required this.lectures
  }):
      assert(lectures != null),
      super(
      id: id,
      birthDay: birthDay,
      campus: campus,
      name: name,
      iconURL: iconURL,
      sex: sex,
      grade: grade,
      faculty: faculty
    );

  Future<void> sendVerifyMail({@required AuthService service,@required String to}){
    return service.sendVerifyMail(to: to);
  }

  Future<void> logout({@required AuthService service}){
    return service.logout();
  }
}

class MeLecture{
  final Lecture lecture;
  final Color color;

  const MeLecture({
    @required this.lecture,
    @required this.color}):
      assert(lecture != null),
      assert(color != null);
}