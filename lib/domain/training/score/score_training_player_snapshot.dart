import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/abstract_training_player_snapshot.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'score_training_player_snapshot.freezed.dart';

@freezed
class ScoreTrainingPlayerSnapshot
    with _$ScoreTrainingPlayerSnapshot
    implements AbstractTrainingPlayerSnapshot {
  // coverage:ignore-start
  @Implements<AbstractTrainingPlayerSnapshot>()
  const factory ScoreTrainingPlayerSnapshot({
    required UniqueId id,
    String? name,
    required bool isCurrentTurn,
    required int takesLeft,
    double? average,
    required int points,
    double? firstDartAverage,
    double? secondDartAverage,
    double? thirdDartAverage,
  }) = _ScoreTrainingPlayerSnapshot;

  factory ScoreTrainingPlayerSnapshot.dummy() => ScoreTrainingPlayerSnapshot(
        id: UniqueId.fromUniqueString(faker.randomGenerator.string(10)),
        name: faker.randomGenerator.element([faker.person.firstName(), null]),
        isCurrentTurn: faker.randomGenerator.boolean(),
        takesLeft: faker.randomGenerator.integer(20),
        average: faker.randomGenerator.element([34.44, 100.20, 10.43, 56.49]),
        points: faker.randomGenerator.integer(50),
        firstDartAverage: faker.randomGenerator.element([10.54, 23.44, 18.43]),
        secondDartAverage: faker.randomGenerator.element([10.54, 23.44, 18.43]),
        thirdDartAverage: faker.randomGenerator.element([10.54, 23.44, 18.43]),
      );
  // coverage:ignore-end
}
