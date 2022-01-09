import 'package:dart_game/dart_game.dart';
import 'package:flutter_test/flutter_test.dart';

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
          final set = Set(
            startingPoints: startingPoints,
          );

          // Assert
          expect(set.startingPoints, startingPoints);
          expect(set.legs.length, 1);
          expect(set.legs[0].startingPoints, 501);
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
            () => Set(startingPoints: startingPoints),
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
          final legs = [
            Leg(startingPoints: startingPoints),
          ];

          // Act
          final set = Set.fromData(
            startingPoints: startingPoints,
            legs: legs,
          );

          // Assert
          expect(set.startingPoints, startingPoints);
          expect(set.legs, legs);
        });
      });

      group('invalid args', () {
        test(
            'GIVEN startingPoints < 2 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final startingPoints = 1;
          final legs = [
            Leg(startingPoints: 301),
          ];

          // Act & Assert
          expect(
            () => Set.fromData(
              startingPoints: startingPoints,
              legs: legs,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN legs is empty '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final legs = <Leg>[];

          // Act & Assert
          expect(
            () => Set.fromData(
              startingPoints: 301,
              legs: legs,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN legs with different startingPoints than the owning set '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final startingPoints = 501;

          final legs = [
            Leg(startingPoints: 301),
          ];

          // Act & Assert
          expect(
            () => Set.fromData(
              startingPoints: startingPoints,
              legs: legs,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN >3 won legs '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final startingPoints = 301;

          final legs = [
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
            Leg.fromData(
              startingPoints: 301,
              throws: [
                Throw(points: 180),
                Throw(points: 121, dartsOnDouble: 1),
              ],
            ),
          ];

          // Act & Assert
          expect(
            () => Set.fromData(
              startingPoints: startingPoints,
              legs: legs,
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
          'GIVEN won set '
          'WHEN get won '
          'THEN return true.', () {
        // Arrange
        final set = Set.fromData(
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
        );

        // Act & Assert
        expect(set.won, true);
      });

      test(
          'GIVEN not won set '
          'WHEN get won '
          'THEN return false.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
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
        expect(set.won, false);
      });
    });

    group('wonLegs', () {
      test(
          'GIVEN 0 wonLegs '
          'WHEN get wonLegs '
          'THEN return 0.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg(
              startingPoints: 301,
            ),
          ],
        );

        // Act & Assert
        expect(set.wonLegs, 0);
      });

      test(
          'GIVEN >0 won legs '
          'WHEN get wonLegs '
          'THEN return .', () {
        // Arrange
        final set = Set.fromData(
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
          ],
        );

        // Act & Assert
        expect(set.wonLegs, 2);
      });
    });

    group('average', () {
      test(
          'GIVEN 0 throws '
          'WHEN get average '
          'THEN return null.', () {
        // Arrange
        final set = Set(
          startingPoints: 301,
        );

        // Act & Assert
        expect(set.average, null);
      });

      test(
          'GIVEN >0 throws '
          'WHEN get average '
          'THEN return correct average.', () {
        // Arrange
        final set = Set.fromData(
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
          ],
        );

        // Act & Assert
        expect(set.average, 150.5);
      });
    });

    group('checkoutPercentage', () {
      test(
          'GIVEN 0 darts thrown '
          'WHEN get checkoutePercentage '
          'THEN return null.', () {
        // Arrange
        final set = Set(
          startingPoints: 301,
        );

        // Act & Assert
        expect(set.checkoutPercentage, null);
      });

      test(
          'GIVEN 0 won legs and 0 dartsOnDouble '
          'WHEN get checkoutePercentage '
          'THEN return null.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg.fromData(
              startingPoints: 301,
              throws: [
                Throw(points: 180),
                Throw(points: 101),
              ],
            ),
          ],
        );

        // Act & Assert
        expect(set.checkoutPercentage, null);
      });

      test(
          'GIVEN 0 won legs and >0 dartsOnDouble '
          'WHEN get checkoutePercentage '
          'THEN return 0.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg.fromData(
              startingPoints: 301,
              throws: [
                Throw(points: 180),
                Throw(points: 101, dartsOnDouble: 1),
              ],
            ),
          ],
        );

        // Act & Assert
        expect(set.checkoutPercentage, 0);
      });

      test(
          'GIVEN >0 won legs '
          'WHEN get checkoutePercentage '
          'THEN return correct checkout percentage.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg.fromData(
              startingPoints: 301,
              throws: [
                Throw(points: 180),
                Throw(points: 101),
                Throw(points: 20, dartsOnDouble: 3),
              ],
            ),
          ],
        );

        // Act & Assert
        expect(set.checkoutPercentage, 1 / 3);
      });
    });

    group('firstNineAverage', () {
      test(
          'GIVEN 1 leg and 0 throws '
          'WHEN get firstNineAverage '
          'THEN return null.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg(startingPoints: 301),
          ],
        );

        // Act & Assert
        expect(set.firstNineAverage, null);
      });

      test(
          'GIVEN >1 legs and last leg has 0 throws '
          'WHEN get firstNineAverage '
          'THEN return correct firstNineAverage.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg.fromData(
              startingPoints: 301,
              throws: [
                Throw(points: 180),
                Throw(points: 121, dartsOnDouble: 1),
              ],
            ),
            Leg(startingPoints: 301),
          ],
        );

        // Act & Assert
        expect(set.firstNineAverage, 150.5);
      });

      test(
          'GIVEN >0 legs with <=9 darts and >0 legs with >9 darts '
          'WHEN get firstNineAverage '
          'THEN return correct firstNineAverage.', () {
        // Arrange
        final set = Set.fromData(
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
                Throw(points: 50),
                Throw(points: 50),
                Throw(points: 49),
                Throw(points: 50),
              ],
            ),
          ],
        );

        // Act & Assert
        expect(set.firstNineAverage, 90);
      });
    });

    group('highestFinish', () {
      test(
          'GIVEN 0 won legs and 0 dartsOnDouble'
          'WHEN get highestFinish '
          'THEN return null.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg.fromData(
              startingPoints: 301,
              throws: [
                Throw(points: 180),
                Throw(points: 101),
              ],
            ),
          ],
        );

        // Act & Assert
        expect(set.highestFinish, null);
      });

      test(
          'GIVEN 0 won legs and >0 dartsOnDouble '
          'WHEN get highestFinish '
          'THEN return 0.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg.fromData(
              startingPoints: 301,
              throws: [
                Throw(points: 180),
                Throw(points: 101, dartsOnDouble: 1),
              ],
            ),
          ],
        );

        // Act & Assert
        expect(set.highestFinish, null);
      });

      test(
          'GIVEN >0 won legs '
          'WHEN get highestFinish '
          'THEN return correct highest finish.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg.fromData(
              startingPoints: 301,
              throws: [
                Throw(points: 180),
                Throw(points: 101),
                Throw(points: 20, dartsOnDouble: 3),
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
        expect(set.highestFinish, 121);
      });
    });

    group('firstDartAverage', () {
      test(
          'GIVEN 1 leg and 0 throws '
          'WHEN get firstDartAverage '
          'THEN return null.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 501,
          legs: [
            Leg(startingPoints: 501),
          ],
        );

        // Act & Assert
        expect(set.firstDartAverage, null);
      });

      test(
          'GIVEN >0 legs and 0 throws with darts != null '
          'WHEN get firstDartAverage '
          'THEN return null.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg.fromData(
              startingPoints: 301,
              throws: [
                Throw(points: 180),
                Throw(points: 101),
                Throw(points: 20, dartsOnDouble: 2),
              ],
            ),
            Leg.fromData(
              startingPoints: 301,
              throws: [
                Throw(points: 180),
                Throw(points: 101),
                Throw(points: 20, dartsOnDouble: 2),
              ],
            ),
          ],
        );

        // Act & Assert
        expect(set.firstDartAverage, null);
      });

      test(
          'GIVEN >0 legs and >0 throws with darts != null and amount of first darts > 0 '
          'WHEN get firstDartAverage '
          'THEN return correct firstDartAverage.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg.fromData(
              startingPoints: 301,
              throws: [
                Throw.fromDarts(
                  darts: [
                    Dart(type: DartType.triple, value: 20),
                    Dart(type: DartType.triple, value: 19),
                    Dart(type: DartType.triple, value: 20),
                  ],
                  dartsOnDouble: 0,
                ),
                Throw.fromDarts(
                  darts: [
                    Dart(type: DartType.double, value: 20),
                    Dart(type: DartType.triple, value: 19),
                    Dart(type: DartType.single, value: 1),
                  ],
                  dartsOnDouble: 0,
                ),
                Throw(points: 20, dartsOnDouble: 2),
              ],
            ),
            Leg.fromData(
              startingPoints: 301,
              throws: [
                Throw.fromDarts(
                  darts: [
                    Dart(type: DartType.triple, value: 20),
                    Dart(type: DartType.triple, value: 19),
                    Dart(type: DartType.triple, value: 20),
                  ],
                  dartsOnDouble: 0,
                ),
                Throw.fromDarts(
                  darts: [
                    Dart(type: DartType.double, value: 20),
                    Dart(type: DartType.triple, value: 19),
                    Dart(type: DartType.single, value: 1),
                  ],
                  dartsOnDouble: 0,
                ),
                Throw(points: 20, dartsOnDouble: 2),
              ],
            )
          ],
        );

        // Act & Assert
        expect(set.firstDartAverage, 50);
      });
    });

    group('secondDartAverage', () {
      test(
          'GIVEN 1 leg and 0 throws '
          'WHEN get secondDartAverage '
          'THEN return null.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 501,
          legs: [
            Leg(startingPoints: 501),
          ],
        );

        // Act & Assert
        expect(set.secondDartAverage, null);
      });

      test(
          'GIVEN >0 legs and 0 throws with darts != null '
          'WHEN get secondDartAverage '
          'THEN return null.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg.fromData(
              startingPoints: 301,
              throws: [
                Throw(points: 180),
                Throw(points: 101),
                Throw(points: 20, dartsOnDouble: 2),
              ],
            ),
            Leg.fromData(
              startingPoints: 301,
              throws: [
                Throw(points: 180),
                Throw(points: 101),
                Throw(points: 20, dartsOnDouble: 2),
              ],
            ),
          ],
        );

        // Act & Assert
        expect(set.secondDartAverage, null);
      });

      test(
          'GIVEN >0 legs and >0 throws with darts != null and amount of first darts > 0 '
          'WHEN get secondDartAverage '
          'THEN return correct secondDartAverage.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg.fromData(
              startingPoints: 301,
              throws: [
                Throw.fromDarts(
                  darts: [
                    Dart(type: DartType.triple, value: 19),
                    Dart(type: DartType.triple, value: 20),
                    Dart(type: DartType.triple, value: 20),
                  ],
                  dartsOnDouble: 0,
                ),
                Throw.fromDarts(
                  darts: [
                    Dart(type: DartType.triple, value: 19),
                    Dart(type: DartType.double, value: 20),
                    Dart(type: DartType.single, value: 1),
                  ],
                  dartsOnDouble: 0,
                ),
                Throw(points: 20, dartsOnDouble: 2),
              ],
            ),
            Leg.fromData(
              startingPoints: 301,
              throws: [
                Throw.fromDarts(
                  darts: [
                    Dart(type: DartType.triple, value: 19),
                    Dart(type: DartType.triple, value: 20),
                    Dart(type: DartType.triple, value: 20),
                  ],
                  dartsOnDouble: 0,
                ),
                Throw.fromDarts(
                  darts: [
                    Dart(type: DartType.triple, value: 19),
                    Dart(type: DartType.double, value: 20),
                    Dart(type: DartType.single, value: 1),
                  ],
                  dartsOnDouble: 0,
                ),
                Throw(points: 20, dartsOnDouble: 2),
              ],
            )
          ],
        );

        // Act & Assert
        expect(set.secondDartAverage, 50);
      });
    });

    group('thirdDartAverage', () {
      test(
          'GIVEN 1 leg and 0 throws '
          'WHEN get thirdDartAverage '
          'THEN return null.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 501,
          legs: [
            Leg(startingPoints: 501),
          ],
        );

        // Act & Assert
        expect(set.thirdDartAverage, null);
      });

      test(
          'GIVEN >0 legs and 0 throws with darts != null '
          'WHEN get thirdDartAverage '
          'THEN return null.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg.fromData(
              startingPoints: 301,
              throws: [
                Throw(points: 180),
                Throw(points: 101),
                Throw(points: 20, dartsOnDouble: 2),
              ],
            ),
            Leg.fromData(
              startingPoints: 301,
              throws: [
                Throw(points: 180),
                Throw(points: 101),
                Throw(points: 20, dartsOnDouble: 2),
              ],
            ),
          ],
        );

        // Act & Assert
        expect(set.thirdDartAverage, null);
      });

      test(
          'GIVEN >0 legs and >0 throws with darts != null and amount of first darts > 0 '
          'WHEN get thirdDartAverage '
          'THEN return correct thirdDartAverage.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg.fromData(
              startingPoints: 301,
              throws: [
                Throw.fromDarts(
                  darts: [
                    Dart(type: DartType.triple, value: 20),
                    Dart(type: DartType.triple, value: 20),
                    Dart(type: DartType.triple, value: 20),
                  ],
                  dartsOnDouble: 0,
                ),
                Throw.fromDarts(
                  darts: [
                    Dart(type: DartType.triple, value: 20),
                    Dart(type: DartType.double, value: 20),
                    Dart(type: DartType.single, value: 1),
                  ],
                  dartsOnDouble: 0,
                ),
                Throw(points: 20, dartsOnDouble: 2),
              ],
            ),
            Leg.fromData(
              startingPoints: 301,
              throws: [
                Throw.fromDarts(
                  darts: [
                    Dart(type: DartType.triple, value: 20),
                    Dart(type: DartType.triple, value: 20),
                    Dart(type: DartType.triple, value: 20),
                  ],
                  dartsOnDouble: 0,
                ),
                Throw.fromDarts(
                  darts: [
                    Dart(type: DartType.triple, value: 20),
                    Dart(type: DartType.double, value: 20),
                    Dart(type: DartType.single, value: 1),
                  ],
                  dartsOnDouble: 0,
                ),
                Throw(points: 20, dartsOnDouble: 2),
              ],
            )
          ],
        );

        // Act & Assert
        expect(set.thirdDartAverage, 30.5);
      });
    });

    group('fourtyPlus', () {
      test(
          'GIVEN 1 leg and 0 throws '
          'WHEN get fourtyPlus '
          'THEN return 0.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg(startingPoints: 301),
          ],
        );

        // Act & Assert
        expect(set.fourtyPlus, 0);
      });

      test(
          'GIVEN >0 legs and >0 throws '
          'WHEN get fourtyPlus '
          'THEN return amount of throws with 40 <= points < 60.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 701,
          legs: [
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 40),
              ],
            ),
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 50),
              ],
            ),
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 59),
              ],
            ),
          ],
        );

        // Act & Assert
        expect(set.fourtyPlus, 3);
      });
    });

    group('sixtyPlus', () {
      test(
          'GIVEN 1 leg and 0 throws '
          'WHEN get sixtyPlus '
          'THEN return 0.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg(startingPoints: 301),
          ],
        );

        // Act & Assert
        expect(set.sixtyPlus, 0);
      });

      test(
          'GIVEN >0 legs and >0 throws '
          'WHEN get sixtyPlus '
          'THEN return amount of throws with 60 <= points < 80.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 701,
          legs: [
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 60),
              ],
            ),
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 70),
              ],
            ),
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 79),
              ],
            ),
          ],
        );

        // Act & Assert
        expect(set.sixtyPlus, 3);
      });
    });

    group('eightyPlus', () {
      test(
          'GIVEN 1 leg and 0 throws '
          'WHEN get eightyPlus '
          'THEN return 0.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg(startingPoints: 301),
          ],
        );

        // Act & Assert
        expect(set.eightyPlus, 0);
      });

      test(
          'GIVEN >0 legs and >0 throws '
          'WHEN get eightyPlus '
          'THEN return amount of throws with 80 <= points < 100.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 701,
          legs: [
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 80),
              ],
            ),
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 90),
              ],
            ),
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 99),
              ],
            ),
          ],
        );

        // Act & Assert
        expect(set.eightyPlus, 3);
      });
    });

    group('hundredPlus', () {
      test(
          'GIVEN 1 leg and 0 throws '
          'WHEN get hundredPlus '
          'THEN return 0.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg(startingPoints: 301),
          ],
        );

        // Act & Assert
        expect(set.hundredPlus, 0);
      });

      test(
          'GIVEN >0 legs and >0 throws '
          'WHEN get hundredPlus '
          'THEN return amount of throws with 100 <= points < 120.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 701,
          legs: [
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 100),
              ],
            ),
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 110),
              ],
            ),
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 119),
              ],
            ),
          ],
        );

        // Act & Assert
        expect(set.hundredPlus, 3);
      });
    });

    group('hundredTwentyPlus', () {
      test(
          'GIVEN 1 leg and 0 throws '
          'WHEN get hundredTwentyPlus '
          'THEN return 0.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg(startingPoints: 301),
          ],
        );

        // Act & Assert
        expect(set.hundredTwentyPlus, 0);
      });

      test(
          'GIVEN >0 legs and >0 throws '
          'WHEN get hundredTwentyPlus '
          'THEN return amount of throws with 120 <= points < 140.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 701,
          legs: [
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 120),
              ],
            ),
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 130),
              ],
            ),
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 139),
              ],
            ),
          ],
        );

        // Act & Assert
        expect(set.hundredTwentyPlus, 3);
      });
    });

    group('hundredFourtyPlus', () {
      test(
          'GIVEN 1 leg and 0 throws '
          'WHEN get hundredFourtyPlus '
          'THEN return 0.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg(startingPoints: 301),
          ],
        );

        // Act & Assert
        expect(set.hundredFourtyPlus, 0);
      });

      test(
          'GIVEN >0 legs and >0 throws '
          'WHEN get hundredFourtyPlus '
          'THEN return amount of throws with 140 <= points < 160.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 701,
          legs: [
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 140),
              ],
            ),
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 150),
              ],
            ),
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 159),
              ],
            ),
          ],
        );

        // Act & Assert
        expect(set.hundredFourtyPlus, 3);
      });
    });

    group('hundredSixtyPlus', () {
      test(
          'GIVEN 1 leg and 0 throws '
          'WHEN get hundredSixtyPlus '
          'THEN return 0.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg(startingPoints: 301),
          ],
        );

        // Act & Assert
        expect(set.hundredSixtyPlus, 0);
      });

      test(
          'GIVEN >0 legs and >0 throws '
          'WHEN get hundredSixtyPlus '
          'THEN return amount of throws with 160 <= points < 180.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 701,
          legs: [
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 160),
              ],
            ),
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 170),
              ],
            ),
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 177),
              ],
            ),
          ],
        );

        // Act & Assert
        expect(set.hundredSixtyPlus, 3);
      });
    });

    group('hundredEighty', () {
      test(
          'GIVEN 1 leg and 0 throws '
          'WHEN get hundredEighty '
          'THEN return 0.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 301,
          legs: [
            Leg(startingPoints: 301),
          ],
        );

        // Act & Assert
        expect(set.hundredEighty, 0);
      });

      test(
          'GIVEN >0 legs and >0 throws '
          'WHEN get hundredEighty '
          'THEN return amount of throws with points == 180.', () {
        // Arrange
        final set = Set.fromData(
          startingPoints: 701,
          legs: [
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 180),
              ],
            ),
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 180),
              ],
            ),
            Leg.fromData(
              startingPoints: 701,
              throws: [
                Throw(points: 180),
              ],
            ),
          ],
        );

        // Act & Assert
        expect(set.hundredEighty, 3);
      });
    });
  });

  group('toString', () {
    test(
        'GIVEN - '
        'WHEN toString() called '
        'THEN return correct string representation.', () {
      // Arrange
      final legs = [
        Leg(startingPoints: 501),
      ];
      final set = Set.fromData(
        startingPoints: 501,
        legs: legs,
      );

      // Act & Assert
      expect(
        set.toString(),
        'Set{startingPoints: 501, legs: $legs}',
      );
    });
  });
}
