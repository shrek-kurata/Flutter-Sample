import 'package:meta/meta.dart';
import 'package:penmark/domain/campus.dart';
import 'package:penmark/domain/date.dart';
import 'package:penmark/domain/dayAndPeriod.dart';
import 'package:penmark/domain/degreeProgram.dart';
import 'package:penmark/domain/entity.dart';
import 'package:penmark/domain/faculty.dart';
import 'package:penmark/domain/semester.dart';
import 'package:penmark/helper.dart';

class Lecture extends Entity{
  LectureId id;
  Title title;
  Campus campus;
  DegreeProgram degreeProgram;
  Semester semester;
  num year;
  List<String> teachers;
  List<DayAndPeriod> at;
  List<AllFaculty> faculties;
  List<Title> keywords;

  @nullable
  List<LectureDetail> details;

  Future<List<LectureModify>> cancellations;
  Future<List<LectureModify>> supplements;

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
    @required this.cancellations,
    @required this.supplements,
    @nullable this.details
  }): super(){
    _validate();

  }

  void _validate(){
    assert(teachers.isNotEmpty);
    assert(at.isNotEmpty);
    assert(faculties.isNotEmpty);
    assert(keywords.isNotEmpty);
  }
}

@immutable
class LectureDetail{
  final String title;
  final String content;

  const LectureDetail({@required this.title, @required this.content});
}

@immutable
class LectureModify{
  final String description;
  final Date date;
  final DayAndPeriod dayAndPeriod;

  const LectureModify({
    @required this.description,
    @required this.date,
    @required this.dayAndPeriod});
}

@immutable
class LectureId{
  final String value;

  const LectureId(this.value);

  @override
  bool operator ==(Object that) {
    if(identical(this, that)){
      return true;
    }
    if(that is! LectureId){
      return false;
    }
    return this.value == (that as LectureId).value;
  }

  @override
  int get hashCode => this.value.hashCode;
}

@immutable
class Title{
  final String value;

  const Title(this.value);
}
