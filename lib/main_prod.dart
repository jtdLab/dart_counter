import 'package:dart_counter/injection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'presentation/core/app_widget/app_widget.dart';

Future<void> main() async {
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    null,
    customRefinedBreakpoints: const RefinedBreakpoints(mobileNormal: 360),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(
    AppWidget(),
  );
}
