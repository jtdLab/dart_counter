import 'package:dart_counter/core/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:platform/platform.dart';

// TODO doc

@lazySingleton
class Platform extends LocalPlatform {
  const Platform();

  /// Returns instance registered inside getIt.
  factory Platform.getIt() => getIt<Platform>();
}
