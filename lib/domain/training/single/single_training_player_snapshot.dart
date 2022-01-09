import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/abstract_training_player_snapshot.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_training_player_snapshot.freezed.dart';

@freezed
class SingleTrainingPlayerSnapshot
    with _$SingleTrainingPlayerSnapshot
    implements AbstractTrainingPlayerSnapshot {
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

  // TODO needed remove pls
  factory SingleTrainingPlayerSnapshot.initial({
    String? username,
  }) {
    return SingleTrainingPlayerSnapshot(
      id: UniqueId.fromUniqueString(faker.randomGenerator.string(28, min: 28)),
      name: username,
      isCurrentTurn: false,
      targetValue: 1,
      points: 0,
      singles: 0,
      doubles: 0,
      triples: 0,
      missed: 0,
    );
  }

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
}
