import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/training_player_snapshot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_snapshot.freezed.dart';

@freezed
class PlayerSnapshot with _$PlayerSnapshot implements TrainingPlayerSnapshot {
  @Implements<TrainingPlayerSnapshot>()
  const factory PlayerSnapshot({
    required UniqueId id,
    String? name,
    required bool isCurrentTurn,
    required bool isDisqualified,
    required int targetValue,
    required double checkoutPercentage,
    required int points,
    required int highestPoints,
  }) = _PlayerSnapshot;

  // TODO dummy
}
