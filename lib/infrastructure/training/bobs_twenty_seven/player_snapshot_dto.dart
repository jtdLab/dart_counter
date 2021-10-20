import 'package:dart_counter/domain/training/bobs_twenty_seven/player_snapshot.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_game/bobs_twenty_seven_game.dart' as ex;

part 'player_snapshot_dto.freezed.dart';

@freezed
class PlayerSnapshotDto with _$PlayerSnapshotDto {
  const factory PlayerSnapshotDto({
    required String? name,
    required int? targetValue,
    required int? points,
    required int? singles,
    required int? doubles,
    required int? triples,
    required int? missed,
  }) = _PlayerSnapshotDto;

  const PlayerSnapshotDto._();

  factory PlayerSnapshotDto.fromDomain(PlayerSnapshot playerSnapshot) {
    return PlayerSnapshotDto(
      name: playerSnapshot.name,
      targetValue: playerSnapshot.targetValue,
      points: playerSnapshot.points,
      singles: playerSnapshot.singles,
      doubles: playerSnapshot.doubles,
      triples: playerSnapshot.triples,
      missed: playerSnapshot.missed,
    );
  }

// TODO
  /**
   * factory PlayerSnapshotDto.fromExternal(ex.Player player) {
    return PlayerSnapshotDto(
      name: player.name,
      targetValue: player.currentTargetValue,
      points: player.points,
      singles: player.singles,
      doubles: player.doubles,
      triples: player.triples,
      missed: player.missed,
    );
  }
   */

  PlayerSnapshot toDomain() {
    return PlayerSnapshot(
      name: name,
      targetValue: targetValue ?? 1,
      points: points ?? 0,
      singles: singles ?? 0,
      doubles: doubles ?? 0,
      triples: triples ?? 0,
      missed: missed ?? 0,
    );
  }
}
