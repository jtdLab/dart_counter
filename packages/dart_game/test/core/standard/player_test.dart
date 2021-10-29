import 'package:dart_game/dart_game.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('constructor', () {
    group('()', () {
      group('valid args', () {
        test(
            'GIVEN no args '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange & Act
          final player = Player();

          // Assert
          expect(player.id, isNot(null));
          expect(player.name, null);
        });

        test(
            'GIVEN valid args '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange
          final id = 'dummyId';
          final name = 'dummyName';

          // Act
          final player = Player(id: id, name: name);

          // Assert
          expect(player.id, id);
          expect(player.name, name);
        });
      });
    });

    group('fromData()', () {
      group('valid args', () {
        test(
            'GIVEN only id '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange
          final id = 'dummyId';

          // Act
          final player = Player.fromData(id: id);

          // Assert
          expect(player.id, id);
          expect(player.name, null);
          expect(player.isCurrentTurn, null);
          expect(player.legsOrSets, null);
        });

        test(
            'GIVEN valid args '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange
          final id = 'dummyId';
          final name = 'dummyName';
          final legsOrSetsNeededToWin = 2;
          final isCurrentTurn = true;
          final legsOrSets = left<List<Leg>, List<Set>>(
            [
              Leg(startingPoints: 501),
            ],
          );

          // Act
          final player = Player.fromData(
            id: id,
            name: name,
            legsOrSetsNeededToWin: legsOrSetsNeededToWin,
            isCurrentTurn: isCurrentTurn,
            legsOrSets: legsOrSets,
          );

          // Assert
          expect(player.id, id);
          expect(player.name, name);
          expect(player.isCurrentTurn, isCurrentTurn);
          expect(player.legsOrSets, legsOrSets);
        });
      });

      group('invalid args', () {
        test(
            'GIVEN not all of (legsOrSetsNeededToWin = null, legsOrSets = null and isCurrentTurn = null)'
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final id = 'dummyId';
          final name = 'dummyName';
          final isCurrentTurn = true;

          // Act & Assert
          expect(
            () => Player.fromData(
              id: id,
              name: name,
              isCurrentTurn: isCurrentTurn,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN not all of (legsOrSetsNeededToWin != null, legsOrSets != null and isCurrentTurn != null)'
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final id = 'dummyId';
          final name = 'dummyName';
          final isCurrentTurn = true;
          final legsOrSets = left<List<Leg>, List<Set>>(
            [
              Leg(startingPoints: 501),
            ],
          );

          // Act & Assert
          expect(
            () => Player.fromData(
              id: id,
              name: name,
              isCurrentTurn: isCurrentTurn,
              legsOrSets: legsOrSets,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN value of legsOrSets is empty list '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final id = 'dummyId';
          final legsOrSets = left<List<Leg>, List<Set>>([]);

          // Act & Assert
          expect(
            () => Player.fromData(
              id: id,
              legsOrSets: legsOrSets,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN valid args and legsOrSetsNeededToWin is less than 1 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final id = 'dummyId';
          final name = 'dummyName';
          final legsOrSetsNeededToWin = 0;
          final isCurrentTurn = true;
          final legsOrSets = left<List<Leg>, List<Set>>(
            [
              Leg(startingPoints: 501),
            ],
          );

          // Act & Assert
          expect(
            () => Player.fromData(
              id: id,
              name: name,
              legsOrSetsNeededToWin: legsOrSetsNeededToWin,
              isCurrentTurn: isCurrentTurn,
              legsOrSets: legsOrSets,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN valid args and legs with unequal startingPoints '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final id = 'dummyId';
          final name = 'dummyName';
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
            () => Player.fromData(
              id: id,
              name: name,
              legsOrSetsNeededToWin: legsOrSetsNeededToWin,
              isCurrentTurn: isCurrentTurn,
              legsOrSets: legsOrSets,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN valid args and more won legs than legsOrSetsNeededToWin '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final id = 'dummyId';
          final name = 'dummyName';
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
            () => Player.fromData(
              id: id,
              name: name,
              legsOrSetsNeededToWin: legsOrSetsNeededToWin,
              isCurrentTurn: isCurrentTurn,
              legsOrSets: legsOrSets,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN valid args and set with unequal startingPoints '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final id = 'dummyId';
          final name = 'dummyName';
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
            () => Player.fromData(
              id: id,
              name: name,
              legsOrSetsNeededToWin: legsOrSetsNeededToWin,
              isCurrentTurn: isCurrentTurn,
              legsOrSets: legsOrSets,
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN valid args and more won set than legsOrSetsNeededToWin '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final id = 'dummyId';
          final name = 'dummyName';
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
            () => Player.fromData(
              id: id,
              name: name,
              legsOrSetsNeededToWin: legsOrSetsNeededToWin,
              isCurrentTurn: isCurrentTurn,
              legsOrSets: legsOrSets,
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
          'GIVEN sets = null '
          'WHEN get won '
          'THEN return null.', () {
        // Arrange
        final player = Player();
        // Act & Assert
        expect(player.won, null);
      });

      group('legs', () {
        test(
            'GIVEN won player '
            'WHEN get won '
            'THEN return true.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
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
            ),
          );

          // Act & Assert
          expect(player.won, true);
        });

        test(
            'GIVEN not won player '
            'WHEN get won '
            'THEN return false.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                    Throw(points: 121, dartsOnDouble: 1),
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.won, false);
        });
      });

      group('sets', () {
        test(
            'GIVEN won player '
            'WHEN get won '
            'THEN return true.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
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
            ),
          );

          // Act & Assert
          expect(player.won, true);
        });

        test(
            'GIVEN not won player '
            'WHEN get won '
            'THEN return false.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
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
              ],
            ),
          );

          // Act & Assert
          expect(player.won, false);
        });
      });
    });

    group('wonSets', () {
      test(
          'GIVEN sets = null '
          'WHEN get wonSets '
          'THEN return null.', () {
        // Arrange
        final player = Player();
        // Act & Assert
        expect(player.wonSets, null);
      });

      group('legs', () {
        test(
            'GIVEN >0 won legs '
            'WHEN get wonSets '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                    Throw(points: 121, dartsOnDouble: 1),
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.wonSets, null);
        });
      });

      group('sets', () {
        test(
            'GIVEN 2 won sets '
            'WHEN get won '
            'THEN return 2.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
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
            ),
          );

          // Act & Assert
          expect(player.wonSets, 2);
        });
      });
    });

    group('wonLegsCurrentSet', () {
      test(
          'GIVEN sets = null '
          'WHEN get wonLegsCurrentSet '
          'THEN return null.', () {
        // Arrange
        final player = Player();
        // Act & Assert
        expect(player.wonLegsCurrentSet, null);
      });

      group('legs', () {
        test(
            'GIVEN 2 won legs '
            'WHEN get wonLegsCurrentSet '
            'THEN return 2.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
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
            ),
          );

          // Act & Assert
          expect(player.wonLegsCurrentSet, 2);
        });
      });

      group('sets', () {
        test(
            'GIVEN 2 won legs in current set '
            'WHEN get won '
            'THEN return 2.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
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
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.wonLegsCurrentSet, 2);
        });
      });
    });

    group('pointsLeft', () {
      test(
          'GIVEN sets = null '
          'WHEN get pointsLeft '
          'THEN return null.', () {
        // Arrange
        final player = Player();
        // Act & Assert
        expect(player.pointsLeft, null);
      });

      group('legs', () {
        test(
            'GIVEN >0 legs '
            'WHEN get pointsLeft '
            'THEN return correct pointsLeft.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
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
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.pointsLeft, 121);
        });
      });

      group('sets', () {
        test(
            'GIVEN >0 sets and >0 legs '
            'WHEN get pointsLeft '
            'THEN return correct pointsLeft.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
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
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.pointsLeft, 121);
        });
      });
    });

    group('lastPoints', () {
      test(
          'GIVEN sets = null '
          'WHEN get lastPoints '
          'THEN return null.', () {
        // Arrange
        final player = Player();
        // Act & Assert
        expect(player.lastPoints, null);
      });

      group('legs', () {
        test(
            'GIVEN 0 throws '
            'WHEN get lastPoints '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.lastPoints, null);
        });

        test(
            'GIVEN >0 throws '
            'WHEN get lastPoints '
            'THEN return points of last throw.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
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
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.lastPoints, 180);
        });
      });

      group('sets', () {
        test(
            'GIVEN >0 sets and >0 legs and 0 throws '
            'WHEN get lastPoints '
            'THEN return correct pointsLeft.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
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
            ),
          );

          // Act & Assert
          expect(player.pointsLeft, 301);
        });

        test(
            'GIVEN >0 sets and >0 legs >0 throws '
            'WHEN get lastPoints '
            'THEN return correct pointsLeft.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
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
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.lastPoints, 180);
        });
      });
    });

    group('finishRecommendation', () {
      test(
          'GIVEN sets = null '
          'WHEN get finishRecommendation '
          'THEN return null.', () {
        // Arrange
        final player = Player();
        // Act & Assert
        expect(player.finishRecommendation, null);
      });

      group('legs', () {
        test(
            'GIVEN no finish left '
            'WHEN get finishRecommendation '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.finishRecommendation, null);
        });

        test(
            'GIVEN finish left '
            'WHEN get finishRecommendation '
            'THEN return correct finish recommendation.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [Throw(points: 180)],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.finishRecommendation, ['T20', 'T11', 'D14']);
        });
      });

      group('sets', () {
        test(
            'GIVEN no finish left '
            'WHEN get finishRecommendation '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
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
            ),
          );

          // Act & Assert
          expect(player.finishRecommendation, null);
        });

        test(
            'GIVEN finish left '
            'WHEN get finishRecommendation '
            'THEN return correct finish recommendation.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
                  startingPoints: 301,
                  legs: [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.finishRecommendation, ['T20', 'T11', 'D14']);
        });
      });
    });

    group('dartsThrownCurrentLeg', () {
      test(
          'GIVEN sets = null '
          'WHEN get dartsThrownCurrentLeg '
          'THEN return null.', () {
        // Arrange
        final player = Player();
        // Act & Assert
        expect(player.dartsThrownCurrentLeg, null);
      });

      group('legs', () {
        test(
            'GIVEN 0 throws '
            'WHEN get dartsThrownCurrentLeg '
            'THEN return 0.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.dartsThrownCurrentLeg, 0);
        });

        test(
            'GIVEN >0 throws '
            'WHEN get dartsThrownCurrentLeg '
            'THEN return correct amount of darts thrown in current leg.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                    Throw(points: 101),
                    Throw(points: 20, dartsThrown: 1, dartsOnDouble: 1)
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.dartsThrownCurrentLeg, 7);
        });
      });

      group('sets', () {
        test(
            'GIVEN >0 sets and >0 legs and 0 throws '
            'WHEN get dartsThrownCurrentLeg '
            'THEN return 0.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
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
            ),
          );

          // Act & Assert
          expect(player.dartsThrownCurrentLeg, 0);
        });

        test(
            'GIVEN >0 sets and >0 legs and >0 throws '
            'WHEN get dartsThrownCurrentLeg '
            'THEN return correct darts thrown current in current leg.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
                  startingPoints: 301,
                  legs: [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                        Throw(points: 101),
                        Throw(points: 20, dartsThrown: 1, dartsOnDouble: 1),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.dartsThrownCurrentLeg, 7);
        });
      });
    });

    group('average', () {
      test(
          'GIVEN sets = null '
          'WHEN get average '
          'THEN return null.', () {
        // Arrange
        final player = Player();
        // Act & Assert
        expect(player.average, null);
      });

      group('legs', () {
        test(
            'GIVEN 0 throws '
            'WHEN get average '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.average, null);
        });

        test(
            'GIVEN >0 legs >0 throws '
            'WHEN get average '
            'THEN return correct average.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                    Throw(points: 121, dartsOnDouble: 1)
                  ],
                ),
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                    Throw(points: 121, dartsOnDouble: 1)
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.average, 150.5);
        });
      });

      group('sets', () {
        test(
            'GIVEN >0 sets and >0 legs and 0 throws '
            'WHEN get average '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
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
            ),
          );

          // Act & Assert
          expect(player.average, null);
        });

        test(
            'GIVEN >0 sets and >0 legs and >0 throws '
            'WHEN get average '
            'THEN return correct average.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
                  startingPoints: 301,
                  legs: [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                        Throw(points: 101),
                        Throw(points: 20, dartsThrown: 1, dartsOnDouble: 1),
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
            ),
          );

          // Act & Assert
          expect(player.average, 1806 / 13);
        });
      });
    });

    group('checkoutPercentage', () {
      test(
          'GIVEN sets = null '
          'WHEN get checkoutPercentage '
          'THEN return null.', () {
        // Arrange
        final player = Player();
        // Act & Assert
        expect(player.checkoutPercentage, null);
      });

      group('legs', () {
        test(
            'GIVEN 0 darts on double '
            'WHEN get checkoutPercentage '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.checkoutPercentage, null);
        });

        test(
            'GIVEN >0 legs >0 throws on double '
            'WHEN get checkoutPercentage '
            'THEN return correct checkout percentage.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                    Throw(points: 121, dartsOnDouble: 1)
                  ],
                ),
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                    Throw(points: 101),
                    Throw(points: 20, dartsOnDouble: 2)
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.checkoutPercentage, 2 / 3);
        });
      });

      group('sets', () {
        test(
            'GIVEN >0 sets and >0 legs and 0 throws on double '
            'WHEN get checkoutPercentage '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
                  startingPoints: 301,
                  legs: [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.checkoutPercentage, null);
        });

        test(
            'GIVEN >0 sets and >0 legs and >0 throws on double '
            'WHEN get checkoutPercentage '
            'THEN return correct checkoutPercentage.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
                  startingPoints: 301,
                  legs: [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                        Throw(points: 101),
                        Throw(points: 20, dartsThrown: 1, dartsOnDouble: 1),
                      ],
                    ),
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                        Throw(points: 101),
                        Throw(points: 20, dartsOnDouble: 3),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.checkoutPercentage, 0.5);
        });
      });
    });

    group('firstNineAverage', () {
      test(
          'GIVEN sets = null '
          'WHEN get firstNineAverage '
          'THEN return null.', () {
        // Arrange
        final player = Player();
        // Act & Assert
        expect(player.firstNineAverage, null);
      });

      group('legs', () {
        test(
            'GIVEN 0 throws '
            'WHEN get firstNineAverage '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.firstNineAverage, null);
        });

        test(
            'GIVEN >0 legs >0 throws '
            'WHEN get firstNineAverage '
            'THEN return correct firstNineAverage.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 60),
                    Throw(points: 60),
                    Throw(points: 60),
                    Throw(points: 121, dartsOnDouble: 1)
                  ],
                ),
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 60),
                    Throw(points: 60),
                    Throw(points: 60),
                    Throw(points: 121, dartsOnDouble: 1)
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.firstNineAverage, 60);
        });
      });

      group('sets', () {
        test(
            'GIVEN >0 sets and >0 legs and 0 throws '
            'WHEN get firstNineAverage '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
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
            ),
          );

          // Act & Assert
          expect(player.firstNineAverage, null);
        });

        test(
            'GIVEN >0 sets and >0 legs and >0 throws '
            'WHEN get firstNineAverage '
            'THEN return correct firstNineAverage.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
                  startingPoints: 301,
                  legs: [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 60),
                        Throw(points: 60),
                        Throw(points: 60),
                        Throw(points: 101),
                        Throw(points: 20, dartsThrown: 1, dartsOnDouble: 1),
                      ],
                    ),
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 60),
                        Throw(points: 60),
                        Throw(points: 60),
                        Throw(points: 121, dartsOnDouble: 1),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.firstNineAverage, 60);
        });
      });
    });

    group('bestLegDartsThrown', () {
      test(
          'GIVEN sets = null '
          'WHEN get bestLegDartsThrown '
          'THEN return null.', () {
        // Arrange
        final player = Player();
        // Act & Assert
        expect(player.bestLegDartsThrown, null);
      });

      group('legs', () {
        test(
            'GIVEN 0 won legs '
            'WHEN get bestLegDartsThrown '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.bestLegDartsThrown, null);
        });

        test(
            'GIVEN >0 won legs '
            'WHEN get bestLegDartsThrown '
            'THEN return correct bestLegDartsThrown.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                    Throw(points: 121, dartsOnDouble: 1)
                  ],
                ),
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 60),
                    Throw(points: 60),
                    Throw(points: 60),
                    Throw(points: 121, dartsOnDouble: 1)
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.bestLegDartsThrown, 6);
        });
      });

      group('sets', () {
        test(
            'GIVEN 0 won legs '
            'WHEN get bestLegDartsThrown '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
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
            ),
          );

          // Act & Assert
          expect(player.bestLegDartsThrown, null);
        });

        test(
            'GIVEN >0 won legs '
            'WHEN get bestLegDartsThrown '
            'THEN return correct bestLegDartsThrown.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
                  startingPoints: 301,
                  legs: [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 60),
                        Throw(points: 60),
                        Throw(points: 60),
                        Throw(points: 101),
                        Throw(points: 20, dartsThrown: 1, dartsOnDouble: 1),
                      ],
                    ),
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 60),
                        Throw(points: 60),
                        Throw(points: 60),
                        Throw(points: 121, dartsOnDouble: 1),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.bestLegDartsThrown, 12);
        });
      });
    });

    group('bestLegAverage', () {
      test(
          'GIVEN sets = null '
          'WHEN get bestLegAverage '
          'THEN return null.', () {
        // Arrange
        final player = Player();
        // Act & Assert
        expect(player.bestLegAverage, null);
      });

      group('legs', () {
        test(
            'GIVEN 0 won legs '
            'WHEN get bestLegAverage '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.bestLegAverage, null);
        });

        test(
            'GIVEN >0 won legs '
            'WHEN get bestLegAverage '
            'THEN return correct bestLegAverage.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                    Throw(points: 121, dartsOnDouble: 1)
                  ],
                ),
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 90),
                    Throw(points: 90),
                    Throw(points: 121, dartsOnDouble: 1)
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.bestLegAverage, 150.5);
        });
      });

      group('sets', () {
        test(
            'GIVEN 0 won legs '
            'WHEN get bestLegAverage '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
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
            ),
          );

          // Act & Assert
          expect(player.bestLegAverage, null);
        });

        test(
            'GIVEN >0 won legs '
            'WHEN get bestLegAverage '
            'THEN return correct bestLegAverage.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
                  startingPoints: 301,
                  legs: [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                        Throw(points: 101),
                        Throw(points: 20, dartsThrown: 1, dartsOnDouble: 1),
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
            ),
          );

          // Act & Assert
          expect(player.bestLegAverage, 150.5);
        });
      });
    });

    group('worstLegDartsThrown', () {
      test(
          'GIVEN sets = null '
          'WHEN get worstLegDartThrown '
          'THEN return null.', () {
        // Arrange
        final player = Player();
        // Act & Assert
        expect(player.worstLegDartsThrown, null);
      });

      group('legs', () {
        test(
            'GIVEN 0 won legs '
            'WHEN get worstLegDartsThrown '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.worstLegDartsThrown, null);
        });

        test(
            'GIVEN >0 won legs '
            'WHEN get worstLegDartsThrown '
            'THEN return correct worstLegDartsThrown.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                    Throw(points: 121, dartsOnDouble: 1)
                  ],
                ),
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 60),
                    Throw(points: 60),
                    Throw(points: 60),
                    Throw(points: 121, dartsOnDouble: 1)
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.worstLegDartsThrown, 12);
        });
      });

      group('sets', () {
        test(
            'GIVEN 0 won legs '
            'WHEN get worstLegDartsThrown '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
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
            ),
          );

          // Act & Assert
          expect(player.worstLegDartsThrown, null);
        });

        test(
            'GIVEN >0 won legs '
            'WHEN get worstLegDartsThrown '
            'THEN return correct worstLegDartsThrown.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
                  startingPoints: 301,
                  legs: [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 60),
                        Throw(points: 60),
                        Throw(points: 60),
                        Throw(points: 101),
                        Throw(points: 20, dartsThrown: 1, dartsOnDouble: 1),
                      ],
                    ),
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 60),
                        Throw(points: 60),
                        Throw(points: 60),
                        Throw(points: 121, dartsOnDouble: 1),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.worstLegDartsThrown, 13);
        });
      });
    });

    group('worstLegAverage', () {
      test(
          'GIVEN sets = null '
          'WHEN get worstLegAverage '
          'THEN return null.', () {
        // Arrange
        final player = Player();
        // Act & Assert
        expect(player.worstLegAverage, null);
      });

      group('legs', () {
        test(
            'GIVEN 0 won legs '
            'WHEN get worstLegAverage '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.worstLegAverage, null);
        });

        test(
            'GIVEN >0 won legs '
            'WHEN get worstLegAverage '
            'THEN return correct worstLegAverage.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                    Throw(points: 121, dartsOnDouble: 1)
                  ],
                ),
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 90),
                    Throw(points: 90),
                    Throw(points: 121, dartsOnDouble: 1)
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.worstLegAverage, 301 / 3);
        });
      });

      group('sets', () {
        test(
            'GIVEN 0 won legs '
            'WHEN get worstLegAverage '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
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
            ),
          );

          // Act & Assert
          expect(player.worstLegAverage, null);
        });

        test(
            'GIVEN >0 won legs '
            'WHEN get worstLegAverage '
            'THEN return correct worstLegAverage.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
                  startingPoints: 301,
                  legs: [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                        Throw(points: 101),
                        Throw(points: 20, dartsThrown: 1, dartsOnDouble: 1),
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
            ),
          );

          // Act & Assert
          expect(player.worstLegAverage, 903 / 7);
        });
      });
    });

    group('averageDartsPerLeg', () {
      test(
          'GIVEN sets = null '
          'WHEN get averageDartsPerLeg '
          'THEN return null.', () {
        // Arrange
        final player = Player();
        // Act & Assert
        expect(player.averageDartsPerLeg, null);
      });

      group('legs', () {
        test(
            'GIVEN 0 won legs '
            'WHEN get averageDartsPerLeg '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.averageDartsPerLeg, null);
        });

        test(
            'GIVEN >0 won legs '
            'WHEN get averageDartsPerLeg '
            'THEN return correct averageDartsPerLeg.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                    Throw(points: 121, dartsOnDouble: 1)
                  ],
                ),
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                  ],
                ),
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 90),
                    Throw(points: 90),
                    Throw(points: 121, dartsOnDouble: 1)
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.averageDartsPerLeg, 7.5);
        });
      });

      group('sets', () {
        test(
            'GIVEN 0 won legs '
            'WHEN get averageDartsPerLeg '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
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
            ),
          );

          // Act & Assert
          expect(player.averageDartsPerLeg, null);
        });

        test(
            'GIVEN >0 won legs '
            'WHEN get averageDartsPerLeg '
            'THEN return correct averageDartsPerLeg.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
                  startingPoints: 301,
                  legs: [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                        Throw(points: 101),
                        Throw(points: 20, dartsThrown: 1, dartsOnDouble: 1),
                      ],
                    ),
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
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
            ),
          );

          // Act & Assert
          expect(player.averageDartsPerLeg, 6.5);
        });
      });
    });

    group('highestFinish', () {
      test(
          'GIVEN sets = null '
          'WHEN get highestFinish '
          'THEN return null.', () {
        // Arrange
        final player = Player();
        // Act & Assert
        expect(player.highestFinish, null);
      });

      group('legs', () {
        test(
            'GIVEN 0 won legs '
            'WHEN get highestFinish '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.highestFinish, null);
        });

        test(
            'GIVEN >0 won legs '
            'WHEN get highestFinish '
            'THEN return correct highestFinish.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                    Throw(points: 121, dartsOnDouble: 1)
                  ],
                ),
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                  ],
                ),
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 90),
                    Throw(points: 90),
                    Throw(points: 101),
                    Throw(points: 20, dartsOnDouble: 1)
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.highestFinish, 121);
        });
      });

      group('sets', () {
        test(
            'GIVEN 0 won legs '
            'WHEN get highestFinish '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
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
            ),
          );

          // Act & Assert
          expect(player.highestFinish, null);
        });

        test(
            'GIVEN >0 won legs '
            'WHEN get highestFinish '
            'THEN return correct highestFinish.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
                  startingPoints: 301,
                  legs: [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                        Throw(points: 101),
                        Throw(points: 20, dartsThrown: 1, dartsOnDouble: 1),
                      ],
                    ),
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
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
            ),
          );

          // Act & Assert
          expect(player.highestFinish, 121);
        });
      });
    });

    group('firstDartAverage', () {
      test(
          'GIVEN sets = null '
          'WHEN get firstDartAverage '
          'THEN return null.', () {
        // Arrange
        final player = Player();
        // Act & Assert
        expect(player.firstDartAverage, null);
      });

      group('legs', () {
        test(
            'GIVEN 0 1st darts thrown '
            'WHEN get firstDartAverage '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.firstDartAverage, null);
        });

        test(
            'GIVEN >0 1st darts thrown '
            'WHEN get firstDartAverage '
            'THEN return correct average of first dart.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                    Throw.fromDarts(
                      darts: [
                        Dart(type: DartType.triple, value: 20),
                        Dart(type: DartType.triple, value: 17),
                        Dart(type: DartType.double, value: 5),
                      ],
                      dartsOnDouble: 1,
                    ),
                  ],
                ),
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                    Throw.fromDarts(
                      darts: [
                        Dart(type: DartType.single, value: 0),
                        Dart(type: DartType.triple, value: 10),
                        Dart(type: DartType.triple, value: 20),
                      ],
                      dartsOnDouble: 0,
                    ),
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.firstDartAverage, 30);
        });
      });

      group('sets', () {
        test(
            'GIVEN 0 1st darts thrown '
            'WHEN get firstDartAverage '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
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
            ),
          );

          // Act & Assert
          expect(player.firstDartAverage, null);
        });

        test(
            'GIVEN >0 1st darts thrown '
            'WHEN get firstDartAverage '
            'THEN return correct firstDartAverage.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
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
                        Throw(points: 101),
                        Throw(points: 20, dartsThrown: 1, dartsOnDouble: 1),
                      ],
                    ),
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw.fromDarts(
                          darts: [
                            Dart(type: DartType.double, value: 20),
                            Dart(type: DartType.triple, value: 20),
                            Dart(type: DartType.triple, value: 20),
                          ],
                          dartsOnDouble: 0,
                        ),
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
            ),
          );

          // Act & Assert
          expect(player.firstDartAverage, 50);
        });
      });
    });

    group('secondDartAverage', () {
      test(
          'GIVEN sets = null '
          'WHEN get secondDartAverage '
          'THEN return null.', () {
        // Arrange
        final player = Player();
        // Act & Assert
        expect(player.secondDartAverage, null);
      });

      group('legs', () {
        test(
            'GIVEN 0 2nd darts thrown '
            'WHEN get secondDartAverage '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                    Throw(points: 81),
                    Throw.fromDarts(
                      darts: [
                        Dart(type: DartType.double, value: 20),
                      ],
                      dartsOnDouble: 1,
                    ),
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.secondDartAverage, null);
        });

        test(
            'GIVEN >0 2nd darts thrown '
            'WHEN get secondDartAverage '
            'THEN return correct average of second dart.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                    Throw.fromDarts(
                      darts: [
                        Dart(type: DartType.triple, value: 17),
                        Dart(type: DartType.triple, value: 10),
                        Dart(type: DartType.double, value: 5),
                      ],
                      dartsOnDouble: 1,
                    ),
                  ],
                ),
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                    Throw.fromDarts(
                      darts: [
                        Dart(type: DartType.single, value: 0),
                        Dart(type: DartType.triple, value: 18),
                        Dart(type: DartType.triple, value: 20),
                      ],
                      dartsOnDouble: 0,
                    ),
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.secondDartAverage, 42);
        });
      });

      group('sets', () {
        test(
            'GIVEN 0 2nd darts thrown '
            'WHEN get secondDartAverage '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
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
            ),
          );

          // Act & Assert
          expect(player.secondDartAverage, null);
        });

        test(
            'GIVEN >0 2nd darts thrown '
            'WHEN get secondDartAverage '
            'THEN return correct secondDartAverage.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
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
                        Throw(points: 101),
                        Throw(points: 20, dartsThrown: 1, dartsOnDouble: 1),
                      ],
                    ),
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw.fromDarts(
                          darts: [
                            Dart(type: DartType.triple, value: 20),
                            Dart(type: DartType.double, value: 20),
                            Dart(type: DartType.triple, value: 20),
                          ],
                          dartsOnDouble: 0,
                        ),
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
            ),
          );

          // Act & Assert
          expect(player.secondDartAverage, 50);
        });
      });
    });

    group('thirdDartAverage', () {
      test(
          'GIVEN sets = null '
          'WHEN get thirdDartAverage '
          'THEN return null.', () {
        // Arrange
        final player = Player();
        // Act & Assert
        expect(player.thirdDartAverage, null);
      });

      group('legs', () {
        test(
            'GIVEN 0 3rd darts thrown '
            'WHEN get thirdDartAverage '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.thirdDartAverage, null);
        });

        test(
            'GIVEN >0 3rd darts thrown '
            'WHEN get thirdDartAverage '
            'THEN return correct average of third dart.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                    Throw.fromDarts(
                      darts: [
                        Dart(type: DartType.triple, value: 20),
                        Dart(type: DartType.triple, value: 17),
                        Dart(type: DartType.double, value: 5),
                      ],
                      dartsOnDouble: 1,
                    ),
                  ],
                ),
                Leg.fromData(
                  startingPoints: 301,
                  throws: [
                    Throw(points: 180),
                    Throw.fromDarts(
                      darts: [
                        Dart(type: DartType.single, value: 0),
                        Dart(type: DartType.triple, value: 10),
                        Dart(type: DartType.triple, value: 20),
                      ],
                      dartsOnDouble: 0,
                    ),
                  ],
                ),
              ],
            ),
          );

          // Act & Assert
          expect(player.thirdDartAverage, 35);
        });
      });

      group('sets', () {
        test(
            'GIVEN 0 3rd darts thrown '
            'WHEN get thirdDartAverage '
            'THEN return null.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
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
            ),
          );

          // Act & Assert
          expect(player.thirdDartAverage, null);
        });

        test(
            'GIVEN >0 3rd darts thrown '
            'WHEN get thirdDartAverage '
            'THEN return correct thirdDartAverage.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
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
                        Throw(points: 101),
                        Throw(points: 20, dartsThrown: 1, dartsOnDouble: 1),
                      ],
                    ),
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw.fromDarts(
                          darts: [
                            Dart(type: DartType.triple, value: 20),
                            Dart(type: DartType.triple, value: 20),
                            Dart(type: DartType.double, value: 20),
                          ],
                          dartsOnDouble: 0,
                        ),
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
            ),
          );

          // Act & Assert
          expect(player.thirdDartAverage, 50);
        });
      });
    });

    group('fourtyPlus', () {
      test(
          'GIVEN sets = null '
          'WHEN get fourtyPlus '
          'THEN return null.', () {
        // Arrange
        final player = Player();

        // Act & Assert
        expect(player.fourtyPlus, null);
      });

      group('legs', () {
        test(
            'GIVEN >0 throws '
            'WHEN get fourtyPlus '
            'THEN return amount of throws with 40 <= points < 60.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 701,
                  throws: [
                    Throw(points: 40),
                    Throw(points: 50),
                    Throw(points: 59),
                  ],
                )
              ],
            ),
          );

          // Act & Assert
          expect(player.fourtyPlus, 3);
        });
      });

      group('sets', () {
        test(
            'GIVEN >0 throws '
            'WHEN get fourtyPlus '
            'THEN return amount of throws with 40 <= points < 60.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
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
                ),
                Set.fromData(
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
                )
              ],
            ),
          );

          // Act & Assert
          expect(player.fourtyPlus, 6);
        });
      });
    });

    group('sixtyPlus', () {
      test(
          'GIVEN sets = null '
          'WHEN get sixtyPlus '
          'THEN return null.', () {
        // Arrange
        final player = Player();

        // Act & Assert
        expect(player.sixtyPlus, null);
      });

      group('legs', () {
        test(
            'GIVEN >0 throws '
            'WHEN get sixtyPlus '
            'THEN return amount of throws with 60 <= points < 80.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 701,
                  throws: [
                    Throw(points: 60),
                    Throw(points: 70),
                    Throw(points: 79),
                  ],
                )
              ],
            ),
          );

          // Act & Assert
          expect(player.sixtyPlus, 3);
        });
      });

      group('sets', () {
        test(
            'GIVEN >0 throws '
            'WHEN get sixtyPlus '
            'THEN return amount of throws with 60 <= points < 80.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
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
                ),
                Set.fromData(
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
                )
              ],
            ),
          );

          // Act & Assert
          expect(player.sixtyPlus, 6);
        });
      });
    });

    group('eightyPlus', () {
      test(
          'GIVEN sets = null '
          'WHEN get eightyPlus '
          'THEN return null.', () {
        // Arrange
        final player = Player();

        // Act & Assert
        expect(player.eightyPlus, null);
      });

      group('legs', () {
        test(
            'GIVEN >0 throws '
            'WHEN get eightyPlus '
            'THEN return amount of throws with 80 <= points < 100.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 701,
                  throws: [
                    Throw(points: 80),
                    Throw(points: 90),
                    Throw(points: 99),
                  ],
                )
              ],
            ),
          );

          // Act & Assert
          expect(player.eightyPlus, 3);
        });
      });

      group('sets', () {
        test(
            'GIVEN >0 throws '
            'WHEN get eightyPlus '
            'THEN return amount of throws with 80 <= points < 100.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
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
                ),
                Set.fromData(
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
                )
              ],
            ),
          );

          // Act & Assert
          expect(player.eightyPlus, 6);
        });
      });
    });

    group('hundredPlus', () {
      test(
          'GIVEN sets = null '
          'WHEN get hundredPlus '
          'THEN return null.', () {
        // Arrange
        final player = Player();

        // Act & Assert
        expect(player.hundredPlus, null);
      });

      group('legs', () {
        test(
            'GIVEN >0 throws '
            'WHEN get hundredPlus '
            'THEN return amount of throws with 100 <= points < 120.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 701,
                  throws: [
                    Throw(points: 100),
                    Throw(points: 110),
                    Throw(points: 119),
                  ],
                )
              ],
            ),
          );

          // Act & Assert
          expect(player.hundredPlus, 3);
        });
      });

      group('sets', () {
        test(
            'GIVEN >0 throws '
            'WHEN get hundredPlus '
            'THEN return amount of throws with 100 <= points < 120.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
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
                ),
                Set.fromData(
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
                )
              ],
            ),
          );

          // Act & Assert
          expect(player.hundredPlus, 6);
        });
      });
    });

    group('hundredTwentyPlus', () {
      test(
          'GIVEN sets = null '
          'WHEN get hundredTwentyPlus '
          'THEN return null.', () {
        // Arrange
        final player = Player();

        // Act & Assert
        expect(player.hundredTwentyPlus, null);
      });

      group('legs', () {
        test(
            'GIVEN >0 throws '
            'WHEN get hundredTwentyPlus '
            'THEN return amount of throws with 120 <= points < 140.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 701,
                  throws: [
                    Throw(points: 120),
                    Throw(points: 130),
                    Throw(points: 139),
                  ],
                )
              ],
            ),
          );

          // Act & Assert
          expect(player.hundredTwentyPlus, 3);
        });
      });

      group('sets', () {
        test(
            'GIVEN >0 throws '
            'WHEN get hundredTwentyPlus '
            'THEN return amount of throws with 120 <= points < 140.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
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
                ),
                Set.fromData(
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
                )
              ],
            ),
          );

          // Act & Assert
          expect(player.hundredTwentyPlus, 6);
        });
      });
    });

    group('hundredFourtyPlus', () {
      test(
          'GIVEN sets = null '
          'WHEN get hundredFourtyPlus '
          'THEN return null.', () {
        // Arrange
        final player = Player();

        // Act & Assert
        expect(player.hundredFourtyPlus, null);
      });

      group('legs', () {
        test(
            'GIVEN >0 throws '
            'WHEN get hundredFourtyPlus '
            'THEN return amount of throws with 140 <= points < 150.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 701,
                  throws: [
                    Throw(points: 140),
                    Throw(points: 150),
                    Throw(points: 159),
                  ],
                )
              ],
            ),
          );

          // Act & Assert
          expect(player.hundredFourtyPlus, 3);
        });
      });

      group('sets', () {
        test(
            'GIVEN >0 throws '
            'WHEN get hundredFourtyPlus '
            'THEN return amount of throws with 140 <= points < 160.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
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
                ),
                Set.fromData(
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
                )
              ],
            ),
          );

          // Act & Assert
          expect(player.hundredFourtyPlus, 6);
        });
      });
    });

    group('hundredSixtyPlus', () {
      test(
          'GIVEN sets = null '
          'WHEN get hundredSixtyPlus '
          'THEN return null.', () {
        // Arrange
        final player = Player();

        // Act & Assert
        expect(player.hundredSixtyPlus, null);
      });

      group('legs', () {
        test(
            'GIVEN >0 throws '
            'WHEN get hundredSixtyPlus '
            'THEN return amount of throws with 160 <= points < 180.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 701,
                  throws: [
                    Throw(points: 160),
                    Throw(points: 170),
                    Throw(points: 177),
                  ],
                )
              ],
            ),
          );

          // Act & Assert
          expect(player.hundredSixtyPlus, 3);
        });
      });

      group('sets', () {
        test(
            'GIVEN >0 throws '
            'WHEN get hundredSixtyPlus '
            'THEN return amount of throws with 160 <= points < 180.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
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
                ),
                Set.fromData(
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
                )
              ],
            ),
          );

          // Act & Assert
          expect(player.hundredSixtyPlus, 6);
        });
      });
    });

    group('hundredEighty', () {
      test(
          'GIVEN sets = null '
          'WHEN get hundredEighty '
          'THEN return null.', () {
        // Arrange
        final player = Player();

        // Act & Assert
        expect(player.hundredEighty, null);
      });

      group('legs', () {
        test(
            'GIVEN >0 throws '
            'WHEN get hundredSixtyPlus '
            'THEN return amount of throws with points = 180.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: left(
              [
                Leg.fromData(
                  startingPoints: 701,
                  throws: [
                    Throw(points: 180),
                    Throw(points: 180),
                    Throw(points: 180),
                  ],
                )
              ],
            ),
          );

          // Act & Assert
          expect(player.hundredEighty, 3);
        });
      });

      group('sets', () {
        test(
            'GIVEN >0 throws '
            'WHEN get hundredEighty '
            'THEN return amount of throws with points = 180.', () {
          // Arrange
          final player = Player.fromData(
            id: 'dummyId',
            legsOrSetsNeededToWin: 2,
            isCurrentTurn: false,
            legsOrSets: right(
              [
                Set.fromData(
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
                ),
                Set.fromData(
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
                )
              ],
            ),
          );

          // Act & Assert
          expect(player.hundredEighty, 6);
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
      final id = 'dummyId1';
      final name = 'dummyName1';
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

      // Act
      final player = Player.fromData(
        id: id,
        name: name,
        legsOrSetsNeededToWin: legsOrSetsNeededToWin,
        isCurrentTurn: isCurrentTurn,
        legsOrSets: legsOrSets,
      );

      // Assert
      expect(
        player.toString(),
        'Player{id: $id, name: $name, won: false, isCurrentTurn: $isCurrentTurn, wonSets: 2, '
        'wonLegsCurrentSet: 0, pointsLeft: 301, lastPoints: 121, '
        'finishRecommendation: null, dartsThrownCurrentLeg: 0, '
        'average: 150.5, checkoutPercentage: 1.0}',
      );
    });
  });
}
