import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/player_snapshot.dart';
import 'package:dart_game/bobs_twenty_seven_training_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_snapshot_dto.freezed.dart';

@freezed
class PlayerSnapshotDto with _$PlayerSnapshotDto {
  const factory PlayerSnapshotDto({
    required String id,
    String? name,
    bool? isCurrentTurn,
    bool? isDisqualified,
    int? targetValue,
    double? checkoutPercentage,
    int? points,
    int? highestPoints,
  }) = _PlayerSnapshotDto;

  const PlayerSnapshotDto._();

  factory PlayerSnapshotDto.fromDomain(PlayerSnapshot playerSnapshot) {
    return PlayerSnapshotDto(
      id: playerSnapshot.id.getOrCrash(),
      name: playerSnapshot.name,
      isCurrentTurn: playerSnapshot.isCurrentTurn,
      isDisqualified: playerSnapshot.isDisqualified,
      targetValue: playerSnapshot.targetValue,
      checkoutPercentage: playerSnapshot.checkoutPercentage,
      points: playerSnapshot.points,
      highestPoints: playerSnapshot.highestPoints,
    );
  }

  factory PlayerSnapshotDto.fromExternal(ex.Player player) {
    return PlayerSnapshotDto(
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

  PlayerSnapshot toDomain() {
    return PlayerSnapshot(
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
}
