import 'package:meta/meta.dart';
import 'package:penmark/domain/campus.dart';
import 'package:penmark/domain/dayAndPeriod.dart';
import 'package:penmark/domain/degreeProgram.dart';
import 'package:penmark/domain/entity.dart';
import 'package:penmark/domain/faculty.dart';
import 'package:penmark/domain/semester.dart';
import 'package:quiver/core.dart';

class Lecture extends Entity{
  LectureId id;
  Title title;
  Campus campus;
  DegreeProgram degreeProgram;
  Semester semester;
  num year;
  List<String> teachers;
  List<DayAndPeriod> at;
  List<Faculty> faculties;
  List<Title> keywords;
  List<LectureDetail> details;

  Lecture({
    @required this.id,
    @required this.title,
    @required this.campus,
    @required this.degreeProgram,
    @required this.semester,
    @required this.year,
    @required this.teachers,
    @required this.at,
    @required this.faculties,
    @required this.keywords,
    this.details
  }){}
}

class LectureDetail{
  final String title;
  final String content;

  const LectureDetail({@required this.title, @required this.content});
}

class LectureId{
  final String value;

  const LectureId(this.value);

  @override
  bool operator ==(Object that) {
    if(that is! LectureId){
      return false;
    }else{
      return this.value == (that as LectureId).value;
    }
  }

  @override
  int get hashCode => this.value.hashCode;
}

class Title{
  final String value;

  const Title(this.value);
}
