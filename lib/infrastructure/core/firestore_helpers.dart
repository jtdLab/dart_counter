import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/injection.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final id = getIt<FirebaseAuth>().currentUser?.uid;
    if (id == null) throw NotAuthenticatedError();
    return FirebaseFirestore.instance.collection('users').doc(id);
  }

  Future<CollectionReference> usersCollection() async {
    return FirebaseFirestore.instance.collection('users');
  }
}
