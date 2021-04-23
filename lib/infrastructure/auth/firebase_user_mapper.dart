import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:dart_counter/domain/auth/user.dart';
import 'package:dart_counter/domain/core/value_objects.dart';

extension FirebaseUserDomainX on firebase.User {
  User toDomain() => User(
        id: UniqueId.fromUniqueString(uid),
      );
}
