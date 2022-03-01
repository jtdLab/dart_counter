import 'package:dart_counter/infrastructure/core/utils.dart';
import 'package:injectable/injectable.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

typedef GetAppleCredential = Future<AuthorizationCredentialAppleID> Function(
  String rawNonce,
);

// TODO doc
@lazySingleton
class AppleSignIn {
  final GetAppleCredential _getAppleCredential;

  AppleSignIn(
    this._getAppleCredential,
  );

  /// Constructor only for injectable.
  @factoryMethod
  factory AppleSignIn.injectable() => AppleSignIn(
        (rawNonce) => SignInWithApple.getAppleIDCredential(
          scopes: [
            AppleIDAuthorizationScopes.email,
            AppleIDAuthorizationScopes.fullName,
          ],
          nonce: rawNonce,
        ),
      );

  // TODO doc
  Future<String?> signIn({
    required String rawNonce,
  }) async {
    try {
      // To prevent replay attacks with the credential returned from Apple, we
      // include a nonce in the credential request. When signing in in with
      // Firebase, the nonce in the id token returned by Apple, is expected to
      // match the sha256 hash of `rawNonce`.

      // TODO STUCKS HERE and validates password forever + if not signed in on phone some weird stuff happens
      final result = await _getAppleCredential(rawNonce.toSha256());
      return result.identityToken;
    } catch (e) {
      return null;
    }
  }
}
