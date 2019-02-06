import 'package:penmark/domain/campus.dart';
import 'package:penmark/domain/date.dart';
import 'package:penmark/domain/degreeProgram.dart';
import 'package:penmark/domain/faculty.dart';
import 'package:penmark/domain/me.dart';
import 'package:penmark/domain/user.dart';

class MeRepository{

  Me _sample = Me(
    id:  UserId("cibcdisndfsi"),
    birthDay: Date(year: 1999, month: 5, day: 30),
    campus: Campus.Hiyoshi,
    name: "荻原",
    iconURL: "nciivnisnvvis",
    sex: Sex.Male,
    grade: Grade(degreeProgram: DegreeProgram.Undergraduate, year: 1),
    faculty: Faculty.Ri
  );

  Future<Me> fromAuth(){
    return Future.value(_sample);
  }

  Future save(Me me)async{
    this._sample = me;
  }
}