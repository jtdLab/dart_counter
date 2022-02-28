import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dart_client/dart_client.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:social_client/social_client.dart';

/// Class used by injectable to register third party dependencies.
///
/// {@macro more_information_injectable_third_party_dependencies}
@module
abstract class JtdInjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();

  @lazySingleton
  FacebookAuth get facebookAuth => FacebookAuth.instance;

  @lazySingleton
  DartClient get dartClient => DartClient(host: "localhost", port: 7777);

  @lazySingleton
  SocialClient get socialClient => SocialClient(host: "localhost", port: 7777);

  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  ImagePicker get imagePicker => ImagePicker();

  @lazySingleton
  DefaultCacheManager get cache => DefaultCacheManager();
}
