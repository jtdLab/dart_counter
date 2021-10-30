import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/double/player_snapshot.dart';
import 'package:dart_game/double_training_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_snapshot_dto.freezed.dart';

@freezed
class PlayerSnapshotDto with _$PlayerSnapshotDto {
  const factory PlayerSnapshotDto({
    required String id,
    String? name,
    bool? isCurrentTurn,
    bool? isFinished,
    int? targetValue,
    double? checkoutPercentage,
    int? missed,
    int? dartsThrown,
  }) = _PlayerSnapshotDto;

  const PlayerSnapshotDto._();

  factory PlayerSnapshotDto.fromDomain(PlayerSnapshot playerSnapshot) {
    return PlayerSnapshotDto(
      id: playerSnapshot.id.getOrCrash(),
      name: playerSnapshot.name,
      isCurrentTurn: playerSnapshot.isCurrentTurn,
      isFinished: playerSnapshot.isFinished,
      targetValue: playerSnapshot.targetValue,
      checkoutPercentage: playerSnapshot.checkoutPercentage,
      missed: playerSnapshot.missed,
      dartsThrown: playerSnapshot.dartsThrown,
    );
  }

  factory PlayerSnapshotDto.fromExternal(ex.Player player) {
    return PlayerSnapshotDto(
      id: player.id,
      name: player.name,
      isCurrentTurn: player.isCurrentTurn,
      isFinished: player.isFinished,
      targetValue: player.targetValue,
      checkoutPercentage: player.checkoutPercentage,
      missed: player.missed,
      dartsThrown: player.dartsThrown,
    );
  }

  PlayerSnapshot toDomain() {
    return PlayerSnapshot(
      id: UniqueId.fromUniqueString(id),
      name: name,
      isCurrentTurn: isCurrentTurn ?? false,
      isFinished: isFinished ?? false,
      targetValue: targetValue ?? 1,
      checkoutPercentage: checkoutPercentage,
      missed: missed ?? 0,
      dartsThrown: dartsThrown ?? 0,
    );
  }
}
