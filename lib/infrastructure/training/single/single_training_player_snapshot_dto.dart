import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/single/single_training_player_snapshot.dart';
import 'package:dart_game/single_training_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_training_player_snapshot_dto.freezed.dart';

@freezed
class SingleTrainingPlayerSnapshotDto with _$SingleTrainingPlayerSnapshotDto {
  const factory SingleTrainingPlayerSnapshotDto({
    required String id,
    String? name,
    bool? isCurrentTurn,
    int? targetValue,
    int? points,
    int? singles,
    int? doubles,
    int? triples,
    int? missed,
  }) = _SingleTrainingPlayerSnapshotDto;

  const SingleTrainingPlayerSnapshotDto._();

  SingleTrainingPlayerSnapshot toDomain() {
    return SingleTrainingPlayerSnapshot(
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

  factory SingleTrainingPlayerSnapshotDto.fromExternal(ex.Player player) {
    return SingleTrainingPlayerSnapshotDto(
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
}
