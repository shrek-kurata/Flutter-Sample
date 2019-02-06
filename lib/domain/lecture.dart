import 'package:meta/meta.dart';
import 'package:penmark/domain/campus.dart';
import 'package:penmark/domain/date.dart';
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
  }): super(){
    _validate();

  }

  void _validate(){
    assert(teachers.length > 0);
    assert(at.length > 0);
    assert(faculties.length > 0);
    assert(keywords.length > 0);
  }

  //パフォーマンスの都合上、遅延評価に
  Future<LectureModify> get cancellations => Future.error("");
  Future<LectureModify> get supplements => Future.error("");
}

class LectureDetail{
  final String title;
  final String content;

  const LectureDetail({@required this.title, @required this.content});
}

class LectureModify{
  final String description;
  final Date date;
  final DayAndPeriod dayAndPeriod;

  const LectureModify({
    @required this.description,
    @required this.date,
    @required this.dayAndPeriod});
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
