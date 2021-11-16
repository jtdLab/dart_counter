import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/score/score_training_player_snapshot.dart';
import 'package:dart_game/score_training_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'score_training_player_snapshot_dto.freezed.dart';

@freezed
class ScoreTrainingPlayerSnapshotDto with _$ScoreTrainingPlayerSnapshotDto {
  const factory ScoreTrainingPlayerSnapshotDto({
    required String id,
    String? name,
    bool? isCurrentTurn,
    int? takesLeft,
    double? average,
    int? points,
    double? firstDartAverage,
    double? secondDartAverage,
    double? thirdDartAverage,
  }) = _ScoreTrainingPlayerSnapshotDto;

  const ScoreTrainingPlayerSnapshotDto._();

  ScoreTrainingPlayerSnapshot toDomain() {
    return ScoreTrainingPlayerSnapshot(
      id: UniqueId.fromUniqueString(id),
      name: name,
      isCurrentTurn: isCurrentTurn ?? false,
      takesLeft: takesLeft ?? 1,
      average: average,
      points: points ?? 0,
      firstDartAverage: firstDartAverage,
      secondDartAverage: secondDartAverage,
      thirdDartAverage: thirdDartAverage,
    );
  }

  factory ScoreTrainingPlayerSnapshotDto.fromExternal(ex.Player player) {
    return ScoreTrainingPlayerSnapshotDto(
      id: player.id,
      name: player.name,
      isCurrentTurn: player.isCurrentTurn,
      takesLeft: player.takesLeft,
      average: player.average,
      points: player.points,
      firstDartAverage: player.firstDartAverage,
      secondDartAverage: player.secondDartAverage,
      thirdDartAverage: player.thirdDartAverage,
    );
  }
}
