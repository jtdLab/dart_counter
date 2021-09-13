import 'package:flutter_test/flutter_test.dart';
import 'package:dart_game/dart_game.dart';

void main() {
  group('constructor', () {
    group('()', () {
      group('valid args', () {
        test(
            'GIVEN valid args '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange
          final startingPoints = 501;

          // Act
          final leg = Leg(startingPoints: startingPoints);

          // Assert
          expect(leg.startingPoints, startingPoints);
          expect(leg.throws, []);
        });
      });

      group('invalid args', () {
        test(
            'GIVEN startingPoints < 2 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final startingPoints = 1;

          // Act & Assert
          expect(
            () => Leg(startingPoints: startingPoints),
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
          final startingPoints = 501;
          final throws = [
            Throw(points: 180),
          ];

          // Act
          final leg = Leg.fromData(
            startingPoints: startingPoints,
            throws: throws,
          );

          // Assert
          expect(leg.startingPoints, startingPoints);
          expect(leg.throws, throws);
        });
      });

      group('invalid args', () {
        test(
            'GIVEN startingPoints < 2 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final startingPoints = 1;
          final throws = [
            Throw(points: 180),
          ];

          // Act & Assert
          expect(
            () => Leg.fromData(
              startingPoints: startingPoints,
              throws: throws,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN sum of throws points > startingPoints '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final startingPoints = 301;
          final throws = [
            Throw(points: 180),
            Throw(points: 180),
          ];

          // Act & Assert
          expect(
            () => Leg.fromData(
              startingPoints: startingPoints,
              throws: throws,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN startingPoints - sum of throws points = 1 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final startingPoints = 301;
          final throws = [
            Throw(points: 180),
            Throw(points: 120),
          ];

          // Act & Assert
          expect(
            () => Leg.fromData(
              startingPoints: startingPoints,
              throws: throws,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN sum of throws points == startingPoints but 0 dartsOnDouble on last throw '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final startingPoints = 301;
          final throws = [
            Throw(points: 180),
            Throw(points: 121),
          ];

          // Act & Assert
          expect(
            () => Leg.fromData(
              startingPoints: startingPoints,
              throws: throws,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN startingPoints - sum of throws points >50 but >0 throws with dartsOnDouble >0 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final startingPoints = 301;
          final throws = [
            Throw(points: 180),
            Throw(points: 50, dartsOnDouble: 2),
          ];

          // Act & Assert
          expect(
            () => Leg.fromData(
              startingPoints: startingPoints,
              throws: throws,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN startingPoints - sum of throws points >50 but >0 throws with dartsOnDouble >0 (v2) '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final startingPoints = 501;
          final throws = [
            Throw(points: 180),
            Throw(points: 50, dartsOnDouble: 2),
            Throw(points: 50, dartsOnDouble: 2),
            Throw(points: 50, dartsOnDouble: 2),
            Throw(points: 50, dartsOnDouble: 2),
            Throw(points: 121, dartsOnDouble: 1),
          ];

          // Act & Assert
          expect(
            () => Leg.fromData(
              startingPoints: startingPoints,
              throws: throws,
            ),
            throwsA(isArgumentError),
          );
        });
      });
    });
  });

  group('getters', () {
    group('won', () {
      test(
          'GIVEN won '
          'WHEN get won '
          'THEN return true.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 301,
          throws: [
            Throw(points: 180),
            Throw(points: 121, dartsOnDouble: 1),
          ],
        );

        // Act & Assert
        expect(leg.won, true);
      });

      test(
          'GIVEN not won with 0 throws '
          'WHEN get won '
          'THEN return false.', () {
        // Arrange
        final leg = Leg(startingPoints: 501);

        // Act & Assert
        expect(leg.won, false);
      });

      test(
          'GIVEN not won with >0 throws '
          'WHEN get won '
          'THEN return false.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 501,
          throws: [
            Throw(points: 180),
          ],
        );

        // Act & Assert
        expect(leg.won, false);
      });
    });

    group('pointsLeft', () {
      test(
          'GIVEN 0 throws '
          'WHEN get pointsLeft '
          'THEN return startingPoints.', () {
        // Arrange
        final startingPoints = 501;
        final leg = Leg(
          startingPoints: startingPoints,
        );

        // Act & Assert
        expect(leg.pointsLeft, startingPoints);
      });

      test(
          'GIVEN >0 throws '
          'WHEN get pointsLeft '
          'THEN return correct pointsLeft.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 301,
          throws: [
            Throw(points: 180),
            Throw(points: 100),
          ],
        );

        // Act & Assert
        expect(leg.pointsLeft, 21);
      });
    });

    group('average', () {
      test(
          'GIVEN 0 throws '
          'WHEN get average '
          'THEN return null.', () {
        // Arrange
        final leg = Leg(
          startingPoints: 501,
        );

        // Act & Assert
        expect(leg.average, null);
      });

      test(
          'GIVEN >0 throws '
          'WHEN get average '
          'THEN return correct average.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 501,
          throws: [
            Throw(points: 180),
            Throw(points: 100),
          ],
        );

        // Act & Assert
        expect(leg.average, 140);
      });
    });

    group('checkoutPercentage', () {
      test(
          'GIVEN won '
          'WHEN get checkoutPercentage '
          'THEN return correct checkout percentage.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 301,
          throws: [
            Throw(points: 180),
            Throw(points: 101),
            Throw(points: 20, dartsOnDouble: 2),
          ],
        );

        // Act & Assert
        expect(leg.checkoutPercentage, 0.5);
      });

      test(
          'GIVEN not won '
          'WHEN get checkoutPercentage '
          'THEN return null.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 301,
          throws: [
            Throw(points: 180),
          ],
        );

        // Act & Assert
        expect(leg.checkoutPercentage, null);
      });
    });

    group('firstNineAverage', () {
      test(
          'GIVEN 0 dartsThrown '
          'WHEN get firstNineAverage '
          'THEN return null.', () {
        // Arrange
        final leg = Leg(
          startingPoints: 301,
        );

        // Act & Assert
        expect(leg.firstNineAverage, null);
      });

      test(
          'GIVEN 9 dartsThrown '
          'WHEN get firstNineAverage '
          'THEN return average.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 301,
          throws: [
            Throw(points: 20),
            Throw(points: 30),
            Throw(points: 40),
          ],
        );

        // Act & Assert
        expect(leg.firstNineAverage, 30);
      });

      test(
          'GIVEN <9 dartsThrown '
          'WHEN get firstNineAverage '
          'THEN return average.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 301,
          throws: [
            Throw(points: 20),
            Throw(points: 30),
          ],
        );

        // Act & Assert
        expect(leg.firstNineAverage, 25);
      });

      test(
          'GIVEN >9 dartsThrown '
          'WHEN get firstNineAverage '
          'THEN return correct firstNineAverage.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 301,
          throws: [
            Throw(points: 20),
            Throw(points: 30),
            Throw(points: 40),
            Throw(points: 50),
          ],
        );

        // Act & Assert
        expect(leg.firstNineAverage, 30);
      });
    });

    group('finish', () {
      test(
          'GIVEN won '
          'WHEN get finish '
          'THEN return points of last throw.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 301,
          throws: [
            Throw(points: 180),
            Throw(points: 101),
            Throw(points: 20, dartsOnDouble: 2),
          ],
        );

        // Act & Assert
        expect(leg.finish, 20);
      });

      test(
          'GIVEN not won '
          'WHEN get finish '
          'THEN return null.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 301,
          throws: [
            Throw(points: 180),
          ],
        );

        // Act & Assert
        expect(leg.finish, null);
      });
    });

    group('firstDartAverage', () {
      test(
          'GIVEN 0 throws '
          'WHEN get firstDartAverage '
          'THEN return null.', () {
        // Arrange
        final leg = Leg(
          startingPoints: 301,
        );

        // Act & Assert
        expect(leg.firstDartAverage, null);
      });

      test(
          'GIVEN 0 throws with darts != null '
          'WHEN get firstDartAverage '
          'THEN return null.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 301,
          throws: [
            Throw(points: 180),
            Throw(points: 101),
            Throw(points: 20, dartsOnDouble: 2),
          ],
        );

        // Act & Assert
        expect(leg.firstDartAverage, null);
      });

      test(
          'GIVEN >0 throws with darts != null and amount of first darts > 0 '
          'WHEN get firstDartAverage '
          'THEN return correct firstDartAverage.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 301,
          throws: [
            Throw.fromDarts(
              darts: [
                Dart(type: DartType.t, value: 20),
                Dart(type: DartType.t, value: 20),
                Dart(type: DartType.t, value: 20),
              ],
              dartsOnDouble: 0,
            ),
            Throw.fromDarts(
              darts: [
                Dart(type: DartType.d, value: 20),
                Dart(type: DartType.t, value: 20),
                Dart(type: DartType.s, value: 1),
              ],
              dartsOnDouble: 0,
            ),
            Throw(points: 20, dartsOnDouble: 2),
          ],
        );

        // Act & Assert
        expect(leg.firstDartAverage, 50);
      });
    });

    group('secondDartAverage', () {
      test(
          'GIVEN 0 throws '
          'WHEN get secondDartAverage '
          'THEN return null.', () {
        // Arrange
        final leg = Leg(
          startingPoints: 301,
        );

        // Act & Assert
        expect(leg.secondDartAverage, null);
      });

      test(
          'GIVEN 0 throws with darts != null '
          'WHEN get secondDartAverage '
          'THEN return null.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 301,
          throws: [
            Throw(points: 180),
            Throw(points: 101),
            Throw(points: 20, dartsOnDouble: 2),
          ],
        );

        // Act & Assert
        expect(leg.secondDartAverage, null);
      });

      test(
          'GIVEN >0 throws with darts != null and amount of second darts > 0 '
          'WHEN get secondDartAverage '
          'THEN return correct secondDartAverage.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 301,
          throws: [
            Throw.fromDarts(
              darts: [
                Dart(type: DartType.t, value: 20),
                Dart(type: DartType.t, value: 20),
                Dart(type: DartType.t, value: 20),
              ],
              dartsOnDouble: 0,
            ),
            Throw.fromDarts(
              darts: [
                Dart(type: DartType.t, value: 20),
                Dart(type: DartType.d, value: 20),
                Dart(type: DartType.s, value: 1),
              ],
              dartsOnDouble: 0,
            ),
            Throw(points: 20, dartsOnDouble: 2),
          ],
        );

        // Act & Assert
        expect(leg.secondDartAverage, 50);
      });
    });

    group('thirdDartAverage', () {
      test(
          'GIVEN 0 throws '
          'WHEN get thirdDartAverage '
          'THEN return null.', () {
        // Arrange
        final leg = Leg(
          startingPoints: 301,
        );

        // Act & Assert
        expect(leg.thirdDartAverage, null);
      });

      test(
          'GIVEN 0 throws with darts != null '
          'WHEN get thirdDartAverage '
          'THEN return null.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 301,
          throws: [
            Throw(points: 180),
            Throw(points: 101),
            Throw(points: 20, dartsOnDouble: 2),
          ],
        );

        // Act & Assert
        expect(leg.thirdDartAverage, null);
      });

      test(
          'GIVEN >0 throws with darts != null and amount of third darts > 0 '
          'WHEN get thirdDartAverage '
          'THEN return correct thirdDartAverage.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 301,
          throws: [
            Throw.fromDarts(
              darts: [
                Dart(type: DartType.t, value: 20),
                Dart(type: DartType.t, value: 20),
                Dart(type: DartType.t, value: 20),
              ],
              dartsOnDouble: 0,
            ),
            Throw.fromDarts(
              darts: [
                Dart(type: DartType.t, value: 20),
                Dart(type: DartType.d, value: 20),
                Dart(type: DartType.s, value: 1),
              ],
              dartsOnDouble: 0,
            ),
            Throw(points: 20, dartsOnDouble: 2),
          ],
        );

        // Act & Assert
        expect(leg.thirdDartAverage, 30.5);
      });
    });

    group('fourtyPlus', () {
      test(
          'GIVEN 0 throws '
          'WHEN get fourtyPlus '
          'THEN return 0.', () {
        // Arrange
        final leg = Leg(
          startingPoints: 301,
        );

        // Act & Assert
        expect(leg.fourtyPlus, 0);
      });

      test(
          'GIVEN >0 throws '
          'WHEN get fourtyPlus '
          'THEN return amount of throws with 40 <= points < 60.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 701,
          throws: [
            Throw(points: 40),
            Throw(points: 50),
            Throw(points: 59),
          ],
        );

        // Act & Assert
        expect(leg.fourtyPlus, 3);
      });
    });

    group('sixtyPlus', () {
      test(
          'GIVEN 0 throws '
          'WHEN get sixtyPlus '
          'THEN return 0.', () {
        // Arrange
        final leg = Leg(
          startingPoints: 301,
        );

        // Act & Assert
        expect(leg.sixtyPlus, 0);
      });

      test(
          'GIVEN >0 throws '
          'WHEN get sixtyPlus '
          'THEN return amount of throws with 60 <= points < 80.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 701,
          throws: [
            Throw(points: 60),
            Throw(points: 70),
            Throw(points: 79),
          ],
        );

        // Act & Assert
        expect(leg.sixtyPlus, 3);
      });
    });

    group('eightyPlus', () {
      test(
          'GIVEN 0 throws '
          'WHEN get eightyPlus '
          'THEN return 0.', () {
        // Arrange
        final leg = Leg(
          startingPoints: 301,
        );

        // Act & Assert
        expect(leg.eightyPlus, 0);
      });

      test(
          'GIVEN >0 throws '
          'WHEN get eightyPlus '
          'THEN return amount of throws with 80 <= points < 100.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 701,
          throws: [
            Throw(points: 80),
            Throw(points: 90),
            Throw(points: 99),
          ],
        );

        // Act & Assert
        expect(leg.eightyPlus, 3);
      });
    });

    group('hundredPlus', () {
      test(
          'GIVEN 0 throws '
          'WHEN get hundredPlus '
          'THEN return 0.', () {
        // Arrange
        final leg = Leg(
          startingPoints: 301,
        );

        // Act & Assert
        expect(leg.hundredPlus, 0);
      });

      test(
          'GIVEN >0 throws '
          'WHEN get hundredPlus '
          'THEN return amount of throws with 100 <= points < 119.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 701,
          throws: [
            Throw(points: 100),
            Throw(points: 110),
            Throw(points: 119),
          ],
        );

        // Act & Assert
        expect(leg.hundredPlus, 3);
      });
    });

    group('hundredTwentyPlus', () {
      test(
          'GIVEN 0 throws '
          'WHEN get hundredTwentyPlus '
          'THEN return 0.', () {
        // Arrange
        final leg = Leg(
          startingPoints: 301,
        );

        // Act & Assert
        expect(leg.hundredTwentyPlus, 0);
      });

      test(
          'GIVEN >0 throws '
          'WHEN get hundredTwentyPlus '
          'THEN return amount of throws with 120 <= points < 140.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 701,
          throws: [
            Throw(points: 120),
            Throw(points: 130),
            Throw(points: 139),
          ],
        );

        // Act & Assert
        expect(leg.hundredTwentyPlus, 3);
      });
    });

    group('hundredFourtyPlus', () {
      test(
          'GIVEN 0 throws '
          'WHEN get hundredFourtyPlus '
          'THEN return 0.', () {
        // Arrange
        final leg = Leg(
          startingPoints: 301,
        );

        // Act & Assert
        expect(leg.hundredFourtyPlus, 0);
      });

      test(
          'GIVEN >0 throws '
          'WHEN get hundredFourtyPlus '
          'THEN return amount of throws with 140 <= points < 160.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 701,
          throws: [
            Throw(points: 140),
            Throw(points: 150),
            Throw(points: 159),
          ],
        );

        // Act & Assert
        expect(leg.hundredFourtyPlus, 3);
      });
    });

    group('hundredSixtyPlus', () {
      test(
          'GIVEN 0 throws '
          'WHEN get hundredSixtyPlus '
          'THEN return 0.', () {
        // Arrange
        final leg = Leg(
          startingPoints: 301,
        );

        // Act & Assert
        expect(leg.hundredSixtyPlus, 0);
      });

      test(
          'GIVEN >0 throws '
          'WHEN get hundredSixtyPlus '
          'THEN return amount of throws with 160 <= points < 180.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 701,
          throws: [
            Throw(points: 160),
            Throw(points: 170),
            Throw(points: 177),
          ],
        );

        // Act & Assert
        expect(leg.hundredSixtyPlus, 3);
      });
    });

    group('hundredEighty', () {
      test(
          'GIVEN 0 throws '
          'WHEN get hundredEighty '
          'THEN return 0.', () {
        // Arrange
        final leg = Leg(
          startingPoints: 301,
        );

        // Act & Assert
        expect(leg.hundredEighty, 0);
      });

      test(
          'GIVEN >0 throws '
          'WHEN get hundredEighty '
          'THEN return amount of throws with points = 180.', () {
        // Arrange
        final leg = Leg.fromData(
          startingPoints: 701,
          throws: [
            Throw(points: 180),
            Throw(points: 180),
            Throw(points: 180),
          ],
        );

        // Act & Assert
        expect(leg.hundredEighty, 3);
      });
    });
  });

  group('toString', () {
    test(
        'GIVEN - '
        'WHEN toString() called '
        'THEN return correct string representation.', () {
      // Arrange
      final throws = [
        Throw(points: 180),
      ];
      final leg = Leg.fromData(
        startingPoints: 501,
        throws: throws,
      );

      // Act & Assert
      expect(
        leg.toString(),
        'Leg{startingPoints: 501, throws: $throws}',
      );
    });
  });
}
