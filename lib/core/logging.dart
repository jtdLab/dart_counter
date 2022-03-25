import 'dart:developer';

import 'package:logging/logging.dart';

void configureLogging([Level level = Level.ALL]) {
  Logger.root.level = level;
  Logger.root.onRecord.listen((record) {
    log(
      '[${record.loggerName}] ${record.level.name}: ${record.time}: ${record.message}',
      stackTrace: record.stackTrace,
    );
  });
}
