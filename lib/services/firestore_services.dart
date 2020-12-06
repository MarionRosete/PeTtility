import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:PETtility2/models/users.dart';

class FirestoreServices {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUsers(Users users) {
    return _db.collection('Users').doc(users.userID).set(users.toMap());
  }

  Stream<List<Users>> getUsers() {
    return _db.collection('Users').snapshots().map((snapshot) => snapshot.docs
        .map((document) => Users.fromFirestore(document.data()))
        .toList());
  }
}
