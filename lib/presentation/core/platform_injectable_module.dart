// coverage:ignore-file

import 'package:injectable/injectable.dart';
import 'package:platform/platform.dart';

/// Class used by injectable to register platform dependencies.
///
/// {@template more_information_injectable_third_party_dependencies}
/// For more information visit https://pub.dev/packages/injectable#Registering-third-party-types.
/// {@endtemplate}
@module
abstract class PlatformInjectableModule {
  @lazySingleton
  Platform get platform => const LocalPlatform();
}
