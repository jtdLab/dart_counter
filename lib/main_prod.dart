// coverage:ignore-file

import 'dart:io';

import 'package:dart_counter/bootstrap.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:dart_counter/core/logging.dart';
import 'package:dart_counter/presentation/core/app_widget/app_widget.dart';
import 'package:dart_counter/presentation/core/de_messages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:timeago/timeago.dart' as timeago;

void main() {
  bootstrap(() async {
    timeago.setLocaleMessages('de', DeMessages());

    ResponsiveSizingConfig.instance.setCustomBreakpoints(
      null,
      customRefinedBreakpoints: const RefinedBreakpoints(mobileNormal: 360),
    );

    /* await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]); */

    configureLogging();

    configureInjection({
      Environment.prod,
      if (Platform.isAndroid) EnvironmentX.android else EnvironmentX.ios
    });

    await Firebase.initializeApp();

    return const AppWidget();
  });
}
