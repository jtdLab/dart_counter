import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/single/player_snapshot.dart';
import 'package:dart_game/single_training_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_snapshot_dto.freezed.dart';

@freezed
class PlayerSnapshotDto with _$PlayerSnapshotDto {
  const factory PlayerSnapshotDto({
    required String id,
    String? name,
    bool? isCurrentTurn,
    int? targetValue,
    int? points,
    int? singles,
    int? doubles,
    int? triples,
    int? missed,
  }) = _PlayerSnapshotDto;

  const PlayerSnapshotDto._();

  factory PlayerSnapshotDto.fromDomain(PlayerSnapshot playerSnapshot) {
    return PlayerSnapshotDto(
      id: playerSnapshot.id.getOrCrash(),
      name: playerSnapshot.name,
      isCurrentTurn: playerSnapshot.isCurrentTurn,
      targetValue: playerSnapshot.targetValue,
      points: playerSnapshot.points,
      singles: playerSnapshot.singles,
      doubles: playerSnapshot.doubles,
      triples: playerSnapshot.triples,
      missed: playerSnapshot.missed,
    );
  }

  factory PlayerSnapshotDto.fromExternal(ex.Player player) {
    return PlayerSnapshotDto(
      id: player.id,
      name: player.name,
      isCurrentTurn: player.isCurrentTurn,
      targetValue: player.targetValue,
      points: player.points,
      singles: player.singles,
      doubles: player.doubles,
      triples: player.triples,
      missed: player.missed,
    );
  }

  PlayerSnapshot toDomain() {
    return PlayerSnapshot(
      id: UniqueId.fromUniqueString(id),
      name: name,
      isCurrentTurn: isCurrentTurn ?? false,
      targetValue: targetValue ?? 1,
      points: points ?? 0,
      singles: singles ?? 0,
      doubles: doubles ?? 0,
      triples: triples ?? 0,
      missed: missed ?? 0,
    );
  }
}
