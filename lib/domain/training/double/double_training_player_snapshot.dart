import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/abstract_training_player_snapshot.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'double_training_player_snapshot.freezed.dart';

@freezed
class DoubleTrainingPlayerSnapshot
    with _$DoubleTrainingPlayerSnapshot
    implements AbstractTrainingPlayerSnapshot {
  @Implements<AbstractTrainingPlayerSnapshot>()
  const factory DoubleTrainingPlayerSnapshot({
    required UniqueId id,
    String? name,
    required bool isCurrentTurn,
    required bool isFinished,
    required int targetValue,
    double? checkoutPercentage,
    required int missed,
    required int dartsThrown,
  }) = _DoubleTrainingPlayerSnapshot;

  factory DoubleTrainingPlayerSnapshot.dummy() => DoubleTrainingPlayerSnapshot(
        id: UniqueId.fromUniqueString(faker.randomGenerator.string(10)),
        name: faker.randomGenerator.element([faker.person.firstName(), null]),
        isCurrentTurn: faker.randomGenerator.boolean(),
        isFinished: faker.randomGenerator.boolean(),
        targetValue: 1,
        checkoutPercentage:
            faker.randomGenerator.element([34.44, 100.0, 1.43, 56.49]),
        missed: faker.randomGenerator.integer(30),
        dartsThrown: faker.randomGenerator.integer(50),
      );
}
