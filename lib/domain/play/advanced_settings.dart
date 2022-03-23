import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'advanced_settings.freezed.dart';

@freezed
class AdvancedSettings with _$AdvancedSettings {
  // coverage:ignore-start
  const factory AdvancedSettings({
    required bool showAverage,
    required bool showCheckoutPercentage,
    required bool smartKeyBoardActivated,
  }) = _AdvancedSettings;

  factory AdvancedSettings.dummy() => AdvancedSettings(
        showAverage: faker.randomGenerator.boolean(),
        showCheckoutPercentage: faker.randomGenerator.boolean(),
        smartKeyBoardActivated: faker.randomGenerator.boolean(),
      );
  // coverage:ignore-end

  factory AdvancedSettings.initial() => const AdvancedSettings(
        showAverage: true,
        showCheckoutPercentage: true,
        smartKeyBoardActivated: false,
      );
}
