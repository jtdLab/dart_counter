import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/training_player_snapshot.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_snapshot.freezed.dart';

@freezed
class PlayerSnapshot with _$PlayerSnapshot implements TrainingPlayerSnapshot {
  @Implements<TrainingPlayerSnapshot>()
  const factory PlayerSnapshot({
    required UniqueId id,
    String? name,
    required bool isCurrentTurn,
    required bool isFinished,
    required int targetValue,
    double? checkoutPercentage,
    required int missed,
    required int dartsThrown,
  }) = _PlayerSnapshot;

  // TODO dummy
}
