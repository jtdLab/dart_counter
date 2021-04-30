import 'package:dart_counter/domain/auth/user/i_user_repository.dart';
import 'package:dart_counter/injection.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:dart_counter/domain/auth/user/user.dart';

extension FirebaseUserDomainX on firebase.User {
  Future<User> toDomain() async {
    final userFailureOrUser = await getIt<IUserRepository>().read();
    return userFailureOrUser.fold(
      (failure) => throw Error(), // TODO: specify error
      (user) => user,
    );
  }
}
