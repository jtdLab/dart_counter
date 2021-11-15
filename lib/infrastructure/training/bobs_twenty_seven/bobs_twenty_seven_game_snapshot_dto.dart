import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/mode.dart';
import 'package:dart_counter/infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_player_snapshot_dto.dart';
import 'package:dart_game/bobs_twenty_seven_training_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'bobs_twenty_seven_game_snapshot_dto.freezed.dart';

@freezed
class BobsTwentySevenGameSnapshotDto with _$BobsTwentySevenGameSnapshotDto {
  const factory BobsTwentySevenGameSnapshotDto({
    required String status,
    required String mode,
    required KtList<BobsTwentySevenPlayerSnapshotDto> players,
    required BobsTwentySevenPlayerSnapshotDto owner,
  }) = _BobsTwentySevenGameSnapshotDto;

  const BobsTwentySevenGameSnapshotDto._();

  BobsTwentySevenGameSnapshot toDomain() {
    return BobsTwentySevenGameSnapshot(
      status: status == 'pending'
          ? Status.pending
          : status == 'running'
              ? Status.running
              : status == 'canceled'
                  ? Status.canceled
                  : Status.finished,
      mode: mode == 'easy' ? Mode.easy : Mode.hard,
      players: players.map((player) => player.toDomain()),
      owner: owner.toDomain(),
    );
  }

  factory BobsTwentySevenGameSnapshotDto.fromExternal(ex.Game game) {
    return BobsTwentySevenGameSnapshotDto(
      status: game.status == ex.Status.pending
          ? 'pending'
          : game.status == ex.Status.running
              ? 'running'
              : game.status == ex.Status.canceled
                  ? 'canceled'
                  : 'finished',
      mode: game.mode == ex.Mode.easy ? 'easy' : 'hard',
      players: game.players
          .map(
              (player) => BobsTwentySevenPlayerSnapshotDto.fromExternal(player))
          .toImmutableList(),
      owner: BobsTwentySevenPlayerSnapshotDto.fromExternal(game.owner),
    );
  }
}
