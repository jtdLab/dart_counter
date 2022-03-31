import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/core/app_bloc_observer.dart';
import 'package:dart_counter/presentation/core/app_toast.dart';
import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';

import 'presentation/core/core.dart';

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
        () async {
          final app = await builder();
          runApp(
            MultiProvider(
              providers: [
                Provider.value(value: Platform.getIt()),
                Provider.value(value: AppToast.getIt()),
              ],
              child: app,
            ),
          );
        },
        blocObserver: AppBlocObserver(),
        eventTransformer: sequential(),
      );
    },
    (error, stackTrace) => logger.warning(error.toString(), error, stackTrace),
  );
}
