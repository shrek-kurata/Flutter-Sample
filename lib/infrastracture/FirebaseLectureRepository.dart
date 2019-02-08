import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:penmark/domain/lecture.dart';
import 'package:penmark/domain/repository/LectureRepository.dart';
import 'package:penmark/infrastracture/dto/LectureModifyTranslator.dart';
import 'package:penmark/infrastracture/dto/LectureTranslator.dart';

final db = Firestore.instance;

class FirebaseLectureRepository implements LectureRepository{
  @override
  Future<List<LectureModify>> cancellations(LectureId id)async {
    final collection = await db.collection("lectures").document(id.value).collection("cancellations").getDocuments();
    return List.from(collection.documents.map<LectureModify>((snap) =>  LectureModifyTranslator().fromPersistence(snap.data)));
  }

  @override
  Future<List<LectureModify>> supplements(LectureId id)async{
    final collection = await db.collection("lectures").document(id.value).collection("supplements").getDocuments();
    return List.from(collection.documents.map<LectureModify>((snap) =>  LectureModifyTranslator().fromPersistence(snap.data)));
  }


  @override
  Future<Lecture> findByID(LectureId id)async{
    final result = await db.collection("lectures").where("id", isEqualTo: id.value).getDocuments();
    return LectureTranslator().fromPersistence(result.documents.first.data);
  }

  @override
  Future<List<Lecture>> search(String query) {
    return null;
  }
}