import 'dart:async';
import 'dart:ui';

import 'package:meta/meta.dart';
import 'package:penmark/domain/campus.dart';
import 'package:penmark/domain/date.dart';
import 'package:penmark/domain/faculty.dart';
import 'package:penmark/domain/lecture.dart';
import 'package:penmark/domain/semester.dart';
import 'package:penmark/domain/service/AuthService.dart';
import 'package:penmark/domain/user.dart';

// ユーザ自身を表す
// モバイルアプリ特有のmodel
class Me extends User{

  List<MeLecture> _lectures;

  Me({
    @required UserId id,
    @required Date birthDay,
    @required Campus campus,
    @required String name,
    @required String iconURL,
    @required Sex sex,
    @required Grade grade,
    @required Faculty faculty,
    @required List<MeLecture> lectures
  }): super(
    id: id,
    birthDay: birthDay,
    campus: campus,
    name: name,
    iconURL: iconURL,
    sex: sex,
    grade: grade,
    faculty: faculty
  ){
    _lectures = lectures;
  }

  void updateBirthday(Date update) => this.birthDay = update;
  void updateCampus(Campus update) => this.campus = update;
  void updateName(String update) => this.name = name;
  void updateIconURL(String update) => this.iconURL = update;
  void updateSex(Sex update) => this.sex = update;
  void updateGrade(Grade update) => this.grade = update;
  void updateFaculty(Faculty update) => this.faculty = update;

  Future<void> sendVerifyMail({@required AuthService service,@required String to}){
    return service.sendVerifyMail(to: to);
  }

  Future<void> logout({@required AuthService service}){
    return service.logout();
  }

  // 不変性を保証する
  List<MeLecture> get lectures => List.unmodifiable(_lectures);

  Future addLecture(MeLecture lecture)async{
    _lectures.add(lecture);
  }

}

class MeLecture{
  final Lecture lecture;
  final Color color;

  const MeLecture({
    @required this.lecture,
    @required this.color});
}