import 'package:logger/logger.dart';

// TODO maybe inject into classes for better log testability

/// The apps logger.
///
/// For more info see: https://pub.dev/packages/logger
final logger = Logger(
  level: Level.nothing,
  printer: PrettyPrinter(
    methodCount: 0,
    printTime: true,
  ),
);
