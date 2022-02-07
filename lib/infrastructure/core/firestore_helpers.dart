import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/injection.dart';

/// App specific extensions on firebase firestore
extension FirestoreX on FirebaseFirestore {
  /// Returns a reference to the user document of the app-user.
  ///
  /// Throws [NotAuthenticatedError] if app user is not signed in.
  DocumentReference userDocument() {
    final uid = getIt<IAuthService>().userId();

    if (uid == null) {
      throw NotAuthenticatedError();
    } else {
      return getIt<FirebaseFirestore>()
          .collection('users')
          .doc(uid.getOrCrash());
    }
  }

  /// Returns a reference to the gameHistoryOffline collection of the app-user.
  ///
  /// Throws [NotAuthenticatedError] if app user is not signed in.
  CollectionReference gameHistoryOfflineCollection() {
    try {
      return userDocument().collection('gameHistoryOffline');
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a reference to the receivedGameInvitations collection of the app-user.
  ///
  /// Throws [NotAuthenticatedError] if app user is not signed in.
  CollectionReference receivedGameInvitationsCollection() {
    try {
      return userDocument().collection('receivedGameInvitations');
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a reference to the sentGameInvitations collection of the app-user.
  ///
  /// Throws [NotAuthenticatedError] if app user is not signed in.
  CollectionReference sentGameInvitationsCollection() {
    try {
      return userDocument().collection('sentGameInvitations');
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a reference to the receivedFriendRequests collection of the app-user.
  ///
  /// Throws [NotAuthenticatedError] if app user is not signed in.
  CollectionReference receivedFriendRequestsCollection() {
    try {
      return userDocument().collection('receivedFriendRequests');
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a reference to the sentFriendRequests collection of the app-user.
  ///
  /// Throws [NotAuthenticatedError] if app user is not signed in.
  CollectionReference sentFriendRequestsCollection() {
    try {
      return userDocument().collection('sentFriendRequests');
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a reference to the gameHistoryOnline collection of the user with [uid].
  CollectionReference gameHistoryOnlineCollection({
    required String uid,
  }) {
    return getIt<FirebaseFirestore>()
        .collection('users')
        .doc(uid)
        .collection('gameHistoryOnline');
  }

  /// Returns a reference to the profiles collection.
  CollectionReference profilesCollection() {
    return getIt<FirebaseFirestore>().collection('profiles');
  }
}

// TODO keep or remove
/**
 * /// Helps dealing with firestore timestamps.
// TODO more doc
class ServerTimestampConverter implements JsonConverter<String?, Object?> {
  const ServerTimestampConverter();

  @override
  String? fromJson(Object? json) {
    if (json == null) {
      return null;
    }
    final map = json as Map<String, dynamic>;
    return map['createdAt'] as String;
    //return FieldValue.serverTimestamp(); // TODO
  }

  @override
  Object? toJson(_) => FieldValue.serverTimestamp();
}

 */