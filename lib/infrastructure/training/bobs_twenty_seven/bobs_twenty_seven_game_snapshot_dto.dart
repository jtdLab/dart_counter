import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_game_snapshot.dart';
import 'package:dart_counter/infrastructure/game/status_x.dart';
import 'package:dart_counter/infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_player_snapshot_dto.dart';
import 'package:dart_counter/infrastructure/training/bobs_twenty_seven/mode_x.dart';
import 'package:dart_game/bobs_twenty_seven_training_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'bobs_twenty_seven_game_snapshot_dto.freezed.dart';

@freezed
class BobsTwentySevenGameSnapshotDto with _$BobsTwentySevenGameSnapshotDto {
  const factory BobsTwentySevenGameSnapshotDto({
    required String status,
    required String mode,
    required List<BobsTwentySevenPlayerSnapshotDto> players,
    required BobsTwentySevenPlayerSnapshotDto owner,
  }) = _BobsTwentySevenGameSnapshotDto;

  const BobsTwentySevenGameSnapshotDto._();

  BobsTwentySevenGameSnapshot toDomain() {
    return BobsTwentySevenGameSnapshot(
      status: StatusX.parse(status),
      mode: ModeX.parse(mode),
      players: players.map((player) => player.toDomain()).toImmutableList(),
      owner: owner.toDomain(),
    );
  }

  factory BobsTwentySevenGameSnapshotDto.fromExternal(ex.Game game) {
    return BobsTwentySevenGameSnapshotDto(
      status: game.status.toShortString(),
      mode: game.mode.toShortString(),
      players: game.players
          .map(
            (player) => BobsTwentySevenPlayerSnapshotDto.fromExternal(player),
          )
          .toList(),
      owner: BobsTwentySevenPlayerSnapshotDto.fromExternal(game.owner),
    );
  }
}
