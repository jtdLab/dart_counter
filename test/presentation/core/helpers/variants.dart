import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// TODO doc whole file

class LocaleVariant extends ValueVariant<Locale> {
  final ExpectedTranslations _localeToTranslation;

  LocaleVariant(this._localeToTranslation)
      : super({
          const Locale('en'),
          const Locale('de'),
        });

  String? get currentExpectedTranslation {
    final locale = currentValue;
    if (locale == null) {
      return null;
    }

    return _localeToTranslation.translation(locale);
  }
}

class ExpectedTranslations {
  final Map<Locale, String> _map;

  ExpectedTranslations({
    required String en,
    required String de,
  }) : _map = {
          const Locale('en'): en,
          const Locale('de'): de,
        };

  String translation(Locale locale) => _map[locale]!;
}

typedef WidgetTesterLocaleTranslationCallback = Future<void> Function(
  WidgetTester widgetTester,
  Locale locale,
  String expectedTranslation,
);

@isTest
void testWidgetsLocalized(
  String description,
  WidgetTesterLocaleTranslationCallback callback, {
  required ExpectedTranslations expectedTranslations,
  bool? skip,
  bool semanticsEnabled = true,
  TestVariant<Object?> variant = const DefaultTestVariant(),
  dynamic tags,
}) {
  final variant = LocaleVariant(expectedTranslations);

  testWidgets(
    description,
    (tester) => callback(
      tester,
      variant.currentValue!,
      variant.currentExpectedTranslation!,
    ),
    skip: skip,
    semanticsEnabled: semanticsEnabled,
    variant: variant,
    tags: tags,
  );
}
