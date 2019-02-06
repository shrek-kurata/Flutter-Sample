import 'package:penmark/domain/lecture.dart';

abstract class LectureRepository{
  Future<Lecture> findByID(LectureId id);

  Future<List<Lecture>> search(String query);
}