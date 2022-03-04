import 'package:dart_counter/infrastructure/auth/core/apple_sign_in.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

void main() {
  late AppleSignIn underTest;

  group('#Methods#', () {
    group('#signIn#', () {
      test(
          'GIVEN the identityToken returned by AppleSignIn is null '
          'THEN return null.', () async {
        // Arrange
        const String? identityToken = null;
        underTest = AppleSignIn(
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
        final result = await underTest.signIn(rawNonce: 'rawNonce');

        // Assert
        expect(result, null);
      });

      test(
          'GIVEN the identityToken returned by AppleSignIn is not null '
          'THEN return the identityToken.', () async {
        // Arrange
        const identityToken = 'identityToken';
        final underTest = AppleSignIn(
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
        final result = await underTest.signIn(rawNonce: 'rawNonce');

        // Assert
        expect(result, identityToken);
      });

      test(
          'GIVEN throws error while getting the identityToken '
          'THEN throw error.', () async {
        // Arrange
        underTest = AppleSignIn((rawNonce) async => throw Error());

        // Act & Assert
        expect(
          () async => underTest.signIn(rawNonce: 'rawNonce'),
          throwsA(isA<Error>()),
        );
      });
    });
  });
}
