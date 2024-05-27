import 'package:cloud_firestore/cloud_firestore.dart';

class firebase {
  final db = FirebaseFirestore.instance;

  Future fetchuser(uid) async {
    CollectionReference snapshot = await db.collection('Register');

    return snapshot.doc(uid).get();
  }
}
