import 'package:penmark/domain/lecture.dart';
import 'package:test/test.dart';

void main(){
  test('Lecture Id', (){
    final a = "aha";
    final id1 = LectureId(value: a);
    final id2 = LectureId(value: a);
    final id3 = LectureId(value: "aha");

    expect(a == "aha", true);
    expect(id1 == id2, true);
    expect(id1 == id3, true);

  });
}