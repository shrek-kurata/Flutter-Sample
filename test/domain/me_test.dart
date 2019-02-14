import 'dart:ui';

import 'package:penmark/domain/faculty.dart';
import 'package:penmark/domain/me.dart';
import 'package:test/test.dart';

import '../helper.dart';
import 'repository/InMemoryMeRepository.dart';

void main() {
  group("Me Repository", (){
    test('saving', ()async{
      final repo = InMemoryMeRepository();
      final me = await repo.fromAuth();
      me.faculty = Faculty.Bun;
      await repo.save(me);

      final me2 = await repo.fromAuth();
      expect(me2.faculty, Faculty.Bun);
    });
  });
  group("Me entity", (){
    test("lectures", () async {
      final me = sampleMe();
      await me.lectures.add(MeLecture(lecture: sampleLecture2(), color: Color(114514)));
      final repo = InMemoryMeRepository();
      await repo.save(me);
      final me2 = await repo.fromAuth();

      expect(me2.lectures.length, 2);
    });
  });
}
