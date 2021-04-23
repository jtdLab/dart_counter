import 'package:dart_counter/presentation/android/core/app_widget_android.dart';
import 'package:dart_counter/presentation/core/platform_widget.dart';
import 'package:dart_counter/presentation/ios/core/app_widget_ios.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('de'),
      ],
      fallbackLocale: const Locale('en'),
      path: 'assets/languages',
      child: PlatformWidget(
        android: (context) => AppWidgetAndroid(),
        ios: (context) => AppWidgetIos(),
      ),
    );
  }
}