import 'package:dart_counter/infrastructure/core/utils.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

typedef GetAppleCredential = Future<AuthorizationCredentialAppleID> Function(
  String rawNonce,
);

// TODO doc
class AppleSignIn {
  final GetAppleCredential _getAppleCredential;

  AppleSignIn(this._getAppleCredential);

  // TODO doc
  Future<String?> signIn({
    required String rawNonce,
  }) async {
    // To prevent replay attacks with the credential returned from Apple, we
    // include a nonce in the credential request. When signing in in with
    // Firebase, the nonce in the id token returned by Apple, is expected to
    // match the sha256 hash of `rawNonce`.

    final result = await _getAppleCredential(rawNonce.toSha256());
    return result.identityToken;
  }
}
