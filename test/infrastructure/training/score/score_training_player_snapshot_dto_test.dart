import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/score/score_training_player_snapshot.dart';
import 'package:dart_counter/infrastructure/training/score/score_training_player_snapshot_dto.dart';
import 'package:dart_game/score_training_game.dart' as ex;
import 'package:flutter_test/flutter_test.dart';

void main() {
  final id = UniqueId.fromUniqueString('dummyId');
  const idString = 'dummyId';
  const nameString = 'dummyName';
  const isCurrentTurn = false;
  const takesLeft = 9;
  const average = 180.0;
  const points = 180;
  const firstDartAverage = 60.0;
  const secondDartAverage = 60.0;
  const thirdDartAverage = 60.0;

  final domainWithoutNulls = ScoreTrainingPlayerSnapshot(
    id: id,
    name: nameString,
    isCurrentTurn: isCurrentTurn,
    takesLeft: takesLeft,
    average: average,
    points: points,
    firstDartAverage: firstDartAverage,
    secondDartAverage: secondDartAverage,
    thirdDartAverage: thirdDartAverage,
  );
  final domainWithNulls = ScoreTrainingPlayerSnapshot(
    id: id,
    isCurrentTurn: false,
    takesLeft: 1,
    points: 0,
  );

  const dtoWithoutNulls = ScoreTrainingPlayerSnapshotDto(
    id: idString,
    name: nameString,
    isCurrentTurn: isCurrentTurn,
    takesLeft: takesLeft,
    average: average,
    points: points,
    firstDartAverage: firstDartAverage,
    secondDartAverage: secondDartAverage,
    thirdDartAverage: thirdDartAverage,
  );
  const dtoWithNulls = ScoreTrainingPlayerSnapshotDto(
    id: idString,
  );

  final externalWithoutNulls = ex.Player.fromData(
    id: idString,
    name: nameString,
    isCurrentTurn: isCurrentTurn,
    numberOfTakes: 10,
    throws: [
      ex.Throw.fromDarts(
        darts: [
          ex.Dart(type: ex.DartType.triple, value: 20),
          ex.Dart(type: ex.DartType.triple, value: 20),
          ex.Dart(type: ex.DartType.triple, value: 20),
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
          expect(dtoWithoutNulls.takesLeft, takesLeft);
          expect(dtoWithoutNulls.average, average);
          expect(dtoWithoutNulls.points, points);
          expect(dtoWithoutNulls.firstDartAverage, firstDartAverage);
          expect(dtoWithoutNulls.secondDartAverage, secondDartAverage);
          expect(dtoWithoutNulls.thirdDartAverage, thirdDartAverage);
        },
      );

      test(
        'with nulls',
        () {
          expect(dtoWithNulls.id, idString);
          expect(dtoWithNulls.name, null);
          expect(dtoWithNulls.isCurrentTurn, null);
          expect(dtoWithNulls.takesLeft, null);
          expect(dtoWithNulls.average, null);
          expect(dtoWithNulls.points, null);
          expect(dtoWithNulls.firstDartAverage, null);
          expect(dtoWithNulls.secondDartAverage, null);
          expect(dtoWithNulls.thirdDartAverage, null);
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
          final dto = ScoreTrainingPlayerSnapshotDto.fromExternal(
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
          final dto = ScoreTrainingPlayerSnapshotDto.fromExternal(
            externalWithNulls,
          );

          // Assert
          expect(dto, dtoWithNulls);
        },
      );
    },
  );
}
