import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';
import 'presentation/core/app_widget.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  configureInjection(env);
  await Firebase.initializeApp();
  if (env == Environment.dev) {
    runApp(
      DevicePreview(
        builder: (context) => AppWidget(),
      ),
    );
  } else if (env == Environment.prod) {
    runApp(
      DevicePreview(
        enabled: false,
        builder: (context) => AppWidget(),
      ),
    );
  } else {
    throw Error();
  }
}
