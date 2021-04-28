// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> de = {
  "username": "Benutzername",
  "password": "Passwort",
  "signIn": "Einloggen",
  "forgotPassword": "Passwort vergessen?",
  "signUpNow": "Jetzt Registrieren",
  "email": "E-Mail",
  "passwordAgain": "Passwort wiederholen",
  "signUp": "Registriern",
  "errorCancelledByUser": "Abbruch",
  "errorServer": "Server error",
  "errorEmailAlreadyInUse": "Email-Adresse vergeben",
  "errorInvalidEmailAndPasswordCombination": "Ungültige Email-Adresse oder Passwort"
};
static const Map<String,dynamic> en = {
  "username": "Username",
  "password": "Password",
  "signIn": "Sign in",
  "forgotPassword": "Forgot password?",
  "signUpNow": "Sign up now",
  "email": "Email address",
  "passwordAgain": "Passwort again",
  "signUp": "Sign up",
  "errorCancelledByUser": "Cancelled",
  "errorServer": "Server error",
  "errorEmailAlreadyInUse": "Email already in use",
  "errorInvalidEmailAndPasswordCombination": "Invalid email and password combination"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"de": de, "en": en};
}
