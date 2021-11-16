import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/training/mode.dart';
import 'package:dart_counter/domain/training/single/single_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/single/single_training_player_snapshot.dart';
import 'package:dart_counter/infrastructure/training/single/single_training_game_snapshot_dto.dart';
import 'package:dart_counter/infrastructure/training/single/single_training_player_snapshot_dto.dart';
import 'package:dart_game/single_training_game.dart' as ex;
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

void main() {
  final id = UniqueId.fromUniqueString('dummyId');
  const idString = 'dummyId';

  final playerDomain = SingleTrainingPlayerSnapshot(
    id: id,
    isCurrentTurn: false,
    targetValue: 1,
    points: 0,
    singles: 0,
    doubles: 0,
    triples: 0,
    missed: 0,
  );

  final domain = SingleTrainingGameSnapshot(
    status: Status.pending,
    mode: Mode.ascending,
    players: KtList.from([playerDomain]),
    owner: playerDomain,
  );

  const playerDto = SingleTrainingPlayerSnapshotDto(
    id: idString,
  );

  const dto = SingleTrainingGameSnapshotDto(
    status: 'pending',
    mode: 'ascending',
    players: [playerDto],
    owner: playerDto,
  );

  final playerExternal = ex.Player.fromData(
    id: idString,
  );

  final external = ex.Game.fromData(
    status: ex.Status.pending,
    mode: ex.Mode.ascending,
    players: [playerExternal],
    owner: playerExternal,
  );
  test(
    'constructor',
    () {
      // Assert
      expect(dto.status, 'pending');
      expect(dto.mode, 'ascending');
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
      final underTest = SingleTrainingGameSnapshotDto.fromExternal(external);

      // Assert
      expect(underTest, dto);
    },
  );
}
