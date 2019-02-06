import 'dart:ui';

import 'package:penmark/domain/faculty.dart';
import 'package:penmark/domain/me.dart';
import 'package:penmark/domain/repository/MeRepository.dart';
import 'package:penmark/domain/repository/NewsRepository.dart';
import 'package:test/test.dart';
import 'package:rxdart/rxdart.dart';

import '../helper.dart';
import 'repository/InMemoryMeRepository.dart';

void main() {
  group("Me Repository", (){
    test('saving', ()async{
      final repo = InMemoryMeRepository();
      final me = await repo.fromAuth();
      me.updateFaculty(Faculty.Bun);
      await repo.save(me);

      final me2 = await repo.fromAuth();
      expect(me2.faculty, Faculty.Bun);
    });
  });
  group("Me entity", (){
    test("lectures", () async {
      final me = sampleMe();
      me.addLecture(MeLecture(lecture: sampleLecture2(), color: Color(114514)));


    });
  });
}
