import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/injection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final id = getIt<FirebaseAuth>().currentUser?.uid;
    if (id == null) throw NotAuthenticatedError();
    return FirebaseFirestore.instance.collection('users').doc(id);
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get friendRequestsCollection =>
      collection('friendRequests');
  CollectionReference get gameInvitationsCollection =>
      collection('gameInvitations');
}

class ServerTimestampConverter implements JsonConverter<FieldValue?, Object?> {
  const ServerTimestampConverter();

  @override
  FieldValue? fromJson(Object? json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object? toJson(FieldValue? fieldValue) =>
      fieldValue ?? FieldValue.serverTimestamp();
}
