import 'package:dart_client/dart_client.dart';
import 'package:injectable/injectable.dart';
import 'package:social_client/social_client.dart';

@module
abstract class JtdInjectableModule {
  @lazySingleton
  Client get dartClient => Client(host: "localhost", port: 7777);

  @lazySingleton
  AbstractSocialClient get socialClient => SocialClient("localhost", 6969);
}
