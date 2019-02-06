import 'package:penmark/domain/me.dart';
import 'package:penmark/domain/repository/MeRepository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

final auth = FirebaseAuth.instance;
final db = Firestore.instance;

// Type checkだけできりゃひとまずいいかな…
class FirebaseMeRepository extends MeRepository{

  //Just for Test
  login()async{
    await auth.signInWithEmailAndPassword(email: "ogiwara@keio.jp", password: "ThisIsPassword");
  }

  @override
  Future<Me> fromAuth()async{
    final user  = await auth.currentUser();
    final snap = await db.collection("user").document(user.uid).get();
    snap.data;
  }

  @override
  Future save(Me me) {
    // TODO: implement save
    return null;
  }

}