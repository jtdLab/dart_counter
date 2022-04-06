import 'package:dart_counter/core/core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

class LocaleVariant extends ValueVariant<Locale> {
  final Map<Locale, String> expectedTranslations;

  LocaleVariant(this.expectedTranslations)
      : super(AppLocalizations.supportedLocales.toSet());

  String get currentExpectedTranslation {
    if (currentValue == null) {
      throw StateError('Current value was null.');
    }

    if (expectedTranslations.containsKey(currentValue)) {
      return expectedTranslations[currentValue]!;
    }

    throw StateError('Expected value for $currentValue not found.');
  }
}
