import 'package:dart_counter/infrastructure/auth/core/auth_provider_manager.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mocktail/mocktail.dart';

class MockAccessToken extends Mock implements AccessToken {}

class MockGoogleSignInAuthentication extends Mock
    implements GoogleSignInAuthentication {}

void main() {
  late AuthProviderManager authProviderManager;

  setUpAll(() {
    authProviderManager = AuthProviderManager();
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
        final underTest = authProviderManager.getAppleOAuthCredential(
          idToken: idToken,
          rawNonce: rawNonce,
        );

        // Assert
        expect(underTest.providerId, 'apple.com');
        expect(underTest.signInMethod, 'oauth');
        expect(underTest.idToken, idToken);
        expect(underTest.rawNonce, rawNonce);
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
        final underTest = authProviderManager.getEmailAuthCredential(
          email: email,
          password: password,
        );

        // Assert
        expect(underTest.providerId, 'password');
        expect(underTest.signInMethod, 'password');
        expect(underTest.token, null);
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
        final underTest = authProviderManager.getFacebookOAuthCredential(
          accessToken: accesToken,
        );

        // Assert
        expect(underTest.providerId, 'facebook.com');
        expect(underTest.signInMethod, 'facebook.com');
        expect(underTest.token, null);
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
        final underTest = authProviderManager.getGoogleOAuthCredential(
          authentication: authentication,
        );

        // Assert
        expect(underTest.providerId, 'google.com');
        expect(underTest.signInMethod, 'google.com');
        expect(underTest.token, null);
      });
    });
  });
}
