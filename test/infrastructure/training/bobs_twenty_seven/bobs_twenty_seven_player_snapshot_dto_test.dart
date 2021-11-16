import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_player_snapshot.dart';
import 'package:dart_counter/infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_player_snapshot_dto.dart';
import 'package:dart_game/bobs_twenty_seven_training_game.dart' as ex;
import 'package:flutter_test/flutter_test.dart';

void main() {
  final id = UniqueId.fromUniqueString('dummyId');
  const idString = 'dummyId';
  const nameString = 'dummyName';
  const isCurrentTurn = false;
  const isDisqualified = false;
  const targetValue = 2;
  const checkoutPercentage = 1.0;
  const points = 33;
  const highestPoints = 33;

  final domainWithoutNulls = BobsTwentySevenPlayerSnapshot(
    id: id,
    name: nameString,
    isCurrentTurn: isCurrentTurn,
    isDisqualified: isDisqualified,
    targetValue: targetValue,
    checkoutPercentage: checkoutPercentage,
    points: points,
    highestPoints: highestPoints,
  );
  final domainWithNulls = BobsTwentySevenPlayerSnapshot(
    id: id,
    isCurrentTurn: false,
    isDisqualified: false,
    targetValue: 1,
    checkoutPercentage: 0.0,
    points: 0,
    highestPoints: 27,
  );

  const dtoWithoutNulls = BobsTwentySevenPlayerSnapshotDto(
    id: idString,
    name: nameString,
    isCurrentTurn: isCurrentTurn,
    isDisqualified: isDisqualified,
    targetValue: targetValue,
    checkoutPercentage: checkoutPercentage,
    points: points,
    highestPoints: highestPoints,
  );
  const dtoWithNulls = BobsTwentySevenPlayerSnapshotDto(
    id: idString,
  );

  final externalWithoutNulls = ex.Player.fromData(
    id: idString,
    name: nameString,
    isCurrentTurn: isCurrentTurn,
    isDisqualified: isDisqualified,
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
          expect(dtoWithoutNulls.isDisqualified, isDisqualified);
          expect(dtoWithoutNulls.targetValue, targetValue);
          expect(dtoWithoutNulls.checkoutPercentage, checkoutPercentage);
          expect(dtoWithoutNulls.points, points);
          expect(dtoWithoutNulls.highestPoints, highestPoints);
        },
      );

      test(
        'with nulls',
        () {
          expect(dtoWithNulls.id, idString);
          expect(dtoWithNulls.name, null);
          expect(dtoWithNulls.isCurrentTurn, null);
          expect(dtoWithNulls.isDisqualified, null);
          expect(dtoWithNulls.targetValue, null);
          expect(dtoWithNulls.checkoutPercentage, null);
          expect(dtoWithNulls.points, null);
          expect(dtoWithNulls.highestPoints, null);
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
          final dto = BobsTwentySevenPlayerSnapshotDto.fromExternal(
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
          final dto = BobsTwentySevenPlayerSnapshotDto.fromExternal(
            externalWithNulls,
          );

          // Assert
          expect(dto, dtoWithNulls);
        },
      );
    },
  );
}
