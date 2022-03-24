import 'dart:async';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  await loadAppFonts();
  return testMain();
}

/// A opinionated set of iPhones for testing.
final List<Device> iPhones = [
  const Device(size: Size(320, 568), name: 'iPhone SE 1st'),
  const Device(size: Size(375, 667), name: 'iPhone 8'),
  const Device(size: Size(414, 896), name: 'iPhone 11'),
  const Device(size: Size(428, 926), name: 'iPhone 13 Pro Max'),
];

/// Embedds [widget] into [CupertinoApp] for testing.
///
/// Developer can specificy [locale]. Defaults to the first supported locale of the original app.
///
/// The theme of the original app is used.
Widget cupertinoAppWrapper(Widget widget, [Locale? locale]) {
  return Builder(
    builder: (context) {
      return CupertinoApp(
        // TODO cleanr theme sharing from orignial app
        theme: CupertinoThemeData(
          textTheme: CupertinoTextThemeData(
            textStyle: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: maxFontSizeNormal(context),
              color: AppColors.black,
              fontFamily: 'SF-Pro',
            ),
          ),
        ),
        home: Localizations(
          delegates: AppLocalizations.localizationsDelegates,
          locale: locale ?? AppLocalizations.supportedLocales.first,
          child: widget,
        ),
      );
    },
  );
}
