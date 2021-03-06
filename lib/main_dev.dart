// coverage:ignore-file

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/core/bloc_observer.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/core/app_widget/app_widget.dart';
import 'package:dart_counter/presentation/core/de_messages.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:timeago/timeago.dart' as timeago;

/// Config for mocked facades

/// toggle to simulate network/no network
const hasNetworkConnection = true; // TODO remove

Future<void> main() async {
  timeago.setLocaleMessages('de', DeMessages());
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    null,
    customRefinedBreakpoints: const RefinedBreakpoints(mobileNormal: 360),
  );
  WidgetsFlutterBinding.ensureInitialized();
  /**
   * await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
   */
  await EasyLocalization.ensureInitialized();
  configureInjection(Environment.dev);
  await Firebase.initializeApp();

  BlocOverrides.runZoned(
    () {
      runApp(AppWidget());
    },
    blocObserver: DartCounterBlocObserver(),
    eventTransformer: sequential(),
  );
}
