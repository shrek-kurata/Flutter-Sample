import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:penmark/domain/lecture.dart';
import 'package:penmark/domain/repository/LectureRepository.dart';

final db = Firestore.instance;

class FirebaseLectureRepository implements LectureRepository{
  @override
  Future<List<LectureModify>> cancellations(LectureId id)async {
    final collection = await db.collection("lectures").document(id.value).collection("cancellations").getDocuments();
    collection.documents.map((snap) => snap.data);
  }

  @override
  Future<List<LectureModify>> supplements(LectureId id) {
    // TODO: implement supplements
    return null;
  }


  @override
  Future<Lecture> findByID(LectureId id) {
    // TODO: implement findByID
    return null;
  }

  @override
  Future<List<Lecture>> search(String query) {
    // TODO: implement search
    return null;
  }
}