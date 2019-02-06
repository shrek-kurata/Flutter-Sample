import 'package:penmark/domain/lecture.dart';
import 'package:penmark/domain/repository/LectureRepository.dart';

import '../../helper.dart';

class InMemoryLectureRepository extends LectureRepository{

  final sample = [ sampleLecture ];
  @override
  Future<Lecture> findByID(LectureId id)async{
    return sample.firstWhere((e) => e.id == id);
  }

  @override
  Future<List<Lecture>> search(String query)async{
    return sample;
  }
}