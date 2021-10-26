import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/training_player_snapshot.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_snapshot.freezed.dart';

@freezed
class PlayerSnapshot with _$PlayerSnapshot implements TrainingPlayerSnapshot {
  @Implements(TrainingPlayerSnapshot)
  const factory PlayerSnapshot({
    required UniqueId id,
    required String? name,
    required bool isCurrentTurn,
    required int targetValue,
    required int points,
    required int singles,
    required int doubles,
    required int triples,
    required int missed,
  }) = _PlayerSnapshot;

  factory PlayerSnapshot.initial({
    String? username,
  }) {
    return PlayerSnapshot(
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

  factory PlayerSnapshot.dummy() {
    return PlayerSnapshot(
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
