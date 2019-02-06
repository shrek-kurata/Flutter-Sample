import 'package:penmark/domain/lecture.dart';
import 'package:test/test.dart';

void main(){
  test('Lecture Id', (){
    const a = "aha";
    const id1 = LectureId(a);
    const id2 = LectureId(a);
    const id3 = LectureId("aha");

    expect(a == "aha", true);
    expect(id1 == id2, true);
    expect(id1 == id3, true);

  });
}