import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/abstract_training_player_snapshot.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_training_player_snapshot.freezed.dart';

@freezed
class SingleTrainingPlayerSnapshot
    with _$SingleTrainingPlayerSnapshot
    implements AbstractTrainingPlayerSnapshot {
  // coverage:ignore-start
  @Implements<AbstractTrainingPlayerSnapshot>()
  const factory SingleTrainingPlayerSnapshot({
    required UniqueId id,
    String? name,
    required bool isCurrentTurn,
    required int targetValue,
    required int points,
    required int singles,
    required int doubles,
    required int triples,
    required int missed,
  }) = _SingleTrainingPlayerSnapshot;

  factory SingleTrainingPlayerSnapshot.dummy() {
    return SingleTrainingPlayerSnapshot(
      id: UniqueId.fromUniqueString(faker.randomGenerator.string(28, min: 28)),
      name: faker.person.name(),
      isCurrentTurn: faker.randomGenerator.boolean(),
      targetValue: faker.randomGenerator
          .element(List.generate(20, (index) => index + 1)),
      points: faker.randomGenerator.integer(300),
      singles: faker.randomGenerator.integer(50),
      doubles: faker.randomGenerator.integer(50),
      triples: faker.randomGenerator.integer(50),
      missed: faker.randomGenerator.integer(50),
    );
  }
  // coverage:ignore-end
}
