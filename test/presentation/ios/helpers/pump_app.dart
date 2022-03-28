import 'package:dart_counter/presentation/ios/app.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:flutter_test/flutter_test.dart';

extension PumpApp on WidgetTester {
  // TODO doc
  /// Wraps [widget] into [CupertinoApp] and pumps it.
  ///
  /// Developer can specificy [locale]. Defaults to the first supported locale of the original app.
  ///
  /// The theme of the original app is used.
  Future<void> pumpApp(Widget widget, [Locale? locale]) {
    return pumpWidget(App());
  }
}
