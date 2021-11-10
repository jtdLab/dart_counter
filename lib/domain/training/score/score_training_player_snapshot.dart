import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/abstract_training_player_snapshot.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'score_training_player_snapshot.freezed.dart';

@freezed
class ScoreTrainingPlayerSnapshot with _$ScoreTrainingPlayerSnapshot implements AbstractTrainingPlayerSnapshot {
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

  // TODO dummy
}
