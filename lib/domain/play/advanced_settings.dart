import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'advanced_settings.freezed.dart';

@freezed
class AdvancedSettings with _$AdvancedSettings {
  const factory AdvancedSettings({
    required UniqueId playerId,
    required bool showAverage,
    required bool checkoutPercentage,
    required bool smartKeyBoardActivated,
  }) = _AdvancedSettings;

  factory AdvancedSettings.dummy() => AdvancedSettings(
        playerId: UniqueId.fromUniqueString(
          faker.randomGenerator.string(28, min: 28),
        ),
        showAverage: faker.randomGenerator.boolean(),
        checkoutPercentage: faker.randomGenerator.boolean(),
        smartKeyBoardActivated: faker.randomGenerator.boolean(),
      );
}
