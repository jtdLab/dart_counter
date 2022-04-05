import 'package:dart_counter/core/core.dart';
import 'package:flutter_test/flutter_test.dart';

class LocaleVariant extends ValueVariant {
  LocaleVariant() : super(AppLocalizations.supportedLocales.toSet());
}
