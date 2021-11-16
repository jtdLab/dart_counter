import 'package:dart_counter/domain/training/mode.dart';
import 'package:dart_counter/domain/training/single/single_training_game_snapshot.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/infrastructure/game/status_x.dart';
import 'package:dart_counter/infrastructure/training/mode_x.dart';
import 'package:dart_counter/infrastructure/training/single/single_training_player_snapshot_dto.dart';
import 'package:dart_game/single_training_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'single_training_game_snapshot_dto.freezed.dart';

@freezed
class SingleTrainingGameSnapshotDto with _$SingleTrainingGameSnapshotDto {
  const factory SingleTrainingGameSnapshotDto({
    required String status,
    required String mode,
    required List<SingleTrainingPlayerSnapshotDto> players,
    required SingleTrainingPlayerSnapshotDto owner,
  }) = _SingleTrainingGameSnapshotDto;

  const SingleTrainingGameSnapshotDto._();

  SingleTrainingGameSnapshot toDomain() {
    return SingleTrainingGameSnapshot(
      status: StatusX.parse(status),
      mode: ModeX.parse(mode),
      players: players.map((player) => player.toDomain()).toImmutableList(),
      owner: owner.toDomain(),
    );
  }

  factory SingleTrainingGameSnapshotDto.fromExternal(ex.Game game) {
    return SingleTrainingGameSnapshotDto(
      status: game.status.toShortString(),
      mode: game.mode.toShortString(),
      players: game.players
          .map((player) => SingleTrainingPlayerSnapshotDto.fromExternal(player))
          .toList(),
      owner: SingleTrainingPlayerSnapshotDto.fromExternal(game.owner),
    );
  }
}
