import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dart_game/dart_game.dart';

void main() {
  group('constructor', () {
    group('()', () {
      group('default args', () {
        test(
            'GIVEN dartsThrown not provided '
            'WHEN new instance created '
            'THEN assign dartsThrown to 3.', () {
          // Arrange & Act
          final t = Throw(points: 180);

          // Assert
          expect(t.dartsThrown, 3);
        });

        test(
            'GIVEN dartsOnDouble not provided '
            'WHEN new instance created '
            'THEN assign dartsOnDouble to 0.', () {
          // Arrange & Act
          final t = Throw(points: 180);

          // Assert
          expect(t.dartsOnDouble, 0);
        });
      });

      group('valid args', () {
        test(
            'GIVEN valid args '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange
          final points = 100;
          final dartsThrown = 2;
          final dartsOnDouble = 1;

          // Act
          final t = Throw(
            points: points,
            dartsThrown: dartsThrown,
            dartsOnDouble: dartsOnDouble,
          );

          // Assert
          expect(t.points, points);
          expect(t.dartsThrown, dartsThrown);
          expect(t.dartsOnDouble, dartsOnDouble);
          expect(t.darts, null);
        });
      });

      group('invalid args', () {
        test(
            'GIVEN points < 0 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final points = -1;

          // Act & Assert
          expect(() => Throw(points: points), throwsA(isArgumentError));
        });

        test(
            'GIVEN points > 180 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final points = 181;

          // Act & Assert
          expect(() => Throw(points: points), throwsA(isArgumentError));
        });

        test(
            'GIVEN dartsThrown < 1 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final dartsThrown = 0;

          // Act & Assert
          expect(
            () => Throw(points: 2, dartsThrown: dartsThrown),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN dartsThrown > 3 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final dartsThrown = 4;

          // Act & Assert
          expect(
            () => Throw(points: 2, dartsThrown: dartsThrown),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN dartsOnDouble < 0 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final dartsOnDouble = -1;

          // Act & Assert
          expect(
            () => Throw(points: 2, dartsOnDouble: dartsOnDouble),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN dartsOnDouble > 3 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final dartsOnDouble = 4;

          // Act & Assert
          expect(
            () => Throw(points: 2, dartsOnDouble: dartsOnDouble),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN dartsOnDouble > dartsThrown '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final dartsThrown = 1;
          final dartsOnDouble = 2;

          // Act & Assert
          expect(
            () => Throw(
              points: 2,
              dartsThrown: dartsThrown,
              dartsOnDouble: dartsOnDouble,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN dartsThrown < 3 and dartsOnDouble = 0'
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final dartsThrown = 2;
          final dartsOnDouble = 0;

          // Act & Assert
          expect(
            () => Throw(
              points: 100,
              dartsThrown: dartsThrown,
              dartsOnDouble: dartsOnDouble,
            ),
            throwsA(isArgumentError),
          );
        });

        group('dartsThrown = 1', () {
          group('dartsOnDouble = 1', () {
            test(
                'GIVEN points > 50 '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = 51;
              final dartsThrown = 1;
              final dartsOnDouble = 1;

              // Act & Assert
              expect(
                () => Throw(
                  points: points,
                  dartsThrown: dartsThrown,
                  dartsOnDouble: dartsOnDouble,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN 40 < points < 50 or 0 <= points < 40 and not even '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = [
                0,
                1,
                3,
                5,
                7,
                9,
                11,
                13,
                15,
                17,
                19,
                21,
                23,
                25,
                27,
                29,
                31,
                33,
                35,
                37,
                39,
                41,
                42,
                43,
                44,
                45,
                46,
                47,
                48,
                49,
              ];
              final dartsThrown = 1;
              final dartsOnDouble = 1;

              // Act & Assert
              for (final p in points) {
                expect(
                  () => Throw(
                    points: p,
                    dartsThrown: dartsThrown,
                    dartsOnDouble: dartsOnDouble,
                  ),
                  throwsA(isArgumentError),
                );
              }
            });
          });
        });

        group('dartsThrown = 2', () {
          group('dartsOnDouble = 1', () {
            test(
                'GIVEN points > 110 '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = 111;
              final dartsThrown = 2;
              final dartsOnDouble = 1;

              // Act & Assert
              expect(
                () => Throw(
                  points: points,
                  dartsThrown: dartsThrown,
                  dartsOnDouble: dartsOnDouble,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN points element of {0, 1, 99, 102, 103, 105, 106, 108, 109} '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = [
                0,
                1,
                99,
                102,
                103,
                105,
                106,
                108,
                109,
              ];
              final dartsThrown = 2;
              final dartsOnDouble = 1;

              // Act & Assert
              for (final p in points) {
                expect(
                  () => Throw(
                    points: p,
                    dartsThrown: dartsThrown,
                    dartsOnDouble: dartsOnDouble,
                  ),
                  throwsA(isArgumentError),
                );
              }
            });
          });

          group('dartsOnDouble = 2', () {
            test(
                'GIVEN points > 50 '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = 51;
              final dartsThrown = 2;
              final dartsOnDouble = 2;

              // Act & Assert
              expect(
                () => Throw(
                  points: points,
                  dartsThrown: dartsThrown,
                  dartsOnDouble: dartsOnDouble,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN 40 < points < 50 or 0 <= points < 40 and not even '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = [
                0,
                1,
                3,
                5,
                7,
                9,
                11,
                13,
                15,
                17,
                19,
                21,
                23,
                25,
                27,
                29,
                31,
                33,
                35,
                37,
                39,
                41,
                42,
                43,
                44,
                45,
                46,
                47,
                48,
                49,
              ];
              final dartsThrown = 2;
              final dartsOnDouble = 2;

              // Act & Assert
              for (final p in points) {
                expect(
                  () => Throw(
                    points: p,
                    dartsThrown: dartsThrown,
                    dartsOnDouble: dartsOnDouble,
                  ),
                  throwsA(isArgumentError),
                );
              }
            });
          });
        });

        group('dartsThrown = 3', () {
          group('dartsOnDouble = 0', () {
            test(
                'GIVEN points element of {163, 166, 169, 172, 173, 175, 176, 178, 179} '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = [
                163,
                166,
                169,
                172,
                173,
                175,
                176,
                178,
                179,
              ];

              final dartsThrown = 3;
              final dartsOnDouble = 0;

              // Act & Assert
              for (final p in points) {
                expect(
                  () => Throw(
                    points: p,
                    dartsThrown: dartsThrown,
                    dartsOnDouble: dartsOnDouble,
                  ),
                  throwsA(isArgumentError),
                );
              }
            });
          });

          group('dartsOnDouble = 1', () {
            test(
                'GIVEN points > 170 '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = 171;
              final dartsThrown = 3;
              final dartsOnDouble = 1;

              // Act & Assert
              expect(
                () => Throw(
                  points: points,
                  dartsThrown: dartsThrown,
                  dartsOnDouble: dartsOnDouble,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN points element of {159, 162, 163, 165, 166, 168, 169} '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = [
                159,
                162,
                163,
                165,
                166,
                168,
                169,
              ];
              final dartsThrown = 3;
              final dartsOnDouble = 1;

              // Act & Assert
              for (final p in points) {
                expect(
                  () => Throw(
                    points: p,
                    dartsThrown: dartsThrown,
                    dartsOnDouble: dartsOnDouble,
                  ),
                  throwsA(isArgumentError),
                );
              }
            });
          });

          group('dartsOnDouble = 2', () {
            test(
                'GIVEN points > 110 '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = 111;
              final dartsThrown = 3;
              final dartsOnDouble = 2;

              // Act & Assert
              expect(
                () => Throw(
                  points: points,
                  dartsThrown: dartsThrown,
                  dartsOnDouble: dartsOnDouble,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN points = 109 '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = 109;
              final dartsThrown = 3;
              final dartsOnDouble = 2;

              // Act & Assert
              expect(
                () => Throw(
                  points: points,
                  dartsThrown: dartsThrown,
                  dartsOnDouble: dartsOnDouble,
                ),
                throwsA(isArgumentError),
              );
            });
          });

          group('dartsOnDouble = 3', () {
            test(
                'GIVEN points > 50 '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = 51;
              final dartsThrown = 3;
              final dartsOnDouble = 3;

              // Act & Assert
              expect(
                () => Throw(
                  points: points,
                  dartsThrown: dartsThrown,
                  dartsOnDouble: dartsOnDouble,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN points = 49 '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = 49;
              final dartsThrown = 3;
              final dartsOnDouble = 3;

              // Act & Assert
              expect(
                () => Throw(
                  points: points,
                  dartsThrown: dartsThrown,
                  dartsOnDouble: dartsOnDouble,
                ),
                throwsA(isArgumentError),
              );
            });
          });
        });
      });
    });

    group('fromDarts()', () {
      group('default args', () {
        test(
            'GIVEN dartsOnDouble not provided '
            'WHEN new instance created '
            'THEN assign dartsOnDouble to 0.', () {
          // Arrange & Act
          final t = Throw.fromDarts(
            darts: [
              Dart(type: DartType.triple, value: 20),
              Dart(type: DartType.triple, value: 20),
              Dart(type: DartType.triple, value: 20),
            ],
          );

          // Assert
          expect(t.dartsOnDouble, 0);
        });
      });

      group('valid args', () {
        test(
            'GIVEN valid args '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange
          final darts = [
            Dart(type: DartType.triple, value: 20),
            Dart(type: DartType.triple, value: 20),
            Dart(type: DartType.triple, value: 20),
          ];
          final dartsOnDouble = 0;

          // Act
          final t = Throw.fromDarts(
            darts: darts,
            dartsOnDouble: dartsOnDouble,
          );

          // Assert
          expect(t.points, 180);
          expect(t.dartsThrown, 3);
          expect(t.dartsOnDouble, dartsOnDouble);
          expect(t.darts, darts);
        });
      });

      group('invalid args', () {
        test(
            'GIVEN darts is empty '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final darts = <Dart>[];

          // Act & Assert
          expect(
            () => Throw.fromDarts(
              darts: darts,
              dartsOnDouble: 0,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN length of darts > 3 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final darts = [
            Dart(type: DartType.single, value: 20),
            Dart(type: DartType.single, value: 20),
            Dart(type: DartType.single, value: 20),
            Dart(type: DartType.single, value: 20),
          ];

          // Act & Assert
          expect(
            () => Throw.fromDarts(
              darts: darts,
              dartsOnDouble: 0,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN dartsOnDouble < 0 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final dartsOnDouble = -1;

          // Act & Assert
          expect(
            () => Throw.fromDarts(
              darts: [
                Dart(type: DartType.single, value: 20),
                Dart(type: DartType.double, value: 20),
                Dart(type: DartType.triple, value: 20),
              ],
              dartsOnDouble: dartsOnDouble,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN dartsOnDouble > 3 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final dartsOnDouble = 4;

          // Act & Assert
          expect(
            () => Throw.fromDarts(
              darts: [
                Dart(type: DartType.single, value: 20),
                Dart(type: DartType.double, value: 20),
                Dart(type: DartType.triple, value: 20),
              ],
              dartsOnDouble: dartsOnDouble,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN dartsOnDouble > length of darts '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final darts = [
            Dart(type: DartType.triple, value: 20),
            Dart(type: DartType.double, value: 20),
          ];
          final dartsOnDouble = 3;

          // Act & Assert
          expect(
            () => Throw.fromDarts(
              darts: darts,
              dartsOnDouble: dartsOnDouble,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN dartsOnDouble == 0 and length of darts < 3 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final darts = [
            Dart(type: DartType.triple, value: 20),
            Dart(type: DartType.double, value: 20),
          ];
          final dartsOnDouble = 0;

          // Act & Assert
          expect(
            () => Throw.fromDarts(
              darts: darts,
              dartsOnDouble: dartsOnDouble,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN dartsOnDouble > number of consecutive darts with type double counted from last to first '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final darts = [
            Dart(type: DartType.triple, value: 20),
            Dart(type: DartType.triple, value: 20),
            Dart(type: DartType.double, value: 20),
          ];
          final dartsOnDouble = 2;

          // Act & Assert
          expect(
            () => Throw.fromDarts(
              darts: darts,
              dartsOnDouble: dartsOnDouble,
            ),
            throwsA(isArgumentError),
          );
        });
      });
    });

    group('fromData()', () {
      group('default args', () {
        test(
            'GIVEN valid points and dartsOnDouble but dartsThrown not provided '
            'WHEN new instance created '
            'THEN assign dartsThrown to 3.', () {
          // Arrange
          final points = 50;
          final dartsOnDouble = 1;
          // Act
          final t = Throw.fromData(
            pointsOrDarts: left(points),
            dartsOnDouble: dartsOnDouble,
          );

          // Assert
          expect(t.dartsThrown, 3);
        });

        test(
            'GIVEN valid darts and dartsOnDouble but dartsThrown not provided '
            'WHEN new instance created '
            'THEN assign dartsThrown depending on darts.', () {
          // Arrange
          final darts = [
            Dart(type: DartType.triple, value: 20),
            Dart(type: DartType.double, value: 20),
          ];
          final dartsOnDouble = 1;
          // Act
          final t = Throw.fromData(
            pointsOrDarts: right(darts),
            dartsOnDouble: dartsOnDouble,
          );

          // Assert
          expect(t.dartsThrown, 2);
        });

        test(
            'GIVEN valid points but dartsOnDouble not provided '
            'WHEN new instance created '
            'THEN assign dartsOnDouble to 0.', () {
          // Arrange
          final points = 50;

          // Act
          final t = Throw.fromData(
            pointsOrDarts: left(points),
          );

          // Assert
          expect(t.dartsOnDouble, 0);
        });

        test(
            'GIVEN valid darts but dartsOnDouble not provided '
            'WHEN new instance created '
            'THEN assign dartsOnDouble to 0.', () {
          // Arrange
          final darts = [
            Dart(type: DartType.triple, value: 20),
            Dart(type: DartType.double, value: 20),
            Dart(type: DartType.double, value: 20),
          ];

          // Act
          final t = Throw.fromData(
            pointsOrDarts: right(darts),
          );

          // Assert
          expect(t.dartsOnDouble, 0);
        });
      });

      group('valid args', () {
        test(
            'GIVEN valid points, dartsThrown and dartsOnDouble '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange
          final points = 50;
          final dartsThrown = 3;
          final dartsOnDouble = 1;

          // Act
          final t = Throw.fromData(
            pointsOrDarts: left(points),
            dartsThrown: dartsThrown,
            dartsOnDouble: dartsOnDouble,
          );

          // Assert
          expect(t.points, points);
          expect(t.dartsThrown, dartsThrown);
          expect(t.dartsOnDouble, dartsOnDouble);
        });

        test(
            'GIVEN valid darts dartsThrown, dartsOnDouble '
            'WHEN new instance created '
            'THEN asign darts, dartsOnDouble correctly and ignore dartsThrown '
            'and recalculate them depending on points.', () {
          // Arrange

          final dartsThrown = 2;
          final dartsOnDouble = 1;
          final darts = [
            Dart(type: DartType.triple, value: 20),
            Dart(type: DartType.triple, value: 20),
            Dart(type: DartType.double, value: 20),
          ];

          // Act
          final t = Throw.fromData(
            pointsOrDarts: right(darts),
            dartsThrown: dartsThrown,
            dartsOnDouble: dartsOnDouble,
          );

          // Assert
          expect(t.points, 160);
          expect(t.dartsThrown, 3);
          expect(t.dartsOnDouble, 1);
          expect(t.darts, darts);
        });
      });

      group('invalid args', () {
        group('dartsThrown = 1', () {
          group('dartsOnDouble = 1', () {
            test(
                'GIVEN points > 50 '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = 51;
              final dartsThrown = 1;
              final dartsOnDouble = 1;

              // Act & Assert
              expect(
                () => Throw.fromData(
                  pointsOrDarts: left(points),
                  dartsThrown: dartsThrown,
                  dartsOnDouble: dartsOnDouble,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN 40 < points < 50 or 0 <= points < 40 and not even '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = [
                0,
                1,
                3,
                5,
                7,
                9,
                11,
                13,
                15,
                17,
                19,
                21,
                23,
                25,
                27,
                29,
                31,
                33,
                35,
                37,
                39,
                41,
                42,
                43,
                44,
                45,
                46,
                47,
                48,
                49,
              ];
              final dartsThrown = 1;
              final dartsOnDouble = 1;

              // Act & Assert
              for (final p in points) {
                expect(
                  () => Throw.fromData(
                    pointsOrDarts: left(p),
                    dartsThrown: dartsThrown,
                    dartsOnDouble: dartsOnDouble,
                  ),
                  throwsA(isArgumentError),
                );
              }
            });
          });
        });

        group('dartsThrown = 2', () {
          group('dartsOnDouble = 1', () {
            test(
                'GIVEN points > 110 '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = 111;
              final dartsThrown = 2;
              final dartsOnDouble = 1;

              // Act & Assert
              expect(
                () => Throw.fromData(
                  pointsOrDarts: left(points),
                  dartsThrown: dartsThrown,
                  dartsOnDouble: dartsOnDouble,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN points element of {0, 1, 99, 102, 103, 105, 106, 108, 109} '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = [
                0,
                1,
                99,
                102,
                103,
                105,
                106,
                108,
                109,
              ];
              final dartsThrown = 2;
              final dartsOnDouble = 1;

              // Act & Assert
              for (final p in points) {
                expect(
                  () => Throw.fromData(
                    pointsOrDarts: left(p),
                    dartsThrown: dartsThrown,
                    dartsOnDouble: dartsOnDouble,
                  ),
                  throwsA(isArgumentError),
                );
              }
            });
          });

          group('dartsOnDouble = 2', () {
            test(
                'GIVEN points > 50 '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = 51;
              final dartsThrown = 2;
              final dartsOnDouble = 2;

              // Act & Assert
              expect(
                () => Throw.fromData(
                  pointsOrDarts: left(points),
                  dartsThrown: dartsThrown,
                  dartsOnDouble: dartsOnDouble,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN points element of {1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, '
                '25, 27, 29, 31, 33, 35, 37, 39, 41, 42, 43, 44, 45, 46, 47, 48, 49} '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = [
                1,
                3,
                5,
                7,
                9,
                11,
                13,
                15,
                17,
                19,
                21,
                23,
                25,
                27,
                29,
                31,
                33,
                35,
                37,
                39,
                41,
                42,
                43,
                44,
                45,
                46,
                47,
                48,
                49,
              ];
              final dartsThrown = 2;
              final dartsOnDouble = 2;

              // Act & Assert
              for (final p in points) {
                expect(
                  () => Throw.fromData(
                    pointsOrDarts: left(p),
                    dartsThrown: dartsThrown,
                    dartsOnDouble: dartsOnDouble,
                  ),
                  throwsA(isArgumentError),
                );
              }
            });
          });
        });

        group('dartsThrown = 3', () {
          group('dartsOnDouble = 0', () {
            test(
                'GIVEN points element of {163, 166, 169, 172, 173, 175, 176, 178, 179} '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = [
                163,
                166,
                169,
                172,
                173,
                175,
                176,
                178,
                179,
              ];

              final dartsThrown = 3;
              final dartsOnDouble = 0;

              // Act & Assert
              for (final p in points) {
                expect(
                  () => Throw.fromData(
                    pointsOrDarts: left(p),
                    dartsThrown: dartsThrown,
                    dartsOnDouble: dartsOnDouble,
                  ),
                  throwsA(isArgumentError),
                );
              }
            });
          });

          group('dartsOnDouble = 1', () {
            test(
                'GIVEN points > 170 '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = 171;
              final dartsThrown = 3;
              final dartsOnDouble = 1;

              // Act & Assert
              expect(
                () => Throw.fromData(
                  pointsOrDarts: left(points),
                  dartsThrown: dartsThrown,
                  dartsOnDouble: dartsOnDouble,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN points element of {159, 162, 163, 165, 166, 168, 169} '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = [
                159,
                162,
                163,
                165,
                166,
                168,
                169,
              ];
              final dartsThrown = 3;
              final dartsOnDouble = 1;

              // Act & Assert
              for (final p in points) {
                expect(
                  () => Throw.fromData(
                    pointsOrDarts: left(p),
                    dartsThrown: dartsThrown,
                    dartsOnDouble: dartsOnDouble,
                  ),
                  throwsA(isArgumentError),
                );
              }
            });
          });

          group('dartsOnDouble = 2', () {
            test(
                'GIVEN points > 110 '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = 111;
              final dartsThrown = 3;
              final dartsOnDouble = 2;

              // Act & Assert
              expect(
                () => Throw.fromData(
                  pointsOrDarts: left(points),
                  dartsThrown: dartsThrown,
                  dartsOnDouble: dartsOnDouble,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN points == 109 '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = 109;
              final dartsThrown = 3;
              final dartsOnDouble = 2;

              // Act & Assert
              expect(
                () => Throw.fromData(
                  pointsOrDarts: left(points),
                  dartsThrown: dartsThrown,
                  dartsOnDouble: dartsOnDouble,
                ),
                throwsA(isArgumentError),
              );
            });
          });

          group('dartsOnDouble = 3', () {
            test(
                'GIVEN points > 50 '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = 51;
              final dartsThrown = 3;
              final dartsOnDouble = 3;

              // Act & Assert
              expect(
                () => Throw.fromData(
                  pointsOrDarts: left(points),
                  dartsThrown: dartsThrown,
                  dartsOnDouble: dartsOnDouble,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN points = 49 '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final points = 49;
              final dartsThrown = 3;
              final dartsOnDouble = 3;

              // Act & Assert
              expect(
                () => Throw.fromData(
                  pointsOrDarts: left(points),
                  dartsThrown: dartsThrown,
                  dartsOnDouble: dartsOnDouble,
                ),
                throwsA(isArgumentError),
              );
            });
          });
        });
      });
    });
  });

  group('toString()', () {
    test(
        'GIVEN a valid throw with darts'
        'WHEN toString() called '
        'THEN return correct string representation.', () {
      // Arrange
      final darts = [
        Dart(type: DartType.triple, value: 20),
        Dart(type: DartType.triple, value: 20),
        Dart(type: DartType.triple, value: 20),
      ];

      // Act
      final t = Throw.fromDarts(
        darts: darts,
        dartsOnDouble: 0,
      );

      // Assert
      expect(
        t.toString(),
        'Throw{points: 180, dartsThrown: 3, dartsOnDouble: 0, darts: $darts}',
      );
    });
  });
}
