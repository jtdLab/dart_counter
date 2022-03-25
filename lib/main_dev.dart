// coverage:ignore-file

import 'dart:async';

import 'package:dart_counter/bootstrap.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:dart_counter/presentation/core/app_widget/app_widget.dart';
import 'package:dart_counter/presentation/core/de_messages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:timeago/timeago.dart' as timeago;

// TODO read https://docs.flutter.dev/testing/errors
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

    configureInjection(Environment.dev);
    await Firebase.initializeApp();

    return const AppWidget();
  });
}
