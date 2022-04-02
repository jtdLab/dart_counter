import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:flutter_test/flutter_test.dart';

extension PumpApp on WidgetTester {
  /// Wraps [widget] into testable app environment close to the original ios app.
  ///
  /// Developer can specificy [locale]. Defaults to the first supported locale of the original app.
  Future<void> pumpApp(
    Widget widget, [
    Locale? locale,
    CupertinoThemeData? theme,
  ]) {
    return pumpWidget(
      appWrapper(
        widget,
        locale: locale,
        theme: theme,
      ),
    );
  }
}

// TODO doc
Widget appWrapper(
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
