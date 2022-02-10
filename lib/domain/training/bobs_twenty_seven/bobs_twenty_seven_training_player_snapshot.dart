import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/abstract_training_player_snapshot.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bobs_twenty_seven_training_player_snapshot.freezed.dart';

@freezed
class BobsTwentySevenPlayerSnapshot
    with _$BobsTwentySevenPlayerSnapshot
    implements AbstractTrainingPlayerSnapshot {
  // coverage:ignore-start
  @Implements<AbstractTrainingPlayerSnapshot>()
  const factory BobsTwentySevenPlayerSnapshot({
    required UniqueId id,
    String? name,
    required bool isCurrentTurn,
    required bool isDisqualified,
    required int targetValue,
    double? checkoutPercentage,
    required int points,
    required int highestPoints,
  }) = _BobsTwentySevenPlayerSnapshot;

  factory BobsTwentySevenPlayerSnapshot.dummy() =>
      BobsTwentySevenPlayerSnapshot(
        id: UniqueId.fromUniqueString(faker.randomGenerator.string(10)),
        name: faker.randomGenerator.element([faker.person.firstName(), null]),
        isCurrentTurn: faker.randomGenerator.boolean(),
        isDisqualified: faker.randomGenerator.boolean(),
        targetValue: 1,
        checkoutPercentage:
            faker.randomGenerator.element([34.44, 100.0, 1.43, 56.49]),
        points: faker.randomGenerator.integer(50),
        highestPoints: faker.randomGenerator.integer(50, min: 27),
      );
  // coverage:ignore-end
}
