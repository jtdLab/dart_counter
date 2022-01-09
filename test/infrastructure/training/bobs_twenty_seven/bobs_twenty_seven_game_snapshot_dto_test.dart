import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_player_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/mode.dart';
import 'package:dart_counter/infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_game_snapshot_dto.dart';
import 'package:dart_counter/infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_player_snapshot_dto.dart';
import 'package:dart_game/bobs_twenty_seven_training_game.dart' as ex;
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

void main() {
  final id = UniqueId.fromUniqueString('dummyId');
  const idString = 'dummyId';

  final playerDomain = BobsTwentySevenPlayerSnapshot(
    id: id,
    isCurrentTurn: false,
    isDisqualified: false,
    targetValue: 1,
    checkoutPercentage: 0.0,
    points: 0,
    highestPoints: 27,
  );

  final domain = BobsTwentySevenGameSnapshot(
    status: Status.pending,
    mode: Mode.easy,
    players: KtList.from([playerDomain]),
    owner: playerDomain,
  );

  const playerDto = BobsTwentySevenPlayerSnapshotDto(
    id: idString,
  );

  const dto = BobsTwentySevenGameSnapshotDto(
    status: 'pending',
    mode: 'easy',
    players: [playerDto],
    owner: playerDto,
  );

  final playerExternal = ex.Player.fromData(
    id: idString,
  );

  final external = ex.Game.fromData(
    status: ex.Status.pending,
    mode: ex.Mode.easy,
    players: [playerExternal],
    owner: playerExternal,
  );
  test(
    'constructor',
    () {
      // Assert
      expect(dto.status, 'pending');
      expect(dto.mode, 'easy');
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
      final underTest = BobsTwentySevenGameSnapshotDto.fromExternal(external);

      // Assert
      expect(underTest, dto);
    },
  );
}
