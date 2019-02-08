import 'package:penmark/domain/me.dart';
import 'package:penmark/domain/repository/MeRepository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:penmark/infrastracture/dto/MeLectureTranslator.dart';
import 'package:penmark/infrastracture/dto/UserTranslator.dart';

final auth = FirebaseAuth.instance;
final db = Firestore.instance;

// Type checkだけできりゃひとまずいいかな…
class FirebaseMeRepository extends MeRepository{

  //Just for Test
  Future<void> login()async{
    await auth.signInWithEmailAndPassword(email: "ogiwara@keio.jp", password: "ThisIsPassword");
  }

  @override
  Future<Me> fromAuth()async{
    final _user  = await auth.currentUser();
    final snap = await db.collection("user").document(_user.uid).get();
    final dto = UserTranslator();
    final user = dto.fromPersistence(snap.data);
    final collection = await db.collection("user").document(_user.uid).collection("lectures").getDocuments();
    final meLectures = collection.documents.map((snap) => snap.data).map((map) => MeLectureTranslator().fromPersistence(map));

    //TODO Apply lecture detail stream
    return Me.fromUser(user, List.from(meLectures));
  }

  @override
  Future save(Me me) {
    // TODO: implement save
    return null;
  }

}