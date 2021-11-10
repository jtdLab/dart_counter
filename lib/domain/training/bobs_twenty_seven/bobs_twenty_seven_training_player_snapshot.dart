import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/abstract_training_player_snapshot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bobs_twenty_seven_training_player_snapshot.freezed.dart';

@freezed
class BobsTwentySevenPlayerSnapshot with _$BobsTwentySevenPlayerSnapshot implements AbstractTrainingPlayerSnapshot {
  @Implements<AbstractTrainingPlayerSnapshot>()
  const factory BobsTwentySevenPlayerSnapshot({
    required UniqueId id,
    String? name,
    required bool isCurrentTurn,
    required bool isDisqualified,
    required int targetValue,
    required double checkoutPercentage,
    required int points,
    required int highestPoints,
  }) = _BobsTwentySevenPlayerSnapshot;

  // TODO dummy
}
