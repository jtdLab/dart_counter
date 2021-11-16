import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/double/double_training_player_snapshot.dart';
import 'package:dart_counter/infrastructure/training/double/double_training_player_snapshot_dto.dart';
import 'package:dart_game/double_training_game.dart' as ex;
import 'package:flutter_test/flutter_test.dart';

void main() {
  final id = UniqueId.fromUniqueString('dummyId');
  const idString = 'dummyId';
  const nameString = 'dummyName';
  const isCurrentTurn = false;
  const isFinished = false;
  const targetValue = 2;
  const checkoutPercentage = 1.0;
  const missed = 0;
  const dartsThrown = 3;

  final domainWithoutNulls = DoubleTrainingPlayerSnapshot(
    id: id,
    name: nameString,
    isCurrentTurn: isCurrentTurn,
    isFinished: isFinished,
    targetValue: targetValue,
    checkoutPercentage: checkoutPercentage,
    missed: missed,
    dartsThrown: dartsThrown,
  );
  final domainWithNulls = DoubleTrainingPlayerSnapshot(
    id: id,
    isCurrentTurn: false,
    isFinished: false,
    targetValue: 1,
    missed: 0,
    dartsThrown: 0,
  );

  const dtoWithoutNulls = DoubleTrainingPlayerSnapshotDto(
    id: idString,
    name: nameString,
    isCurrentTurn: isCurrentTurn,
    isFinished: isFinished,
    targetValue: targetValue,
    checkoutPercentage: checkoutPercentage,
    missed: missed,
    dartsThrown: dartsThrown,
  );
  const dtoWithNulls = DoubleTrainingPlayerSnapshotDto(
    id: idString,
  );

  final externalWithoutNulls = ex.Player.fromData(
    id: idString,
    name: nameString,
    isCurrentTurn: isCurrentTurn,
    isFinished: isFinished,
    targetValue: targetValue,
    throws: [
      ex.Throw.fromDarts(
        darts: [
          ex.Dart(type: ex.DartType.double, value: 1),
          ex.Dart(type: ex.DartType.double, value: 1),
          ex.Dart(type: ex.DartType.double, value: 1),
        ],
      ),
    ],
  );
  final externalWithNulls = ex.Player.fromData(
    id: idString,
  );

  group(
    'constructor',
    () {
      test(
        'without nulls',
        () {
          expect(dtoWithoutNulls.id, idString);
          expect(dtoWithoutNulls.name, nameString);
          expect(dtoWithoutNulls.isCurrentTurn, isCurrentTurn);
          expect(dtoWithoutNulls.isFinished, isFinished);
          expect(dtoWithoutNulls.targetValue, targetValue);
          expect(dtoWithoutNulls.checkoutPercentage, checkoutPercentage);
          expect(dtoWithoutNulls.missed, missed);
          expect(dtoWithoutNulls.dartsThrown, dartsThrown);
        },
      );

      test(
        'with nulls',
        () {
          expect(dtoWithNulls.id, idString);
          expect(dtoWithNulls.name, null);
          expect(dtoWithNulls.isCurrentTurn, null);
          expect(dtoWithNulls.isFinished, null);
          expect(dtoWithNulls.targetValue, null);
          expect(dtoWithNulls.checkoutPercentage, null);
          expect(dtoWithNulls.missed, null);
          expect(dtoWithNulls.dartsThrown, null);
        },
      );
    },
  );

  group(
    'toDomain',
    () {
      test(
        'without nulls',
        () {
          // Assert
          expect(dtoWithoutNulls.toDomain(), domainWithoutNulls);
        },
      );

      test(
        'with nulls',
        () {
          // Assert
          expect(dtoWithNulls.toDomain(), domainWithNulls);
        },
      );
    },
  );

  group(
    'fromExternal',
    () {
      test(
        'without nulls',
        () {
          // Act
          final dto = DoubleTrainingPlayerSnapshotDto.fromExternal(
            externalWithoutNulls,
          );

          // Assert
          expect(dto, dtoWithoutNulls);
        },
      );

      test(
        'with nulls',
        () {
          // Act
          final dto = DoubleTrainingPlayerSnapshotDto.fromExternal(
            externalWithNulls,
          );

          // Assert
          expect(dto, dtoWithNulls);
        },
      );
    },
  );
}
