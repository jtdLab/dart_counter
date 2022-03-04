import 'package:dart_counter/infrastructure/auth/core/auth_provider_manager.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mocktail/mocktail.dart';

class MockAccessToken extends Mock implements AccessToken {}

class MockGoogleSignInAuthentication extends Mock
    implements GoogleSignInAuthentication {}

void main() {
  late AuthProviderManager underTest;

  setUpAll(() {
    underTest = AuthProviderManager();
  });

  group('#Methods#', () {
    group('#getAppleOAuthCredential#', () {
      test(
          'GIVEN idToken and rawNonce '
          'THEN return OAuthCredential with providerId = "apple.com", '
          'signInMethod = "oauth", idToken = the given idToken and rawNonce = the given rawNonce.',
          () {
        // Arrange
        const idToken = 'idToken';
        const rawNonce = 'rawNonce';

        // Act
        final result = underTest.getAppleOAuthCredential(
          idToken: idToken,
          rawNonce: rawNonce,
        );

        // Assert
        expect(result.providerId, 'apple.com');
        expect(result.signInMethod, 'oauth');
        expect(result.idToken, idToken);
        expect(result.rawNonce, rawNonce);
      });
    });

    group('#getEmailAuthCredential#', () {
      test(
          'GIVEN email and password '
          'THEN return OAuthCredential with providerId = "password", '
          'signInMethod = "password", token = null.', () {
        // Arrange
        const email = 'a@b.c';
        const password = 'pw1234';

        // Act
        final result = underTest.getEmailAuthCredential(
          email: email,
          password: password,
        );

        // Assert
        expect(result.providerId, 'password');
        expect(result.signInMethod, 'password');
        expect(result.token, null);
      });
    });

    group('#getFacebookOAuthCredential#', () {
      test(
          'GIVEN accessToken with token '
          'THEN return OAuthCredential with providerId = "facebook.com", '
          'signInMethod = "facebook.com", token = null.', () {
        // Arrange
        const token = 'token';
        final accesToken = MockAccessToken();
        when(() => accesToken.token).thenReturn(token);

        // Act
        final result = underTest.getFacebookOAuthCredential(
          accessToken: accesToken,
        );

        // Assert
        expect(result.providerId, 'facebook.com');
        expect(result.signInMethod, 'facebook.com');
        expect(result.token, null);
      });
    });

    group('#getGoogleOAuthCredential#', () {
      test(
          'GIVEN authentication with idToken and accessToken '
          'THEN return OAuthCredential with providerId = "google.com", '
          'signInMethod = "google.com", token = null.', () {
        // Arrange
        const idToken = 'idToken';
        const accessToken = 'accessToken';
        final authentication = MockGoogleSignInAuthentication();
        when(() => authentication.idToken).thenReturn(idToken);
        when(() => authentication.accessToken).thenReturn(accessToken);

        // Act
        final result = underTest.getGoogleOAuthCredential(
          authentication: authentication,
        );

        // Assert
        expect(result.providerId, 'google.com');
        expect(result.signInMethod, 'google.com');
        expect(result.token, null);
      });
    });
  });
}
