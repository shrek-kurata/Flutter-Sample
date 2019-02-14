import 'package:penmark/domain/campus.dart';
import 'package:penmark/domain/dayAndPeriod.dart';
import 'package:penmark/domain/degreeProgram.dart';
import 'package:penmark/domain/faculty.dart';
import 'package:penmark/domain/semester.dart';
import 'package:penmark/domain/user.dart';
import 'package:penmark/infrastracture/dto/CampusTranslator.dart';
import 'package:penmark/infrastracture/dto/DayTranslator.dart';
import 'package:penmark/infrastracture/dto/DegreeProgramTranslator.dart';
import 'package:penmark/infrastracture/dto/FacultyTranslator.dart';
import 'package:penmark/infrastracture/dto/MeLectureTranslator.dart';
import 'package:penmark/infrastracture/dto/PeriodTimeTranslator.dart';
import 'package:penmark/infrastracture/dto/SemesterTranslator.dart';
import 'package:penmark/infrastracture/dto/SexTranslator.dart';
import 'package:penmark/infrastracture/dto/UserTranslator.dart';
import 'package:test/test.dart';
import '../../helper.dart';

void main() {
  group('DTO Test', () {
    test("Campus", (){
      for(final campus in Campus.values){
        CampusTranslator().toPersistence(campus);
      }
    });

    test("Day", (){
      for(final day in Day.values){
        DayTranslator().toPersistence(day);
      }
    });

    test("DegreeProgram", (){
      for(final degree in DegreeProgram.values){
        DegreeProgramTranslator().toPersistence(degree);
      }
    });

    test("Faculty", (){
      for(final faculty in Faculty.values){
        FacultyTranslator().toPersistence(faculty);
      }
    });
    
    test("Me", (){
      final dto = ColorTranslator();
      final code = "#B5DEFC";

      final color = dto.fromPersistence(code);
      final code2 = dto.toPersistence(color);

      expect(code2, code);
    });

    test("Period Time", (){
      for(final period in PeriodTime.values){
        PeriodTimeTranslator().toPersistence(period);
      }
    });

    test("Semester", (){
      for(final semester in Semester.values){
        SemesterTranslator().toPersistence(semester);
      }
    });

    test("sex", (){
      for(final sex in Sex.values){
        SexTranslator().toPersistence(sex);
      }
    });
  });
}