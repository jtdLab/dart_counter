import 'package:logger/logger.dart';

/// Global logger of this app.
final logger = Logger(
  level: Level.debug,
  printer: PrettyPrinter(
    methodCount: 0,
    printTime: true,
  ),
);
