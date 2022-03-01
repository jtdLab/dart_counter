import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

// TODO methods and class docs

class AuthProviderManager {
  OAuthCredential getAppleOAuthCredential({
    required String idToken,
    required String rawNonce,
  }) {
    return OAuthProvider('apple.com').credential(
      idToken: idToken,
      rawNonce: rawNonce,
    );
  }

  AuthCredential getEmailAuthCredential({
    required String email,
    required String password,
  }) {
    return EmailAuthProvider.credential(
      email: email,
      password: password,
    );
  }

  OAuthCredential getFacebookOAuthCredential({
    required AccessToken accessToken,
  }) {
    return FacebookAuthProvider.credential(accessToken.token);
  }

  OAuthCredential getGoogleOAuthCredential({
    required GoogleSignInAuthentication authentication,
  }) {
    return GoogleAuthProvider.credential(
      idToken: authentication.idToken,
      accessToken: authentication.accessToken,
    );
  }
}
