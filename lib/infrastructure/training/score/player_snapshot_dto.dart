import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/score/player_snapshot.dart';
import 'package:dart_game/score_training_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_snapshot_dto.freezed.dart';

@freezed
class PlayerSnapshotDto with _$PlayerSnapshotDto {
  const factory PlayerSnapshotDto({
    required String id,
    String? name,
    bool? isCurrentTurn,
    int? takesLeft,
    double? average,
    int? points,
    double? firstDartAverage,
    double? secondDartAverage,
    double? thirdDartAverage,
  }) = _PlayerSnapshotDto;

  const PlayerSnapshotDto._();

  factory PlayerSnapshotDto.fromDomain(PlayerSnapshot playerSnapshot) {
    return PlayerSnapshotDto(
      id: playerSnapshot.id.getOrCrash(),
      name: playerSnapshot.name,
      isCurrentTurn: playerSnapshot.isCurrentTurn,
      takesLeft: playerSnapshot.takesLeft,
      average: playerSnapshot.average,
      points: playerSnapshot.points,
      firstDartAverage: playerSnapshot.firstDartAverage,
      secondDartAverage: playerSnapshot.secondDartAverage,
      thirdDartAverage: playerSnapshot.thirdDartAverage,
    );
  }

  factory PlayerSnapshotDto.fromExternal(ex.Player player) {
    return PlayerSnapshotDto(
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

  PlayerSnapshot toDomain() {
    return PlayerSnapshot(
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
}
