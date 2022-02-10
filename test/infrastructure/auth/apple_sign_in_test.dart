import 'package:dart_counter/infrastructure/auth/apple_sign_in.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

void main() {
  group('signIn', () {
    test(
        'GIVEN the identityToken returned by AppleSignIn is null '
        'THEN return null.', () async {
      // Arrange
      const String? identityToken = null;
      final appleSignIn = AppleSignIn(
        (rawNonce) async => const AuthorizationCredentialAppleID(
          userIdentifier: null,
          givenName: null,
          familyName: null,
          authorizationCode: 'code',
          email: null,
          identityToken: identityToken,
          state: null,
        ),
      );

      // Act
      final underTest = await appleSignIn.signIn(rawNonce: 'rawNonce');

      // Assert
      expect(underTest, null);
    });

    test(
        'GIVEN the identityToken returned by AppleSignIn is not null '
        'THEN return the identityToken.', () async {
      // Arrange
      const identityToken = 'identityToken';
      final appleSignIn = AppleSignIn(
        (rawNonce) async => const AuthorizationCredentialAppleID(
          userIdentifier: null,
          givenName: null,
          familyName: null,
          authorizationCode: 'code',
          email: null,
          identityToken: identityToken,
          state: null,
        ),
      );

      // Act
      final underTest = await appleSignIn.signIn(rawNonce: 'rawNonce');

      // Assert
      expect(underTest, identityToken);
    });

    test(
        'GIVEN AppleSignIn throws while getting the identityToken is not null '
        'THEN return null.', () async {
      // Arrange
      final appleSignIn = AppleSignIn((rawNonce) async => throw Error());

      // Act
      final underTest = await appleSignIn.signIn(rawNonce: 'rawNonce');

      // Assert
      expect(underTest, null);
    });
  });
}
