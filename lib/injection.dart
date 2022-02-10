// coverage:ignore-file

import 'package:dart_counter/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

/// Create the apps dependency injection container.
///
/// For more info see: https://pub.dev/packages/get_it
final getIt = GetIt.instance;

/// Setup injectable package which generates dependency injection code.
///
/// For more info see: https://pub.dev/packages/injectable
@InjectableInit()
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}
