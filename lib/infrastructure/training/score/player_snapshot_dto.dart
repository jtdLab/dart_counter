import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/score/player_snapshot.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_game/score_training_game.dart' as ex;

part 'player_snapshot_dto.freezed.dart';

@freezed
class PlayerSnapshotDto with _$PlayerSnapshotDto {
  const factory PlayerSnapshotDto({
    required String id,
    required String? name,
    required int? takesLeft,
    required double? average,
    required int? points,
  }) = _PlayerSnapshotDto;

  const PlayerSnapshotDto._();

  factory PlayerSnapshotDto.fromDomain(PlayerSnapshot playerSnapshot) {
    return PlayerSnapshotDto(
      id: playerSnapshot.id.getOrCrash(),
      name: playerSnapshot.name,
      takesLeft: playerSnapshot.takesLeft,
      average: playerSnapshot.average,
      points: playerSnapshot.points,
    );
  }

  factory PlayerSnapshotDto.fromExternal(ex.Player player) {
    return PlayerSnapshotDto(
      id: player.id,
      name: player.name,
      takesLeft: player.takesLeft,
      average: player.average,
      points: player.points,
    );
  }

  PlayerSnapshot toDomain() {
    return PlayerSnapshot(
      id: UniqueId.fromUniqueString(id),
      name: name,
      takesLeft: takesLeft ?? 1,
      average: average ?? 0,
      points: points ?? 0,
    );
  }
}
