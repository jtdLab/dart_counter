import 'package:dart_client/dart_client.dart';
import 'package:injectable/injectable.dart';
import 'package:social_client/social_client.dart';

@module
abstract class JtdInjectableModule {
  @lazySingleton
  DartClient get dartClient => DartClient("localhost", 7777);

  @lazySingleton
  SocialClient get socialClient => SocialClient("localhost", 7778);
}