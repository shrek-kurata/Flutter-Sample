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
  final LectureId id;
  final Title title;
  final Campus campus;
  final DegreeProgram degreeProgram;
  final Semester semester;
  final num year;
  final List<String> teachers;
  final List<DayAndPeriod> at;
  final List<AllFaculty> faculties;
  final List<Title> keywords;
  @nullable
  final List<LectureDetail> details;

  final Future<List<LectureModify>> cancellations;
  final Future<List<LectureModify>> supplements;

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
  }):
      assert(id != null),
      assert(title != null),
      assert(campus != null),
      assert(degreeProgram != null),
      assert(semester != null),
      assert(year != null),
      assert(teachers != null && teachers.isNotEmpty),
      assert(at != null && at.isNotEmpty),
      assert(faculties != null && faculties.isNotEmpty),
      assert(keywords != null && keywords.isNotEmpty),
      assert(cancellations != null),
      assert(supplements != null),
      assert(teachers.isNotEmpty),assert(at.isNotEmpty),
      super();

}

@immutable
class LectureDetail{
  final String title;
  final String content;

  const LectureDetail({
    @required this.title,
    @required this.content}
    ): assert(title != null),
      assert(content != null);
}

@immutable
class LectureModify{
  final String description;
  final Date date;
  final DayAndPeriod dayAndPeriod;

  const LectureModify({
    @required this.description,
    @required this.date,
    @required this.dayAndPeriod}):
      assert(description != null),
      assert(date != null),
      assert(dayAndPeriod != null);
}

@immutable
class LectureId{
  final String value;

  const LectureId(this.value): assert(value != null);

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
