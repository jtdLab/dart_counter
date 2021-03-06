// coverage:ignore-file

import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/core/app_widget/app_widget.dart';
import 'package:dart_counter/presentation/core/de_messages.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:timeago/timeago.dart' as timeago;

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
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(
    AppWidget(),
  );
}
