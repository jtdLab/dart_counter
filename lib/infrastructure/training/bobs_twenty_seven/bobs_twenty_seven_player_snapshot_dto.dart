import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_player_snapshot.dart';
import 'package:dart_game/bobs_twenty_seven_training_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bobs_twenty_seven_player_snapshot_dto.freezed.dart';

@freezed
class BobsTwentySevenPlayerSnapshotDto with _$BobsTwentySevenPlayerSnapshotDto {
  const factory BobsTwentySevenPlayerSnapshotDto({
    required String id,
    String? name,
    bool? isCurrentTurn,
    bool? isDisqualified,
    int? targetValue,
    double? checkoutPercentage,
    int? points,
    int? highestPoints,
  }) = _BobsTwentySevenPlayerSnapshotDto;

  const BobsTwentySevenPlayerSnapshotDto._();

  BobsTwentySevenPlayerSnapshot toDomain() {
    return BobsTwentySevenPlayerSnapshot(
      id: UniqueId.fromUniqueString(id),
      name: name,
      isCurrentTurn: isCurrentTurn ?? false,
      isDisqualified: isDisqualified ?? false,
      targetValue: targetValue ?? 1,
      checkoutPercentage: checkoutPercentage ?? 0,
      points: points ?? 0,
      highestPoints: highestPoints ?? 27,
    );
  }

  factory BobsTwentySevenPlayerSnapshotDto.fromExternal(ex.Player player) {
    return BobsTwentySevenPlayerSnapshotDto(
      id: player.id,
      name: player.name,
      isCurrentTurn: player.isCurrentTurn,
      isDisqualified: player.isDisqualified,
      targetValue: player.targetValue,
      checkoutPercentage: player.checkoutPercentage,
      points: player.points,
      highestPoints: player.highestPoints,
    );
  }
}
