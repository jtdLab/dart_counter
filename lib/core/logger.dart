import 'package:logger/logger.dart';

// TODO maybe inject into classes for better log testability

/// Global logger of this app.
final logger = Logger(
  level: Level.nothing,
  printer: PrettyPrinter(
    methodCount: 0,
    printTime: true,
  ),
);
