import 'package:dart_game/dart_game.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('constructor', () {
    group('()', () {
      group('default args', () {
        test(
            'GIVEN no args '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange & Act
          final dartBot = DartBot();

          // Assert
          expect(dartBot.targetAverage, 10);
        });
      });

      group('valid args', () {
        test(
            'GIVEN no args '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange & Act
          final dartBot = DartBot(targetAverage: 100);

          // Assert
          expect(dartBot.id, 'dartBot');
          expect(dartBot.targetAverage, 100);
        });
      });

      group('invalid args', () {
        test(
            'GIVEN targetAverage < 10 '
            'WHEN new instance created '
            'THEN throw ArgumenError.', () {
          // Arrange & Act
          final targetAverage = 9;

          // Assert
          expect(
            () => DartBot(targetAverage: targetAverage),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN targetAverage > 150 '
            'WHEN new instance created '
            'THEN throw ArgumenError.', () {
          // Arrange & Act
          final targetAverage = 151;

          // Assert
          expect(
            () => DartBot(targetAverage: targetAverage),
            throwsA(isArgumentError),
          );
        });
      });
    });

    group('fromData()', () {
      group('valid args', () {
        test(
            'GIVEN valid args '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange
          final legsOrSetsNeededToWin = 2;
          final isCurrentTurn = true;
          final legsOrSets = left<List<Leg>, List<Set>>(
            [
              Leg(startingPoints: 501),
            ],
          );
          final targetAverage = 100;

          // Act
          final dartBot = DartBot.fromData(
            legsOrSetsNeededToWin: legsOrSetsNeededToWin,
            isCurrentTurn: isCurrentTurn,
            legsOrSets: legsOrSets,
            targetAverage: targetAverage,
          );

          // Assert
          expect(dartBot.id, 'dartBot');
          expect(dartBot.name, null);
          expect(dartBot.isCurrentTurn, isCurrentTurn);
          expect(dartBot.legsOrSets, legsOrSets);
          expect(dartBot.targetAverage, targetAverage);
        });
      });

      group('invalid args', () {
        test(
            'GIVEN not all of (legsOrSetsNeededToWin = null, legsOrSets = null and isCurrentTurn = null)'
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final isCurrentTurn = true;

          // Act & Assert
          expect(
            () => DartBot.fromData(
              isCurrentTurn: isCurrentTurn,
              targetAverage: 50,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN not all of (legsOrSetsNeededToWin != null, legsOrSets != null and isCurrentTurn != null)'
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final isCurrentTurn = true;
          final legsOrSets = left<List<Leg>, List<Set>>(
            [
              Leg(startingPoints: 501),
            ],
          );

          // Act & Assert
          expect(
            () => DartBot.fromData(
              isCurrentTurn: isCurrentTurn,
              legsOrSets: legsOrSets,
              targetAverage: 50,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN value of legsOrSets is empty list '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final legsOrSets = left<List<Leg>, List<Set>>([]);

          // Act & Assert
          expect(
            () => DartBot.fromData(
              legsOrSets: legsOrSets,
              targetAverage: 50,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN valid args and legsOrSetsNeededToWin is less than 1 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final legsOrSetsNeededToWin = 0;
          final isCurrentTurn = true;
          final legsOrSets = left<List<Leg>, List<Set>>(
            [
              Leg(startingPoints: 501),
            ],
          );

          // Act & Assert
          expect(
            () => DartBot.fromData(
              legsOrSetsNeededToWin: legsOrSetsNeededToWin,
              isCurrentTurn: isCurrentTurn,
              legsOrSets: legsOrSets,
              targetAverage: 50,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN valid args and legs with unequal startingPoints '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final legsOrSetsNeededToWin = 5;
          final isCurrentTurn = true;
          final legsOrSets = left<List<Leg>, List<Set>>(
            [
              Leg(startingPoints: 501),
              Leg(startingPoints: 301),
            ],
          );

          // Act & Assert
          expect(
            () => DartBot.fromData(
              legsOrSetsNeededToWin: legsOrSetsNeededToWin,
              isCurrentTurn: isCurrentTurn,
              legsOrSets: legsOrSets,
              targetAverage: 50,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN valid args and more won legs than legsOrSetsNeededToWin '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final legsOrSetsNeededToWin = 1;
          final isCurrentTurn = true;
          final legsOrSets = left<List<Leg>, List<Set>>(
            [
              Leg.fromData(
                startingPoints: 301,
                throws: [
                  Throw(points: 180),
                  Throw(points: 121, dartsOnDouble: 1),
                ],
              ),
              Leg.fromData(
                startingPoints: 301,
                throws: [
                  Throw(points: 180),
                  Throw(points: 121, dartsOnDouble: 1),
                ],
              ),
            ],
          );

          // Act & Assert
          expect(
            () => DartBot.fromData(
              legsOrSetsNeededToWin: legsOrSetsNeededToWin,
              isCurrentTurn: isCurrentTurn,
              legsOrSets: legsOrSets,
              targetAverage: 50,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN valid args and set with unequal startingPoints '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final legsOrSetsNeededToWin = 5;
          final isCurrentTurn = true;
          final legsOrSets = right<List<Leg>, List<Set>>(
            [
              Set(startingPoints: 501),
              Set(startingPoints: 301),
            ],
          );

          // Act & Assert
          expect(
            () => DartBot.fromData(
              legsOrSetsNeededToWin: legsOrSetsNeededToWin,
              isCurrentTurn: isCurrentTurn,
              legsOrSets: legsOrSets,
              targetAverage: 50,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN valid args and more won set than legsOrSetsNeededToWin '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final legsOrSetsNeededToWin = 1;
          final isCurrentTurn = true;
          final legsOrSets = right<List<Leg>, List<Set>>(
            [
              Set.fromData(
                startingPoints: 301,
                legs: [
                  Leg.fromData(
                    startingPoints: 301,
                    throws: [
                      Throw(points: 180),
                      Throw(points: 121, dartsOnDouble: 1),
                    ],
                  ),
                  Leg.fromData(
                    startingPoints: 301,
                    throws: [
                      Throw(points: 180),
                      Throw(points: 121, dartsOnDouble: 1),
                    ],
                  ),
                  Leg.fromData(
                    startingPoints: 301,
                    throws: [
                      Throw(points: 180),
                      Throw(points: 121, dartsOnDouble: 1),
                    ],
                  ),
                ],
              ),
              Set.fromData(
                startingPoints: 301,
                legs: [
                  Leg.fromData(
                    startingPoints: 301,
                    throws: [
                      Throw(points: 180),
                      Throw(points: 121, dartsOnDouble: 1),
                    ],
                  ),
                  Leg.fromData(
                    startingPoints: 301,
                    throws: [
                      Throw(points: 180),
                      Throw(points: 121, dartsOnDouble: 1),
                    ],
                  ),
                  Leg.fromData(
                    startingPoints: 301,
                    throws: [
                      Throw(points: 180),
                      Throw(points: 121, dartsOnDouble: 1),
                    ],
                  ),
                ],
              ),
            ],
          );

          // Act & Assert
          expect(
            () => DartBot.fromData(
              legsOrSetsNeededToWin: legsOrSetsNeededToWin,
              isCurrentTurn: isCurrentTurn,
              legsOrSets: legsOrSets,
              targetAverage: 50,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN valid args and targetAverage < 10 '
            'WHEN new instance created '
            'THEN throw ArgumenError.', () {
          // Arrange
          final legsOrSetsNeededToWin = 2;
          final isCurrentTurn = true;
          final legsOrSets = left<List<Leg>, List<Set>>(
            [
              Leg(startingPoints: 501),
            ],
          );
          final targetAverage = 9;

          // Act & Assert
          expect(
            () => DartBot.fromData(
              legsOrSetsNeededToWin: legsOrSetsNeededToWin,
              isCurrentTurn: isCurrentTurn,
              legsOrSets: legsOrSets,
              targetAverage: targetAverage,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN valid args and targetAverage > 150 '
            'WHEN new instance created '
            'THEN throw ArgumenError.', () {
          // Arrange
          final legsOrSetsNeededToWin = 2;
          final isCurrentTurn = true;
          final legsOrSets = left<List<Leg>, List<Set>>(
            [
              Leg(startingPoints: 501),
            ],
          );
          final targetAverage = 151;

          // Act & Assert
          expect(
            () => DartBot.fromData(
              legsOrSetsNeededToWin: legsOrSetsNeededToWin,
              isCurrentTurn: isCurrentTurn,
              legsOrSets: legsOrSets,
              targetAverage: targetAverage,
            ),
            throwsA(isArgumentError),
          );
        });
      });
    });
  });

  group('toString()', () {
    test(
        'GIVEN - '
        'WHEN toString() called '
        'THEN return correct string representation.', () {
      // Arrange
      final legsOrSetsNeededToWin = 3;
      final isCurrentTurn = true;
      final legsOrSets = right<List<Leg>, List<Set>>(
        [
          Set.fromData(
            startingPoints: 301,
            legs: [
              Leg.fromData(
                startingPoints: 301,
                throws: [
                  Throw(points: 180),
                  Throw(points: 121, dartsOnDouble: 1),
                ],
              ),
              Leg.fromData(
                startingPoints: 301,
                throws: [
                  Throw(points: 180),
                  Throw(points: 121, dartsOnDouble: 1),
                ],
              ),
              Leg.fromData(
                startingPoints: 301,
                throws: [
                  Throw(points: 180),
                  Throw(points: 121, dartsOnDouble: 1),
                ],
              ),
            ],
          ),
          Set.fromData(
            startingPoints: 301,
            legs: [
              Leg.fromData(
                startingPoints: 301,
                throws: [
                  Throw(points: 180),
                  Throw(points: 121, dartsOnDouble: 1),
                ],
              ),
              Leg.fromData(
                startingPoints: 301,
                throws: [
                  Throw(points: 180),
                  Throw(points: 121, dartsOnDouble: 1),
                ],
              ),
              Leg.fromData(
                startingPoints: 301,
                throws: [
                  Throw(points: 180),
                  Throw(points: 121, dartsOnDouble: 1),
                ],
              ),
            ],
          ),
          Set.fromData(
            startingPoints: 301,
            legs: [
              Leg.fromData(
                startingPoints: 301,
                throws: [],
              ),
            ],
          ),
        ],
      );
      final targetAverage = 80;

      // Act
      final dartBot = DartBot.fromData(
        legsOrSetsNeededToWin: legsOrSetsNeededToWin,
        isCurrentTurn: isCurrentTurn,
        legsOrSets: legsOrSets,
        targetAverage: targetAverage,
      );

      // Assert
      expect(
        dartBot.toString(),
        'DartBot{id: dartBot, name: null, targetAverage: $targetAverage, won: false, '
        'isCurrentTurn: $isCurrentTurn, wonSets: 2, wonLegsCurrentSet: 0, '
        'pointsLeft: 301, lastPoints: 121, finishRecommendation: null, '
        'dartsThrownCurrentLeg: 0, average: 150.5, '
        'checkoutPercentage: 1.0}',
      );
    });
  });
}
