import 'package:penmark/domain/campus.dart';
import 'package:penmark/domain/dayAndPeriod.dart';
import 'package:penmark/domain/degreeProgram.dart';
import 'package:penmark/domain/faculty.dart';
import 'package:penmark/domain/lecture.dart';
import 'package:penmark/domain/semester.dart';

final sampleLecture = Lecture(
  id: LectureId("学士~さんすう~春学期~日吉~2019~ogiwara~木4"),
  title: Title("さんすう"),
  campus: Campus.Hiyoshi,
  degreeProgram: DegreeProgram.Undergraduate,
  semester: Semester.Spring,
  year: 2019,
  teachers: ["ogiwara"],
  at: [DayAndPeriod(day: Day.Thursday, periodTime: PeriodTime.Four)],
  faculties: [Faculty.Ri],
  keywords: [Title("さんすう")]);