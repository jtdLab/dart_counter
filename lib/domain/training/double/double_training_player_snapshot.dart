import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/abstract_training_player_snapshot.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'double_training_player_snapshot.freezed.dart';

@freezed
class DoubleTrainingPlayerSnapshot with _$DoubleTrainingPlayerSnapshot implements AbstractTrainingPlayerSnapshot {
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

  // TODO dummy
}
