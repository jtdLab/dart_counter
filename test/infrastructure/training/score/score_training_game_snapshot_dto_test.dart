import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/training/score/score_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/score/score_training_player_snapshot.dart';
import 'package:dart_counter/infrastructure/training/score/score_training_game_snapshot_dto.dart';
import 'package:dart_counter/infrastructure/training/score/score_training_player_snapshot_dto.dart';
import 'package:dart_game/score_training_game.dart' as ex;
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

void main() {
  final id = UniqueId.fromUniqueString('dummyId');
  const idString = 'dummyId';

  final playerDomain = ScoreTrainingPlayerSnapshot(
    id: id,
    isCurrentTurn: false,
    takesLeft: 1,
    points: 0,
  );

  final domain = ScoreTrainingGameSnapshot(
    status: Status.pending,
    numberOfTakes: 10,
    players: KtList.from([playerDomain]),
    owner: playerDomain,
  );

  const playerDto = ScoreTrainingPlayerSnapshotDto(
    id: idString,
  );

  const dto = ScoreTrainingGameSnapshotDto(
    status: 'pending',
    numberOfTakes: 10,
    players: [playerDto],
    owner: playerDto,
  );

  final playerExternal = ex.Player.fromData(
    id: idString,
  );

  final external = ex.Game.fromData(
    status: ex.Status.pending,
    numberOfTakes: 10,
    players: [playerExternal],
    owner: playerExternal,
  );
  test(
    'constructor',
    () {
      // Assert
      expect(dto.status, 'pending');
      expect(dto.numberOfTakes, 10);
      expect(dto.players, [playerDto]);
      expect(dto.owner, playerDto);
    },
  );

  test(
    'toDomain',
    () {
      // Act
      final underTest = dto.toDomain();

      // Assert
      expect(underTest, domain);
    },
  );

  test(
    'fromExternal',
    () {
      // Act
      final underTest = ScoreTrainingGameSnapshotDto.fromExternal(external);

      // Assert
      expect(underTest, dto);
    },
  );
}
