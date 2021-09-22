import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:dart_client/dart_client.dart';
import 'package:social_client/social_client.dart';

@module
abstract class JtdInjectableModule {
  @lazySingleton
  DartClient get dartClient => DartClient(host: "localhost", port: 7777);

  @lazySingleton
  SocialClient get socialClient => SocialClient(host: "localhost", port: 7777);

  @lazySingleton
  Connectivity get connectivity => Connectivity();
}
