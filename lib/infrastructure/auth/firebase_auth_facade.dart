import 'package:dart_counter/domain/auth/user/i_user_repository.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/profile/profile.dart';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/auth/user/user.dart';
import 'package:dart_counter/domain/auth/value_objects.dart';
import 'package:dart_counter/infrastructure/auth/firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final IUserRepository _userRepository;

  FirebaseAuthFacade(
      this._firebaseAuth, this._googleSignIn, this._userRepository);

  @override
  Future<User?> getSignedInUser() =>
      _firebaseAuth.currentUser?.toDomain() ?? Future.value(null);

  @override
  Future<Either<AuthFailure, Unit>> singUpWithEmailAndUsernameAndPassword(
      {required EmailAddress emailAddress,
      required Username username,
      required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );

      _userRepository.create(
        User(
          id: UniqueId.fromUniqueString(_firebaseAuth.currentUser!.uid),
          emailAddress: emailAddress,
          profile: Profile(
            photoUrl: null,
            username: username,
          ),
        ),
      );

      // TODO create empty careerstats etc

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> singInWithUsernameAndPassword(
      {required Username username, required Password password}) async {
    final usernameStr = username.getOrCrash();
    final userFailureUrEmailAddress =
        await _userRepository.findEmailAddressByUsername(usernameStr);

    return userFailureUrEmailAddress.fold(
      (failure) =>
          left(const AuthFailure.invalidUsernameAndPasswordCombination()),
      (emailAddress) => _signInWithEmailAndPassword(
          emailAddress: EmailAddress(emailAddress), password: password),
    );
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithFacebook() {
    // TODO: implement signInWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);

      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithInstagram() {
    // TODO: implement signInWithInstagram
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);

// TODO: throw error to caller method and catrch it ther would be cleaner
  Future<Either<AuthFailure, Unit>> _signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidUsernameAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }
}
