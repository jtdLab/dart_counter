import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:flutter_test/flutter_test.dart';

// TODO doc
CupertinoApp appWrapper(
  Widget child, {
  Locale? locale,
  CupertinoThemeData? theme,
}) =>
    CupertinoApp(
      locale: locale ?? AppLocalizations.supportedLocales.first,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: theme ?? Theme.theme(),
      home: child,
    );
