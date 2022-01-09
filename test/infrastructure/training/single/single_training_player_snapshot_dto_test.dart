import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/single/single_training_player_snapshot.dart';
import 'package:dart_counter/infrastructure/training/single/single_training_player_snapshot_dto.dart';
import 'package:dart_game/single_training_game.dart' as ex;
import 'package:flutter_test/flutter_test.dart';

void main() {
  final id = UniqueId.fromUniqueString('dummyId');
  const idString = 'dummyId';
  const nameString = 'dummyName';
  const isCurrentTurn = false;
  const targetValue = 2;
  const points = 3;
  const singles = 3;
  const doubles = 0;
  const triples = 0;
  const missed = 0;

  final domainWithoutNulls = SingleTrainingPlayerSnapshot(
    id: id,
    name: nameString,
    isCurrentTurn: isCurrentTurn,
    targetValue: targetValue,
    points: points,
    singles: singles,
    doubles: doubles,
    triples: triples,
    missed: missed,
  );
  final domainWithNulls = SingleTrainingPlayerSnapshot(
    id: id,
    isCurrentTurn: false,
    targetValue: 1,
    points: 0,
    singles: 0,
    doubles: 0,
    triples: 0,
    missed: 0,
  );

  const dtoWithoutNulls = SingleTrainingPlayerSnapshotDto(
    id: idString,
    name: nameString,
    isCurrentTurn: isCurrentTurn,
    targetValue: targetValue,
    points: points,
    singles: singles,
    doubles: doubles,
    triples: triples,
    missed: missed,
  );
  const dtoWithNulls = SingleTrainingPlayerSnapshotDto(
    id: idString,
  );

  final externalWithoutNulls = ex.Player.fromData(
    id: idString,
    name: nameString,
    isCurrentTurn: isCurrentTurn,
    targetValue: targetValue,
    throws: [
      ex.Throw.fromDarts(
        darts: [
          ex.Dart(type: ex.DartType.single, value: 1),
          ex.Dart(type: ex.DartType.single, value: 1),
          ex.Dart(type: ex.DartType.single, value: 1),
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
          expect(dtoWithoutNulls.targetValue, targetValue);
          expect(dtoWithoutNulls.points, points);
          expect(dtoWithoutNulls.singles, singles);
          expect(dtoWithoutNulls.doubles, doubles);
          expect(dtoWithoutNulls.triples, triples);
          expect(dtoWithoutNulls.missed, missed);
        },
      );

      test(
        'with nulls',
        () {
          expect(dtoWithNulls.id, idString);
          expect(dtoWithNulls.name, null);
          expect(dtoWithNulls.isCurrentTurn, null);
          expect(dtoWithNulls.targetValue, null);
          expect(dtoWithNulls.points, null);
          expect(dtoWithNulls.singles, null);
          expect(dtoWithNulls.doubles, null);
          expect(dtoWithNulls.triples, null);
          expect(dtoWithNulls.missed, null);
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
          final dto = SingleTrainingPlayerSnapshotDto.fromExternal(
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
          final dto = SingleTrainingPlayerSnapshotDto.fromExternal(
            externalWithNulls,
          );

          // Assert
          expect(dto, dtoWithNulls);
        },
      );
    },
  );
}
