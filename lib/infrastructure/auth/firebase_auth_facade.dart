import 'dart:convert';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto/crypto.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/domain/user/profile.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/infrastructure/friend/friend_request_dto.dart';
import 'package:dart_counter/infrastructure/game_invitation/game_invitation_dto.dart';
import 'package:dart_counter/infrastructure/user/user_dto.dart';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';

@Environment(Environment.prod)
@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firebaseFirestore;

  FirebaseAuthFacade(
      this._firebaseAuth, this._googleSignIn, this._firebaseFirestore);

  @override
  UniqueId? getSignedInUid() {
    final uidString = _firebaseAuth.currentUser?.uid;
    if (uidString == null) {
      return null;
    }
    return UniqueId.fromUniqueString(uidString);
  }

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

      final userDoc = await _firebaseFirestore.userDocument();
      final user = User(
        id: UniqueId.fromUniqueString(_firebaseAuth.currentUser!.uid),
        emailAddress: emailAddress,
        profile: Profile(
          username: username,
        ),
        careerStatsOnline: CareerStats.initial(),
        careerStatsOffline: CareerStats.initial(),
        gameHistoryOnline: List10.empty(),
        gameHistoryOffline: List10.empty(),
      );

      await userDoc.set(UserDto.fromDomain(user).toJson());
      await userDoc.gameInvitationsCollection
          .add(GameInvitationDto.fromDomain(GameInvitation.dummy()).toJson());

      await userDoc.friendRequestsCollection
          .add(FriendRequestDto.fromDomain(FriendRequest.dummy()).toJson());

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
  Future<Either<AuthFailure, Unit>> singInWithEmailAndPassword(
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
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithFacebook() async {
    try {
      // Trigger the sign-in flow
      final LoginResult result =
          await FacebookAuth.instance.login(); // TODO: CRASH HERE
      final AccessToken? accessToken = result.accessToken;
      if (accessToken == null) {
        return left(const AuthFailure.serverError()); // TODO specify
      }
      // Create a credential from the access token
      final facebookAuthCredential =
          FacebookAuthProvider.credential(accessToken.token);

      // Once signed in, return the UserCredential
      await _firebaseAuth.signInWithCredential(facebookAuthCredential);

      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError()); // TODO specify
    }
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
      return left(const AuthFailure.serverError()); // TODO specify
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithApple() async {
    try {
// To prevent replay attacks with the credential returned from Apple, we
      // include a nonce in the credential request. When signing in in with
      // Firebase, the nonce in the id token returned by Apple, is expected to
      // match the sha256 hash of `rawNonce`.
      final rawNonce = _generateNonce();
      final nonce = _sha256ofString(rawNonce);

      // Request credential for the currently signed in Apple account.
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        nonce: nonce,
      );

      // Create an `OAuthCredential` from the credential returned by Apple.
      final oauthCredential = OAuthProvider("apple.com").credential(
        idToken: appleCredential.identityToken,
        rawNonce: rawNonce,
      );

      // Sign in the user with Firebase. If the nonce we generated earlier does
      // not match the nonce in `appleCredential.identityToken`, sign in will fail.
      await FirebaseAuth.instance.signInWithCredential(oauthCredential);
      return right(unit);
    } on FirebaseAuthException {
      return left(const AuthFailure.serverError()); // TODO specify
    }
  }

  @override
  Future<void> signOut() => Future.wait(
        [
          _googleSignIn.signOut(),
          _firebaseAuth.signOut(),
        ],
      );

// TODO error handling
  @override
  Future<Either<AuthFailure, Unit>> updateEmailAddress(
      {required EmailAddress oldEmailAddress,
      required EmailAddress newEmailAddress}) async {
    final oldEmailAddressValid = oldEmailAddress.isValid();
    final newEmailAddressValid = oldEmailAddress.isValid();
    final emailAdressesNotEqual = oldEmailAddress != newEmailAddress;

    if (oldEmailAddressValid && newEmailAddressValid) {
      if (emailAdressesNotEqual) {
        final user = _firebaseAuth.currentUser;
        if (user == null) {
          return left(const AuthFailure.serverError());
          // TODO not auth error
        }

        try {
          await user.updateEmail(newEmailAddress.getOrCrash());
          return right(unit);
        } on FirebaseAuthException {
          // TODO
        }
      } else {
        // TODO return can not update email to current mail
      }
    } else {
      // return invalid email

    }
    return left(const AuthFailure.serverError());
  }

  @override
  Future<Either<AuthFailure, Unit>> updatePassword(
      {required Password oldPassword, required Password newPassword}) {
    throw UnimplementedError(); // TODO: implement
  }

  @override
  Future<Either<AuthFailure, Unit>> resetPassword(
      {required EmailAddress emailAddress}) async {
    final emailAddressIsValid = emailAddress.isValid();

    if (emailAddressIsValid) {
      await _firebaseAuth.sendPasswordResetEmail(
          email: emailAddress.getOrCrash());
      return Future.value(right(unit));
    } else {
      return Future.value(
        left(const AuthFailure.invalidEmailAndPasswordCombination()),
      );
    }
  }

  /// Generates a cryptographically secure random nonce, to be included in a
  /// credential request.
  String _generateNonce([int length = 32]) {
    const charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)])
        .join();
  }

  /// Returns the sha256 hash of [input] in hex notation.
  String _sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }
}
