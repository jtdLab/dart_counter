import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:flutter_test/flutter_test.dart';

import 'app_wrapper.dart';

extension PumpApp on WidgetTester {
  // TODO doc
  /// Wraps [widget] into testable app environment.
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
