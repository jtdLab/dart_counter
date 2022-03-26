// coverage:ignore-file

import 'package:dart_counter/core/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

/// The apps dependency injection container.
///
/// For more info see: https://pub.dev/packages/get_it
final getIt = GetIt.instance;

/// Setup injectable package which generates dependency injection code.
///
/// For more info see: https://pub.dev/packages/injectable
@InjectableInit()
void configureInjection(Set<String> envs) {
  $initGetIt(getIt, environmentFilter: NoEnvOrContainsAny(envs));
}

// Platform-based environments.
//
// Used for dependencies that should only be registered in the dependency injection container
// when the app runs on specific platform.
extension EnvironmentX on Environment {
  /// platform env name 'android'
  static const android = 'android';

  /// platform env name 'ios'
  static const ios = 'ios';
}

/// instance of platform env 'android'
const Environment android = Environment(EnvironmentX.android);

/// instance of platform env 'ios'
const Environment ios = Environment(EnvironmentX.ios);
