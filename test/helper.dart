import 'dart:async';
import 'dart:ui';

import 'package:penmark/domain/campus.dart';
import 'package:penmark/domain/date.dart';
import 'package:penmark/domain/dayAndPeriod.dart';
import 'package:penmark/domain/degreeProgram.dart';
import 'package:penmark/domain/faculty.dart';
import 'package:penmark/domain/lecture.dart';
import 'package:penmark/domain/me.dart';
import 'package:penmark/domain/semester.dart';
import 'package:penmark/domain/user.dart';

final sampleLectureModify = () => LectureModify(
  description: "学会",
  date: Date(year: 2019, month: 5, day: 30),
  dayAndPeriod: DayAndPeriod(day: Day.Thursday, periodTime: PeriodTime.Four));



final sampleLecture = () => Lecture(
  id: LectureId("学士~さんすう~春学期~日吉~2019~ogiwara~木4"),
  title: Title("さんすう"),
  campus: Campus.Hiyoshi,
  degreeProgram: DegreeProgram.Undergraduate,
  semester: Semester.Spring,
  year: 2019,
  teachers: ["ogiwara"],
  at: [DayAndPeriod(day: Day.Thursday, periodTime: PeriodTime.Four)],
  faculties: [AllFaculty.Ri],
  keywords: [Title("さんすう")],
  cancellations: Future.value([
    sampleLectureModify()
  ]),
  supplements: Future.value([])
);



final sampleLecture2 = () => Lecture(
  id: LectureId("学士~こくご~春学期~日吉~2019~ogiwara~木4"),
  title: Title("こくご"),
  campus: Campus.Hiyoshi,
  degreeProgram: DegreeProgram.Undergraduate,
  semester: Semester.Spring,
  year: 2019,
  teachers: ["ogiwara"],
  at: [DayAndPeriod(day: Day.Thursday, periodTime: PeriodTime.Four)],
  faculties: [AllFaculty.Bun],
  keywords: [Title("こくご")],
  cancellations: Future.value([]),
  supplements: Future.value([])
);


final sampleMe = () => Me(
  id:  UserId("cibcdisndfsi"),
  birthDay: Date(year: 1999, month: 5, day: 30),
  campus: Campus.Hiyoshi,
  name: "荻原",
  iconURL: "nciivnisnvvis",
  sex: Sex.Male,
  grade: Grade(degreeProgram: DegreeProgram.Undergraduate, year: 1),
  faculty: Faculty.Ri,
  lectures: [ MeLecture(
    lecture: sampleLecture(),
    color: Color(114514)
  ) ]
);

