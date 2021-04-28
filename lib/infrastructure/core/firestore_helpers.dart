import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/auth/user.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final User? user = await getIt<IAuthFacade>().getSignedInUser();
    if (user == null) throw NotAuthenticatedError();
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  //CollectionReference get noteCollection => collection('users');
  //// TODO: add references
}
