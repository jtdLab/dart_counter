import 'package:dart_counter/presentation/android/core/core.dart';
import 'package:flutter_test/flutter_test.dart';

extension PumpApp on WidgetTester {
  /// Wraps [widget] into testable app environment visually matching the original android app.
  ///
  /// Developer can specificy [locale]. Defaults to the first supported locale of the original app.
  Future<void> pumpApp(
    Widget widget, {
    Locale? locale,
    ThemeData? theme,
    ThemeData? darkTheme,
  }) {
    return pumpWidget(
      appWrapper(
        widget,
        locale: locale,
        theme: theme,
        darkTheme: darkTheme,
      ),
    );
  }
}

// TODO doc
MaterialApp appWrapper(
  Widget child, {
  Locale? locale,
  ThemeData? theme,
  ThemeData? darkTheme,
}) =>
    MaterialApp(
      locale: locale ?? AppLocalizations.supportedLocales.first,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: theme ?? Theme.light(),
      darkTheme: darkTheme ?? Theme.dark(),
      home: child,
    );
