import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/core/app_bloc_observer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  final logger = Logger('Bootstrap');

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      FlutterError.onError = (details) => logger.warning(
            details.exceptionAsString(),
            details.exception,
            details.stack,
          );

      await BlocOverrides.runZoned(
        () async => runApp(await builder()),
        blocObserver: AppBlocObserver(),
        eventTransformer: sequential(),
      );
    },
    (error, stackTrace) => logger.warning(error.toString(), error, stackTrace),
  );
}
