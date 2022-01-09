import 'package:dart_counter/domain/training/double/double_training_game_snapshot.dart';
import 'package:dart_counter/infrastructure/game/status_x.dart';
import 'package:dart_counter/infrastructure/training/double/double_training_player_snapshot_dto.dart';
import 'package:dart_counter/infrastructure/training/mode_x.dart';
import 'package:dart_game/double_training_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'double_training_game_snapshot_dto.freezed.dart';

@freezed
class DoubleTrainingGameSnapshotDto with _$DoubleTrainingGameSnapshotDto {
  const factory DoubleTrainingGameSnapshotDto({
    required String status,
    required String mode,
    required List<DoubleTrainingPlayerSnapshotDto> players,
    required DoubleTrainingPlayerSnapshotDto owner,
  }) = _DoubleTrainingGameSnapshotDto;

  const DoubleTrainingGameSnapshotDto._();

  DoubleTrainingGameSnapshot toDomain() {
    return DoubleTrainingGameSnapshot(
      status: StatusX.parse(status),
      mode: ModeX.parse(mode),
      players: players.map((player) => player.toDomain()).toImmutableList(),
      owner: owner.toDomain(),
    );
  }

  factory DoubleTrainingGameSnapshotDto.fromExternal(ex.Game game) {
    return DoubleTrainingGameSnapshotDto(
      status: game.status.toShortString(),
      mode: game.mode.toShortString(),
      players: game.players
          .map((player) => DoubleTrainingPlayerSnapshotDto.fromExternal(player))
          .toList(),
      owner: DoubleTrainingPlayerSnapshotDto.fromExternal(game.owner),
    );
  }
}
