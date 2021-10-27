import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dart_game/dart_game.dart';

void main() {
  group('playing some games', () {
    // TODO implement
  });

  group('constructor', () {
    group('()', () {
      group('default args', () {
        test(
            'GIVEN startingPoints not provided '
            'WHEN new instance created '
            'THEN assign startingPoints to 301.', () {
          // Arrange
          final ownerName = 'dummyOwnerName';
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.legs;

          // Act
          final game = Game(
            ownerName: ownerName,
            mode: mode,
            size: size,
            type: type,
          );

          // Assert
          expect(game.startingPoints, 301);
        });

        test(
            'GIVEN mode not provided '
            'WHEN new instance created '
            'THEN assign mode to firstTo.', () {
          // Arrange
          final ownerName = 'dummyOwnerName';
          final startingPoints = 301;
          final size = 2;
          final type = Type.legs;

          // Act
          final game = Game(
            ownerName: ownerName,
            startingPoints: startingPoints,
            size: size,
            type: type,
          );

          // Assert
          expect(game.mode, Mode.firstTo);
        });

        test(
            'GIVEN size not provided '
            'WHEN new instance created '
            'THEN assign size to 1.', () {
          // Arrange
          final ownerName = 'dummyOwnerName';
          final startingPoints = 301;
          final mode = Mode.firstTo;

          final type = Type.legs;

          // Act
          final game = Game(
            ownerName: ownerName,
            startingPoints: startingPoints,
            mode: mode,
            type: type,
          );

          // Assert
          expect(game.size, 1);
        });

        test(
            'GIVEN type not provided '
            'WHEN new instance created '
            'THEN assign type to legs.', () {
          // Arrange
          final ownerName = 'dummyOwnerName';
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;

          // Act
          final game = Game(
            ownerName: ownerName,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
          );

          // Assert
          expect(game.type, Type.legs);
        });
      });

      group('valid args', () {
        test(
            'GIVEN valid args '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange
          final ownerName = 'dummyOwnerName';
          final startingPoints = 301;
          final mode = Mode.bestOf;
          final size = 2;
          final type = Type.sets;

          // Act
          final game = Game(
            ownerName: ownerName,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
          );

          // Assert
          expect(game.players[0].name, ownerName);
          expect(game.startingPoints, startingPoints);
          expect(game.mode, mode);
          expect(game.size, size);
          expect(game.type, type);
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
            () => Game(startingPoints: startingPoints),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN size < 1 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final size = 0;

          // Act & Assert
          expect(
            () => Game(size: size),
            throwsA(isArgumentError),
          );
        });
      });
    });

    group('fromData()', () {
      group('valid args', () {
        test(
            'GIVEN valid args pending '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange
          final status = Status.pending;
          final startingPoints = 301;
          final mode = Mode.bestOf;
          final size = 2;
          final type = Type.sets;
          final players = [
            Player(id: 'dummyId1', name: 'dummyName1'),
            Player(id: 'dummyId2', name: 'dummyName2'),
          ];

          // Act
          final game = Game.fromData(
            status: status,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: players,
          );

          // Assert
          expect(game.status, status);
          expect(game.startingPoints, startingPoints);
          expect(game.mode, mode);
          expect(game.size, size);
          expect(game.type, type);
          expect(game.players, players);
        });

        // TODO more valid args tests

        test(
            'GIVEN valid args finished legs '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange
          final status = Status.finished;
          final startingPoints = 301;
          final mode = Mode.bestOf;
          final size = 3;
          final type = Type.legs;
          final players = <Player>[
            Player.fromData(
              id: 'dummyId',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: true,
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
            ),
            Player.fromData(
              id: 'dummyId1',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: false,
              legsOrSets: left(
                [
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
                    ],
                  ),
                ],
              ),
            ),
          ];

          // Act
          final game = Game.fromData(
            status: status,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: players,
          );

          // Assert
          expect(game.status, status);
          expect(game.startingPoints, startingPoints);
          expect(game.mode, mode);
          expect(game.size, size);
          expect(game.type, type);
          expect(game.players, players);
        });

        test(
            'GIVEN valid args finished sets '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange
          final status = Status.finished;
          final startingPoints = 301;
          final mode = Mode.bestOf;
          final size = 3;
          final type = Type.sets;
          final players = <Player>[
            Player.fromData(
              id: 'dummyId',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: true,
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
            ),
            Player.fromData(
              id: 'dummyId1',
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
                          Throw(points: 1),
                        ],
                      ),
                      Leg.fromData(
                        startingPoints: 301,
                        throws: [
                          Throw(points: 180),
                          Throw(points: 1),
                        ],
                      ),
                      Leg.fromData(
                        startingPoints: 301,
                        throws: [
                          Throw(points: 180),
                          Throw(points: 1),
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
                          Throw(points: 1),
                        ],
                      ),
                      Leg.fromData(
                        startingPoints: 301,
                        throws: [
                          Throw(points: 180),
                          Throw(points: 1),
                        ],
                      ),
                      Leg.fromData(
                        startingPoints: 301,
                        throws: [
                          Throw(points: 180),
                          Throw(points: 1),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ];

          // Act
          final game = Game.fromData(
            status: status,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: players,
          );

          // Assert
          expect(game.status, status);
          expect(game.startingPoints, startingPoints);
          expect(game.mode, mode);
          expect(game.size, size);
          expect(game.type, type);
          expect(game.players, players);
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
            () => Game.fromData(
              status: Status.pending,
              startingPoints: startingPoints,
              mode: Mode.bestOf,
              size: 1,
              type: Type.legs,
              players: [
                Player(),
              ],
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN size < 1 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final size = 0;

          // Act & Assert
          expect(
            () => Game.fromData(
              status: Status.pending,
              startingPoints: 301,
              mode: Mode.bestOf,
              size: size,
              type: Type.legs,
              players: [
                Player(),
              ],
            ),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN players is empty '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final players = <Player>[];

          // Act & Assert
          expect(
            () => Game.fromData(
              status: Status.canceled,
              startingPoints: 301,
              mode: Mode.bestOf,
              size: 2,
              type: Type.legs,
              players: players,
            ),
            throwsA(isArgumentError),
          );
        });

        group('pending', () {
          test(
              'GIVEN not all players have legsOrSetsNeededToWin = null, '
              'legsOrSets = null and isCurrentTurn = null '
              'WHEN new instance created '
              'THEN throw ArgumentError.', () {
            // Arrange
            final players = <Player>[
              Player(),
              Player.fromData(
                id: 'dummyId',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
            ];

            // Act & Assert
            expect(
              () => Game.fromData(
                status: Status.pending,
                startingPoints: 301,
                mode: Mode.firstTo,
                size: 2,
                type: Type.legs,
                players: players,
              ),
              throwsA(isArgumentError),
            );
          });
        });

        group('running', () {
          test(
              'GIVEN not all players have legsOrSetsNeededToWin != null, '
              'legsOrSets != null and isCurrentTurn != null '
              'WHEN new instance created '
              'THEN throw ArgumentError.', () {
            // Arrange
            final players = <Player>[
              Player(),
              Player.fromData(
                id: 'dummyId',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
            ];

            // Act & Assert
            expect(
              () => Game.fromData(
                status: Status.running,
                startingPoints: 301,
                mode: Mode.firstTo,
                size: 2,
                type: Type.legs,
                players: players,
              ),
              throwsA(isArgumentError),
            );
          });

          test(
              'GIVEN not all players have same legsOrSetsNeededToWin '
              'WHEN new instance created '
              'THEN throw ArgumentError.', () {
            // Arrange
            final players = <Player>[
              Player.fromData(
                id: 'dummyId',
                legsOrSetsNeededToWin: 5,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
            ];

            // Act & Assert
            expect(
              () => Game.fromData(
                status: Status.running,
                startingPoints: 301,
                mode: Mode.firstTo,
                size: 2,
                type: Type.legs,
                players: players,
              ),
              throwsA(isArgumentError),
            );
          });

          test(
              'GIVEN not all players have legsOrSetsNeededToWin calculated with with mode and size '
              'WHEN new instance created '
              'THEN throw ArgumentError.', () {
            // Arrange
            final players = <Player>[
              Player.fromData(
                id: 'dummyId',
                legsOrSetsNeededToWin: 3,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                legsOrSetsNeededToWin: 3,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
            ];

            // Act & Assert
            expect(
              () => Game.fromData(
                status: Status.running,
                startingPoints: 301,
                mode: Mode.firstTo,
                size: 2,
                type: Type.legs,
                players: players,
              ),
              throwsA(isArgumentError),
            );
          });

          test(
              'GIVEN <1 player is current turn '
              'WHEN new instance created '
              'THEN throw ArgumentError.', () {
            // Arrange
            final players = <Player>[
              Player.fromData(
                id: 'dummyId',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: false,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: false,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
            ];

            // Act & Assert
            expect(
              () => Game.fromData(
                status: Status.running,
                startingPoints: 301,
                mode: Mode.firstTo,
                size: 2,
                type: Type.legs,
                players: players,
              ),
              throwsA(isArgumentError),
            );
          });

          test(
              'GIVEN >1 player is current turn '
              'WHEN new instance created '
              'THEN throw ArgumentError.', () {
            // Arrange
            final players = <Player>[
              Player.fromData(
                id: 'dummyId',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
            ];

            // Act & Assert
            expect(
              () => Game.fromData(
                status: Status.running,
                startingPoints: 301,
                mode: Mode.firstTo,
                size: 2,
                type: Type.legs,
                players: players,
              ),
              throwsA(isArgumentError),
            );
          });

          group('legs', () {
            test(
                'GIVEN not all players have legs '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: false,
                  legsOrSets: left(
                    [
                      Leg(startingPoints: 301),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
                  legsOrSets: right(
                    [
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.running,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.legs,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN >0 players won '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: true,
                  legsOrSets: left(
                    [
                      Leg.fromData(
                        startingPoints: 301,
                        throws: [
                          Throw(points: 180),
                          Throw(points: 1),
                          Throw(points: 60),
                          Throw(points: 60, dartsOnDouble: 1),
                        ],
                      ),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: false,
                  legsOrSets: left(
                    [
                      Leg.fromData(
                        startingPoints: 301,
                        throws: [
                          Throw(points: 180),
                          Throw(points: 1),
                          Throw(points: 60),
                          Throw(points: 60, dartsOnDouble: 1),
                        ],
                      ),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.running,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 1,
                  type: Type.legs,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have legs with >1 more throws than all other players '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: true,
                  legsOrSets: left(
                    [
                      Leg.fromData(
                        startingPoints: 301,
                        throws: [
                          Throw(points: 180),
                          Throw(points: 1),
                          Throw(points: 60),
                          Throw(points: 60, dartsOnDouble: 1),
                        ],
                      ),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: false,
                  legsOrSets: left(
                    [
                      Leg.fromData(
                        startingPoints: 301,
                        throws: [
                          Throw(points: 180),
                          Throw(points: 1),
                        ],
                      ),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.running,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 1,
                  type: Type.legs,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have legs with same startingPoints as the game '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: false,
                  legsOrSets: left(
                    [
                      Leg(startingPoints: 301),
                      Leg(startingPoints: 301),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
                  legsOrSets: left(
                    [
                      Leg(startingPoints: 501),
                      Leg(startingPoints: 501),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.running,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.legs,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have same amount of legs '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: false,
                  legsOrSets: left(
                    [
                      Leg(startingPoints: 301),
                      Leg(startingPoints: 301),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
                  legsOrSets: left(
                    [
                      Leg(startingPoints: 301),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.running,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.legs,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });
          });

          group('sets', () {
            test(
                'GIVEN >0 players won '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: true,
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
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 1,
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
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.running,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 1,
                  type: Type.sets,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have legs with >1 more throws than all other players '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 1,
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
                              Throw(points: 1),
                              Throw(points: 60),
                              Throw(points: 60, dartsOnDouble: 1),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: true,
                  legsOrSets: right(
                    [
                      Set.fromData(
                        startingPoints: 301,
                        legs: [
                          Leg.fromData(
                            startingPoints: 301,
                            throws: [
                              Throw(points: 180),
                              Throw(points: 1),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.running,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 1,
                  type: Type.sets,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have sets with same startingPoints as the game '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: false,
                  legsOrSets: right(
                    [
                      Set(startingPoints: 501),
                      Set(startingPoints: 501),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
                  legsOrSets: right(
                    [
                      Set(startingPoints: 301),
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.running,
                  startingPoints: 501,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.sets,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have same amount of sets '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: false,
                  legsOrSets: right(
                    [
                      Set(startingPoints: 301),
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
                  legsOrSets: right(
                    [
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.running,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.sets,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have sets with equal amount of legs '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
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
                        ],
                      ),
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
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
                            ],
                          ),
                        ],
                      ),
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.running,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.sets,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have sets '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: false,
                  legsOrSets: left(
                    [
                      Leg(startingPoints: 301),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
                  legsOrSets: right(
                    [
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.running,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.sets,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });
          });
        });

        group('canceled', () {
          test(
              'GIVEN not all players have legsOrSetsNeededToWin != null, '
              'legsOrSets != null and isCurrentTurn != null '
              'WHEN new instance created '
              'THEN throw ArgumentError.', () {
            // Arrange
            final players = <Player>[
              Player(),
              Player.fromData(
                id: 'dummyId',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
            ];

            // Act & Assert
            expect(
              () => Game.fromData(
                status: Status.canceled,
                startingPoints: 301,
                mode: Mode.firstTo,
                size: 2,
                type: Type.legs,
                players: players,
              ),
              throwsA(isArgumentError),
            );
          });

          test(
              'GIVEN not all players have legsOrSetsNeededToWin = null, '
              'legsOrSets = null and isCurrentTurn = null '
              'WHEN new instance created '
              'THEN throw ArgumentError.', () {
            // Arrange
            final players = <Player>[
              Player(),
              Player.fromData(
                id: 'dummyId',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
            ];

            // Act & Assert
            expect(
              () => Game.fromData(
                status: Status.canceled,
                startingPoints: 301,
                mode: Mode.firstTo,
                size: 2,
                type: Type.legs,
                players: players,
              ),
              throwsA(isArgumentError),
            );
          });

          test(
              'GIVEN not all players have same legsOrSetsNeededToWin '
              'WHEN new instance created '
              'THEN throw ArgumentError.', () {
            // Arrange
            final players = <Player>[
              Player.fromData(
                id: 'dummyId',
                legsOrSetsNeededToWin: 5,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
            ];

            // Act & Assert
            expect(
              () => Game.fromData(
                status: Status.canceled,
                startingPoints: 301,
                mode: Mode.firstTo,
                size: 2,
                type: Type.legs,
                players: players,
              ),
              throwsA(isArgumentError),
            );
          });

          test(
              'GIVEN not all players have legsOrSetsNeededToWin calculated with with mode and size '
              'WHEN new instance created '
              'THEN throw ArgumentError.', () {
            // Arrange
            final players = <Player>[
              Player.fromData(
                id: 'dummyId',
                legsOrSetsNeededToWin: 3,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                legsOrSetsNeededToWin: 3,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
            ];

            // Act & Assert
            expect(
              () => Game.fromData(
                status: Status.canceled,
                startingPoints: 301,
                mode: Mode.firstTo,
                size: 2,
                type: Type.legs,
                players: players,
              ),
              throwsA(isArgumentError),
            );
          });

          test(
              'GIVEN <1 player is current turn '
              'WHEN new instance created '
              'THEN throw ArgumentError.', () {
            // Arrange
            final players = <Player>[
              Player.fromData(
                id: 'dummyId',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: false,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: false,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
            ];

            // Act & Assert
            expect(
              () => Game.fromData(
                status: Status.canceled,
                startingPoints: 301,
                mode: Mode.firstTo,
                size: 2,
                type: Type.legs,
                players: players,
              ),
              throwsA(isArgumentError),
            );
          });

          test(
              'GIVEN >1 player is current turn '
              'WHEN new instance created '
              'THEN throw ArgumentError.', () {
            // Arrange
            final players = <Player>[
              Player.fromData(
                id: 'dummyId',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
            ];

            // Act & Assert
            expect(
              () => Game.fromData(
                status: Status.canceled,
                startingPoints: 301,
                mode: Mode.firstTo,
                size: 2,
                type: Type.legs,
                players: players,
              ),
              throwsA(isArgumentError),
            );
          });

          group('legs', () {
            test(
                'GIVEN not all players have legs '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: false,
                  legsOrSets: left(
                    [
                      Leg(startingPoints: 301),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
                  legsOrSets: right(
                    [
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.canceled,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.legs,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have same amount of legs '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: false,
                  legsOrSets: left(
                    [
                      Leg(startingPoints: 301),
                      Leg(startingPoints: 301),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
                  legsOrSets: left(
                    [
                      Leg(startingPoints: 301),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.canceled,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.legs,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have legs with same startingPoints as the game '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: false,
                  legsOrSets: left(
                    [
                      Leg(startingPoints: 301),
                      Leg(startingPoints: 301),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
                  legsOrSets: left(
                    [
                      Leg(startingPoints: 501),
                      Leg(startingPoints: 501),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.canceled,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.legs,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have legs with >1 more throws than all other players '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: true,
                  legsOrSets: left(
                    [
                      Leg.fromData(
                        startingPoints: 301,
                        throws: [
                          Throw(points: 180),
                          Throw(points: 1),
                          Throw(points: 60),
                          Throw(points: 60, dartsOnDouble: 1),
                        ],
                      ),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: false,
                  legsOrSets: left(
                    [
                      Leg.fromData(
                        startingPoints: 301,
                        throws: [
                          Throw(points: 180),
                          Throw(points: 1),
                        ],
                      ),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.canceled,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 1,
                  type: Type.legs,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN >0 players won '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: true,
                  legsOrSets: left(
                    [
                      Leg.fromData(
                        startingPoints: 301,
                        throws: [
                          Throw(points: 180),
                          Throw(points: 1),
                          Throw(points: 60),
                          Throw(points: 60, dartsOnDouble: 1),
                        ],
                      ),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: false,
                  legsOrSets: left(
                    [
                      Leg.fromData(
                        startingPoints: 301,
                        throws: [
                          Throw(points: 180),
                          Throw(points: 1),
                          Throw(points: 60),
                          Throw(points: 60, dartsOnDouble: 1),
                        ],
                      ),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.canceled,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 1,
                  type: Type.legs,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });
          });

          group('sets', () {
            test(
                'GIVEN not all players have sets '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: false,
                  legsOrSets: left(
                    [
                      Leg(startingPoints: 301),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
                  legsOrSets: right(
                    [
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.canceled,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.sets,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have sets with equal amount of legs '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
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
                        ],
                      ),
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
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
                            ],
                          ),
                        ],
                      ),
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.canceled,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.sets,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have same amount of sets '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: false,
                  legsOrSets: right(
                    [
                      Set(startingPoints: 301),
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
                  legsOrSets: right(
                    [
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.canceled,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.sets,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have sets with same startingPoints as the game '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: false,
                  legsOrSets: right(
                    [
                      Set(startingPoints: 501),
                      Set(startingPoints: 501),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
                  legsOrSets: right(
                    [
                      Set(startingPoints: 301),
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.canceled,
                  startingPoints: 501,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.sets,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have legs with >1 more throws than all other players '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 1,
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
                              Throw(points: 1),
                              Throw(points: 60),
                              Throw(points: 60, dartsOnDouble: 1),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: true,
                  legsOrSets: right(
                    [
                      Set.fromData(
                        startingPoints: 301,
                        legs: [
                          Leg.fromData(
                            startingPoints: 301,
                            throws: [
                              Throw(points: 180),
                              Throw(points: 1),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.canceled,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 1,
                  type: Type.sets,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN >0 players won '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: true,
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
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 1,
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
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.canceled,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 1,
                  type: Type.sets,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });
          });
        });

        group('finished', () {
          test(
              'GIVEN not all players have legsOrSetsNeededToWin != null, '
              'legsOrSets != null and isCurrentTurn != null '
              'WHEN new instance created '
              'THEN throw ArgumentError.', () {
            // Arrange
            final players = <Player>[
              Player(),
              Player.fromData(
                id: 'dummyId',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
            ];

            // Act & Assert
            expect(
              () => Game.fromData(
                status: Status.finished,
                startingPoints: 301,
                mode: Mode.firstTo,
                size: 2,
                type: Type.legs,
                players: players,
              ),
              throwsA(isArgumentError),
            );
          });

          test(
              'GIVEN not all players have same legsOrSetsNeededToWin '
              'WHEN new instance created '
              'THEN throw ArgumentError.', () {
            // Arrange
            final players = <Player>[
              Player.fromData(
                id: 'dummyId',
                legsOrSetsNeededToWin: 1,
                isCurrentTurn: true,
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
              ),
              Player.fromData(
                id: 'dummyId1',
                legsOrSetsNeededToWin: 1,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
            ];

            // Act & Assert
            expect(
              () => Game.fromData(
                status: Status.finished,
                startingPoints: 301,
                mode: Mode.firstTo,
                size: 1,
                type: Type.legs,
                players: players,
              ),
              throwsA(isArgumentError),
            );
          });

          test(
              'GIVEN not all players have legsOrSetsNeededToWin calculated with with mode and size '
              'WHEN new instance created '
              'THEN throw ArgumentError.', () {
            // Arrange
            final players = <Player>[
              Player.fromData(
                id: 'dummyId',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
              ),
              Player.fromData(
                id: 'dummyId1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
            ];

            // Act & Assert
            expect(
              () => Game.fromData(
                status: Status.finished,
                startingPoints: 301,
                mode: Mode.firstTo,
                size: 1,
                type: Type.legs,
                players: players,
              ),
              throwsA(isArgumentError),
            );
          });

          test(
              'GIVEN <1 player is current turn '
              'WHEN new instance created '
              'THEN throw ArgumentError.', () {
            // Arrange
            final players = <Player>[
              Player.fromData(
                id: 'dummyId',
                legsOrSetsNeededToWin: 1,
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
              ),
              Player.fromData(
                id: 'dummyId1',
                legsOrSetsNeededToWin: 1,
                isCurrentTurn: false,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
            ];

            // Act & Assert
            expect(
              () => Game.fromData(
                status: Status.finished,
                startingPoints: 301,
                mode: Mode.firstTo,
                size: 1,
                type: Type.legs,
                players: players,
              ),
              throwsA(isArgumentError),
            );
          });

          test(
              'GIVEN >1 player is current turn '
              'WHEN new instance created '
              'THEN throw ArgumentError.', () {
            // Arrange
            final players = <Player>[
              Player.fromData(
                id: 'dummyId',
                legsOrSetsNeededToWin: 1,
                isCurrentTurn: true,
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
              ),
              Player.fromData(
                id: 'dummyId1',
                legsOrSetsNeededToWin: 1,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg(startingPoints: 301),
                  ],
                ),
              ),
            ];

            // Act & Assert
            expect(
              () => Game.fromData(
                status: Status.finished,
                startingPoints: 301,
                mode: Mode.firstTo,
                size: 1,
                type: Type.legs,
                players: players,
              ),
              throwsA(isArgumentError),
            );
          });

          group('legs', () {
            test(
                'GIVEN not all players have legs '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: false,
                  legsOrSets: left(
                    [
                      Leg(startingPoints: 301),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
                  legsOrSets: right(
                    [
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.finished,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.legs,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have same amount of legs '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: false,
                  legsOrSets: left(
                    [
                      Leg(startingPoints: 301),
                      Leg(startingPoints: 301),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
                  legsOrSets: left(
                    [
                      Leg(startingPoints: 301),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.canceled,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.legs,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have legs with same startingPoints as the game '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: false,
                  legsOrSets: left(
                    [
                      Leg(startingPoints: 301),
                      Leg(startingPoints: 301),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
                  legsOrSets: left(
                    [
                      Leg(startingPoints: 501),
                      Leg(startingPoints: 501),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.finished,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.legs,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have legs with >1 more throws than all other players '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: true,
                  legsOrSets: left(
                    [
                      Leg.fromData(
                        startingPoints: 301,
                        throws: [
                          Throw(points: 180),
                          Throw(points: 1),
                          Throw(points: 60),
                          Throw(points: 60, dartsOnDouble: 1),
                        ],
                      ),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: false,
                  legsOrSets: left(
                    [
                      Leg.fromData(
                        startingPoints: 301,
                        throws: [
                          Throw(points: 180),
                          Throw(points: 1),
                        ],
                      ),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.finished,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 1,
                  type: Type.legs,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN <1 players won '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: true,
                  legsOrSets: left(
                    [
                      Leg.fromData(
                        startingPoints: 301,
                        throws: [
                          Throw(points: 180),
                          Throw(points: 1),
                        ],
                      ),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: false,
                  legsOrSets: left(
                    [
                      Leg.fromData(
                        startingPoints: 301,
                        throws: [
                          Throw(points: 180),
                          Throw(points: 1),
                        ],
                      ),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.finished,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 1,
                  type: Type.legs,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN >1 players won '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: true,
                  legsOrSets: left(
                    [
                      Leg.fromData(
                        startingPoints: 301,
                        throws: [
                          Throw(points: 180),
                          Throw(points: 1),
                          Throw(points: 60),
                          Throw(points: 60, dartsOnDouble: 1),
                        ],
                      ),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: false,
                  legsOrSets: left(
                    [
                      Leg.fromData(
                        startingPoints: 301,
                        throws: [
                          Throw(points: 180),
                          Throw(points: 1),
                          Throw(points: 60),
                          Throw(points: 60, dartsOnDouble: 1),
                        ],
                      ),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.finished,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 1,
                  type: Type.legs,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });
          });

          group('sets', () {
            test(
                'GIVEN not all players have sets '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: false,
                  legsOrSets: left(
                    [
                      Leg(startingPoints: 301),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
                  legsOrSets: right(
                    [
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.finished,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.sets,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have sets with equal amount of legs '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
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
                        ],
                      ),
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
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
                            ],
                          ),
                        ],
                      ),
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.finished,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.sets,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have same amount of sets '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: false,
                  legsOrSets: right(
                    [
                      Set(startingPoints: 301),
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
                  legsOrSets: right(
                    [
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.canceled,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.sets,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have sets with same startingPoints as the game '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: false,
                  legsOrSets: right(
                    [
                      Set(startingPoints: 501),
                      Set(startingPoints: 501),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 2,
                  isCurrentTurn: true,
                  legsOrSets: right(
                    [
                      Set(startingPoints: 301),
                      Set(startingPoints: 301),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.finished,
                  startingPoints: 501,
                  mode: Mode.firstTo,
                  size: 2,
                  type: Type.sets,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN not all players have legs with >1 more throws than all other players '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 1,
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
                              Throw(points: 1),
                              Throw(points: 60),
                              Throw(points: 60, dartsOnDouble: 1),
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
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: true,
                  legsOrSets: right(
                    [
                      Set.fromData(
                        startingPoints: 301,
                        legs: [
                          Leg.fromData(
                            startingPoints: 301,
                            throws: [
                              Throw(points: 180),
                              Throw(points: 1),
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
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.finished,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 1,
                  type: Type.sets,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN <1 players won '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: true,
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
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 1,
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
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.finished,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 1,
                  type: Type.sets,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });

            test(
                'GIVEN >1 players won '
                'WHEN new instance created '
                'THEN throw ArgumentError.', () {
              // Arrange
              final players = <Player>[
                Player.fromData(
                  id: 'dummyId',
                  legsOrSetsNeededToWin: 1,
                  isCurrentTurn: true,
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
                ),
                Player.fromData(
                  id: 'dummyId1',
                  legsOrSetsNeededToWin: 1,
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
                ),
              ];

              // Act & Assert
              expect(
                () => Game.fromData(
                  status: Status.finished,
                  startingPoints: 301,
                  mode: Mode.firstTo,
                  size: 1,
                  type: Type.sets,
                  players: players,
                ),
                throwsA(isArgumentError),
              );
            });
          });
        });
      });
    });
  });

  group('setters', () {
    group('dartBotTargetAverage', () {
      test(
          'GIVEN pending game with dartBot and new valid targetAverage '
          'WHEN dartBotTargetAverage set '
          'THEN assign targetAverage of dartBot to new value.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;

        // Act
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player(),
            DartBot(),
          ],
        );
        game.dartBotTargetAverage = 100;

        // Assert
        expect((game.players[1] as DartBot).targetAverage, 100);
      });

      test(
          'GIVEN pending game with dartBot and new targetAverage <9 '
          'WHEN dartBotTargetAverage set '
          'THEN not assign targetAverage of dartBot to new value.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;

        // Act
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player(),
            DartBot(),
          ],
        );
        game.dartBotTargetAverage = 9;

        // Assert
        expect((game.players[1] as DartBot).targetAverage, 10);
      });

      test(
          'GIVEN pending game with dartBot and new targetAverage >151 '
          'WHEN dartBotTargetAverage set '
          'THEN not assign targetAverage of dartBot to new value.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;

        // Act
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player(),
            DartBot(),
          ],
        );
        game.dartBotTargetAverage = 151;

        // Assert
        expect((game.players[1] as DartBot).targetAverage, 10);
      });

      test(
          'GIVEN not pending game with dartBot and new valid targetAverage '
          'WHEN dartBotTargetAverage set '
          'THEN not assign targetAverage of dartBot to new value.', () {
        // Arrange
        final status = Status.running;
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;

        // Act
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: size,
              isCurrentTurn: true,
              legsOrSets: left(
                [
                  Leg.fromData(
                    startingPoints: 301,
                    throws: [],
                  ),
                ],
              ),
            ),
            DartBot.fromData(
              legsOrSetsNeededToWin: size,
              isCurrentTurn: false,
              legsOrSets: left(
                [
                  Leg.fromData(
                    startingPoints: 301,
                    throws: [],
                  ),
                ],
              ),
              targetAverage: 10,
            ),
          ],
        );
        game.dartBotTargetAverage = 100;

        // Assert
        expect((game.players[1] as DartBot).targetAverage, 10);
      });
    });

    group('startingPoints', () {
      test(
          'GIVEN pending game and new valid startingPoints '
          'WHEN startingPoints set '
          'THEN assign startingPoints to new value.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;

        // Act
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player(),
            DartBot(),
          ],
        );
        game.startingPoints = 501;

        // Assert
        expect(game.startingPoints, 501);
      });

      test(
          'GIVEN pending game and new startingPoints < 2 '
          'WHEN startingPoints set '
          'THEN not assign startingPoints to new value.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;

        // Act
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player(),
            DartBot(),
          ],
        );
        game.startingPoints = 1;

        // Assert
        expect(game.startingPoints, startingPoints);
      });

      test(
          'GIVEN not pending game and new valid startingPoints '
          'WHEN startingPoints set '
          'THEN not assign startingPoints to new value.', () {
        // Arrange
        final status = Status.running;
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;

        // Act
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: size,
              isCurrentTurn: true,
              legsOrSets: left(
                [
                  Leg.fromData(
                    startingPoints: 301,
                    throws: [],
                  ),
                ],
              ),
            ),
            DartBot.fromData(
              legsOrSetsNeededToWin: size,
              isCurrentTurn: false,
              legsOrSets: left(
                [
                  Leg.fromData(
                    startingPoints: 301,
                    throws: [],
                  ),
                ],
              ),
              targetAverage: 10,
            ),
          ],
        );
        game.startingPoints = 501;

        // Assert
        expect(game.startingPoints, 301);
      });
    });

    group('mode', () {
      test(
          'GIVEN pending game and new valid mode '
          'WHEN mode set '
          'THEN assign mode to new value.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;

        // Act
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player(),
            DartBot(),
          ],
        );
        game.mode = Mode.firstTo;

        // Assert
        expect(game.mode, Mode.firstTo);
      });

      test(
          'GIVEN not pending game and new valid mode '
          'WHEN mode set '
          'THEN not assign mode to new value.', () {
        // Arrange
        final status = Status.running;
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;

        // Act
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: size,
              isCurrentTurn: true,
              legsOrSets: left(
                [
                  Leg.fromData(
                    startingPoints: 301,
                    throws: [],
                  ),
                ],
              ),
            ),
            DartBot.fromData(
              legsOrSetsNeededToWin: size,
              isCurrentTurn: false,
              legsOrSets: left(
                [
                  Leg.fromData(
                    startingPoints: 301,
                    throws: [],
                  ),
                ],
              ),
              targetAverage: 10,
            ),
          ],
        );
        game.mode = Mode.bestOf;

        // Assert
        expect(game.mode, Mode.firstTo);
      });
    });

    group('size', () {
      test(
          'GIVEN pending game and new valid size '
          'WHEN size set '
          'THEN assign size to new value.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;

        // Act
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player(),
            DartBot(),
          ],
        );
        game.size = 11;

        // Assert
        expect(game.size, 11);
      });

      test(
          'GIVEN pending game and new size < 1 '
          'WHEN size set '
          'THEN not assign size to new value.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;

        // Act
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player(),
            DartBot(),
          ],
        );
        game.size = 0;

        // Assert
        expect(game.size, size);
      });

      test(
          'GIVEN not pending game and new valid size '
          'WHEN size set '
          'THEN not assign size to new value.', () {
        // Arrange
        final status = Status.running;
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;

        // Act
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: size,
              isCurrentTurn: true,
              legsOrSets: left(
                [
                  Leg.fromData(
                    startingPoints: 301,
                    throws: [],
                  ),
                ],
              ),
            ),
            DartBot.fromData(
              legsOrSetsNeededToWin: size,
              isCurrentTurn: false,
              legsOrSets: left(
                [
                  Leg.fromData(
                    startingPoints: 301,
                    throws: [],
                  ),
                ],
              ),
              targetAverage: 10,
            ),
          ],
        );
        game.size = 11;

        // Assert
        expect(game.size, size);
      });
    });

    group('type', () {
      test(
          'GIVEN pending game and new valid type '
          'WHEN type set '
          'THEN assign type to new value.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;

        // Act
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player(),
            DartBot(),
          ],
        );
        game.type = Type.legs;

        // Assert
        expect(game.type, Type.legs);
      });

      test(
          'GIVEN not pending game and new valid mode '
          'WHEN mode set '
          'THEN not assign mode to new value.', () {
        // Arrange
        final status = Status.running;
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;

        // Act
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: size,
              isCurrentTurn: true,
              legsOrSets: left(
                [
                  Leg.fromData(
                    startingPoints: 301,
                    throws: [],
                  ),
                ],
              ),
            ),
            DartBot.fromData(
              legsOrSetsNeededToWin: size,
              isCurrentTurn: false,
              legsOrSets: left(
                [
                  Leg.fromData(
                    startingPoints: 301,
                    throws: [],
                  ),
                ],
              ),
              targetAverage: 10,
            ),
          ],
        );
        game.type = Type.sets;

        // Assert
        expect(game.type, Type.legs);
      });
    });
  });

  group('functions', () {
    group('addPlayer', () {
      test(
          'GIVEN pending game with <4 players '
          'WHEN addPlayer called '
          'THEN add new player.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final game = Game(
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
        );

        // Act
        game.addPlayer(player: Player());

        // Assert
        expect(game.players.length, 2);
      });

      test(
          'GIVEN pending game with <4 players '
          'WHEN addPlayer called '
          'THEN return true.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;

        final game = Game(
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
        );

        // Act & Assert
        expect(game.addPlayer(player: Player()), true);
      });

      test(
          'GIVEN pending game with >3 players '
          'WHEN addPlayer called '
          'THEN dont add new player.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player(),
            Player(),
            Player(),
            Player(),
          ],
        );

        // Act
        game.addPlayer(player: Player());

        // Assert
        expect(game.players.length, 4);
      });

      test(
          'GIVEN pending game with >3 players '
          'WHEN addPlayer called '
          'THEN return false.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player(),
            Player(),
            Player(),
            Player(),
          ],
        );

        // Act & Assert
        expect(game.addPlayer(player: Player()), false);
      });

      test(
          'GIVEN not pending game '
          'WHEN addPlayer called '
          'THEN dont add new player.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;
        final game = Game.fromData(
          status: Status.running,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: true,
              legsOrSets: left(
                [
                  Leg(startingPoints: 301),
                ],
              ),
            ),
          ],
        );

        // Act
        game.addPlayer(player: Player());

        // Assert
        expect(game.players.length, 1);
      });

      test(
          'GIVEN not pending game '
          'WHEN addPlayer called '
          'THEN return false.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;
        final game = Game.fromData(
          status: Status.running,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: true,
              legsOrSets: left(
                [
                  Leg(startingPoints: 301),
                ],
              ),
            ),
          ],
        );

        // Act & Assert
        expect(game.addPlayer(player: Player()), false);
      });
    });

    group('removePlayer', () {
      test(
          'GIVEN pending game with >1 players '
          'WHEN removePlayer called '
          'THEN remove player.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final players = [
          Player(),
          Player(),
        ];
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: players,
        );

        // Act
        game.removePlayer(index: 0);

        // Assert
        expect(game.players.length, 1);
      });

      test(
          'GIVEN pending game with >1 players '
          'WHEN removePlayer called '
          'THEN return true.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final players = [
          Player(),
          Player(),
        ];
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: players,
        );

        // Act & Assert
        expect(game.removePlayer(index: 0), true);
      });

      test(
          'GIVEN pending game with dartbot and 1 player '
          'WHEN removePlayer called '
          'THEN dont remove player.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final players = [
          Player(),
          DartBot(),
        ];
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: players,
        );

        // Act
        game.removePlayer(index: 0);

        // Assert
        expect(game.players.length, 2);
      });

      test(
          'GIVEN pending game with dartbot and 1 player '
          'WHEN removePlayer called '
          'THEN return true.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final players = [
          Player(),
          DartBot(),
        ];
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: players,
        );

        // Act & Assert
        expect(game.removePlayer(index: 0), false);
      });

      test(
          'GIVEN pending game with <2 players '
          'WHEN removePlayer called '
          'THEN dont remove player.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final game = Game(
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
        );

        // Act
        game.removePlayer(index: 0);

        // Assert
        expect(game.players.length, 1);
      });

      test(
          'GIVEN pending game with <2 players '
          'WHEN removePlayer called '
          'THEN return false.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final game = Game(
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
        );

        // Act & Assert
        expect(game.removePlayer(index: 0), false);
      });

      test(
          'GIVEN not pending game '
          'WHEN removePlayer called '
          'THEN dont remove player.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;
        final game = Game.fromData(
          status: Status.running,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: true,
              legsOrSets: left(
                [
                  Leg(startingPoints: 301),
                ],
              ),
            ),
            Player.fromData(
              id: 'dummyId1',
              name: 'dummyName1',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: false,
              legsOrSets: left(
                [
                  Leg(startingPoints: 301),
                ],
              ),
            ),
          ],
        );

        // Act
        game.removePlayer(index: 0);

        // Assert
        expect(game.players.length, 2);
      });

      test(
          'GIVEN not pending game '
          'WHEN removePlayer called '
          'THEN return false.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;
        final game = Game.fromData(
          status: Status.running,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: true,
              legsOrSets: left(
                [
                  Leg(startingPoints: 301),
                ],
              ),
            ),
            Player.fromData(
              id: 'dummyId1',
              name: 'dummyName1',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: false,
              legsOrSets: left(
                [
                  Leg(startingPoints: 301),
                ],
              ),
            ),
          ],
        );

        // Act & Assert
        expect(game.removePlayer(index: 0), false);
      });
    });

    group('reorderPlayer', () {
      test(
          'GIVEN pending game valid oldIndex, newIndex '
          'WHEN reorderPlayer called '
          'THEN reorder players.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final player1 = Player();
        final player2 = Player();

        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            player1,
            player2,
          ],
        );

        // Act
        game.reorderPlayer(oldIndex: 0, newIndex: 1);

        // Assert
        expect(game.players[0], player2);
        expect(game.players[1], player1);
      });

      test(
          'GIVEN pending game valid oldIndex, newIndex '
          'WHEN reorderPlayer called '
          'THEN return true.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final players = [
          Player(),
          Player(),
        ];
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: players,
        );

        // Act & Assert
        expect(game.reorderPlayer(oldIndex: 0, newIndex: 1), true);
      });

      test(
          'GIVEN oldIndex == newIndex '
          'WHEN reorderPlayer called '
          'THEN return false.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final players = [
          Player(),
          Player(),
        ];
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: players,
        );

        // Act & Assert
        expect(game.reorderPlayer(oldIndex: 0, newIndex: 0), false);
      });

      test(
          'GIVEN oldIndex <0 '
          'WHEN reorderPlayer called '
          'THEN return false.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final players = [
          Player(),
          Player(),
        ];
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: players,
        );

        // Act & Assert
        expect(game.reorderPlayer(oldIndex: -1, newIndex: 0), false);
      });

      test(
          'GIVEN newIndex <0 '
          'WHEN reorderPlayer called '
          'THEN return false.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final players = [
          Player(),
          Player(),
        ];
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: players,
        );

        // Act & Assert
        expect(game.reorderPlayer(oldIndex: 0, newIndex: -1), false);
      });

      test(
          'GIVEN oldIndex > amount of players - 1 '
          'WHEN reorderPlayer called '
          'THEN return false.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final players = [
          Player(),
          Player(),
        ];
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: players,
        );

        // Act & Assert
        expect(game.reorderPlayer(oldIndex: 2, newIndex: 0), false);
      });

      test(
          'GIVEN newIndex > amount of players - 1 '
          'WHEN reorderPlayer called '
          'THEN return false.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final players = [
          Player(),
          Player(),
        ];
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: players,
        );

        // Act & Assert
        expect(game.reorderPlayer(oldIndex: 0, newIndex: 2), false);
      });

      test(
          'GIVEN not pending game '
          'WHEN reorderPlayer called '
          'THEN return false.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;
        final game = Game.fromData(
          status: Status.running,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: true,
              legsOrSets: left(
                [
                  Leg(startingPoints: 301),
                ],
              ),
            ),
            Player.fromData(
              id: 'dummyId1',
              name: 'dummyName1',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: false,
              legsOrSets: left(
                [
                  Leg(startingPoints: 301),
                ],
              ),
            ),
          ],
        );

        // Act & Assert
        expect(game.reorderPlayer(oldIndex: 0, newIndex: 1), false);
      });
    });

    group('addDartBot', () {
      test(
          'GIVEN pending game with <4 players and no dartbot '
          'WHEN addDartBot called '
          'THEN add dartbot.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final game = Game(
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
        );

        // Act
        game.addDartBot();

        // Assert
        expect(game.players.length, 2);
      });

      test(
          'GIVEN pending game with <4 players and no dartbot '
          'WHEN addDartBot called '
          'THEN return true.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;

        final game = Game(
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
        );

        // Act & Assert
        expect(game.addDartBot(), true);
      });

      test(
          'GIVEN pending game with >3 players '
          'WHEN addDartBot called '
          'THEN dont add dartbot.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player(),
            Player(),
            Player(),
            Player(),
          ],
        );

        // Act
        game.addDartBot();

        // Assert
        expect(game.players.length, 4);
      });

      test(
          'GIVEN pending game with >3 players '
          'WHEN addDartBot called '
          'THEN return false.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player(),
            Player(),
            Player(),
            Player(),
          ],
        );

        // Act & Assert
        expect(game.addDartBot(), false);
      });

      test(
          'GIVEN pending game with <4 players but already has dartBot'
          'WHEN addDartBot called '
          'THEN dont add dartbot.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player(),
            Player(),
            DartBot(),
          ],
        );

        // Act
        game.addDartBot();

        // Assert
        expect(game.players.length, 3);
      });

      test(
          'GIVEN pending game with <4 players but already has dartBot '
          'WHEN addDartBot called '
          'THEN return false.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player(),
            Player(),
            DartBot(),
          ],
        );

        // Act & Assert
        expect(game.addDartBot(), false);
      });

      test(
          'GIVEN not pending game '
          'WHEN addDartBot called '
          'THEN dont add dartbot.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;
        final game = Game.fromData(
          status: Status.running,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: true,
              legsOrSets: left(
                [
                  Leg(startingPoints: 301),
                ],
              ),
            ),
          ],
        );

        // Act
        game.addPlayer(player: Player());

        // Assert
        expect(game.players.length, 1);
      });

      test(
          'GIVEN not pending game '
          'WHEN addDartBot called '
          'THEN return false.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;
        final game = Game.fromData(
          status: Status.running,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: true,
              legsOrSets: left(
                [
                  Leg(startingPoints: 301),
                ],
              ),
            ),
          ],
        );

        // Act & Assert
        expect(game.addDartBot(), false);
      });
    });

    group('removeDartBot', () {
      test(
          'GIVEN pending game with >1 players and dartbot '
          'WHEN removeDartBot called '
          'THEN remove dartbot.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;
        final game = Game.fromData(
          status: Status.pending,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player(),
            DartBot(),
          ],
        );

        game.removeDartBot();

        // Act & Assert
        expect(game.players.length, 1);
      });

      test(
          'GIVEN pending with dartbot '
          'WHEN removeDartBot called '
          'THEN return true.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;
        final game = Game.fromData(
          status: Status.pending,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player(),
            DartBot(),
          ],
        );

        // Act & Assert
        expect(game.removeDartBot(), true);
      });

      test(
          'GIVEN pending without dartbot '
          'WHEN removeDartBot called '
          'THEN return false.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;
        final game = Game.fromData(
          status: Status.pending,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player(),
          ],
        );

        // Act & Assert
        expect(game.removeDartBot(), false);
      });

      test(
          'GIVEN not pending game with dartbot '
          'WHEN removeDartBot called '
          'THEN dont remove dartbot.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;
        final game = Game.fromData(
          status: Status.running,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: true,
              legsOrSets: left(
                [
                  Leg(startingPoints: 301),
                ],
              ),
            ),
            DartBot.fromData(
              targetAverage: 10,
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: false,
              legsOrSets: left(
                [
                  Leg(startingPoints: 301),
                ],
              ),
            ),
          ],
        );

        // Act
        game.removeDartBot();

        // Assert
        expect(game.players.length, 2);
      });

      test(
          'GIVEN not pending game with dartbot '
          'WHEN removeDartBot called '
          'THEN return false.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;
        final game = Game.fromData(
          status: Status.running,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: true,
              legsOrSets: left(
                [
                  Leg(startingPoints: 301),
                ],
              ),
            ),
            DartBot.fromData(
              targetAverage: 10,
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: false,
              legsOrSets: left(
                [
                  Leg(startingPoints: 301),
                ],
              ),
            ),
          ],
        );

        // Act & Assert
        expect(game.removeDartBot(), false);
      });
    });

    group('start', () {
      test(
          'GIVEN pending game '
          'WHEN start called '
          'THEN status is running.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final players = [
          Player(),
          Player(),
        ];
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: players,
        );

        // Act
        game.start();

        // Assert
        expect(game.status, Status.running);
      });

      test(
          'GIVEN pending game '
          'WHEN start called '
          'THEN first player is currentTurn all other players are not.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final players = [
          Player(),
          Player(),
        ];
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: players,
        );

        // Act
        game.start();

        // Assert
        expect(game.players[0].isCurrentTurn, true);
        expect(game.players[1].isCurrentTurn, false);
      });

      test(
          'GIVEN pending game with type legs '
          'WHEN start called '
          'THEN all players legsOrSets are list of legs with 1 item.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 3;
        final type = Type.legs;
        final players = [
          Player(),
          Player(),
        ];
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: players,
        );

        // Act
        game.start();

        // Assert
        expect(game.players[0].legsOrSets!.isLeft(), true);
        expect(
          game.players[0].legsOrSets!.swap().toOption().toNullable()!.length,
          1,
        );
        expect(game.players[1].legsOrSets!.isLeft(), true);
        expect(
          game.players[1].legsOrSets!.swap().toOption().toNullable()!.length,
          1,
        );
      });

      test(
          'GIVEN pending game with type sets '
          'WHEN start called '
          'THEN all players legsOrSets are list of sets with 1 item.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 3;
        final type = Type.sets;
        final players = [
          Player(),
          Player(),
        ];
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: players,
        );

        // Act
        game.start();

        // Assert
        expect(game.players[0].legsOrSets!.isRight(), true);
        expect(
          game.players[0].legsOrSets!.toOption().toNullable()!.length,
          1,
        );
        expect(game.players[1].legsOrSets!.isRight(), true);
        expect(
          game.players[1].legsOrSets!.toOption().toNullable()!.length,
          1,
        );
      });

      test(
          'GIVEN pending game with dartBot as the first player '
          'WHEN start called '
          'THEN perform a dartbot throw.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 3;
        final type = Type.sets;
        final players = [
          DartBot(),
          Player(),
        ];
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: players,
        );

        // Act
        game.start();

        // Assert
        expect(
          game.players[0].legsOrSets!
              .toOption()
              .toNullable()!
              .last
              .legs
              .last
              .throws
              .length,
          1,
        );
      });

      test(
          'GIVEN pending game '
          'WHEN start called '
          'THEN return true.', () {
        // Arrange
        final status = Status.pending;
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final players = [
          Player(),
          Player(),
        ];
        final game = Game.fromData(
          status: status,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: players,
        );

        // Act & Assert
        expect(game.start(), true);
      });

      test(
          'GIVEN not pending game '
          'WHEN start called '
          'THEN return false.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;
        final game = Game.fromData(
          status: Status.running,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: true,
              legsOrSets: left(
                [
                  Leg(startingPoints: 301),
                ],
              ),
            ),
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: false,
              legsOrSets: left(
                [
                  Leg(startingPoints: 301),
                ],
              ),
            ),
          ],
        );

        // Act & Assert
        expect(game.start(), false);
      });
    });

    group('cancel', () {
      test(
          'GIVEN pending game '
          'WHEN cancel called '
          'THEN cancel game.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final game = Game(
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
        );

        // Act
        game.cancel();

        // Assert
        expect(game.status, Status.canceled);
      });

      test(
          'GIVEN pending game '
          'WHEN cancel called '
          'THEN return true.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.bestOf;
        final size = 2;
        final type = Type.sets;
        final game = Game(
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
        );

        // Act & Assert
        expect(game.cancel(), true);
      });

      test(
          'GIVEN running game '
          'WHEN cancel called '
          'THEN cancel game.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;
        final game = Game.fromData(
          status: Status.running,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: true,
              legsOrSets: left(
                [
                  Leg(startingPoints: 301),
                ],
              ),
            ),
          ],
        );

        // Act
        game.cancel();

        // Assert
        expect(game.status, Status.canceled);
      });

      test(
          'GIVEN running game '
          'WHEN cancel called '
          'THEN return true.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;
        final game = Game.fromData(
          status: Status.running,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: true,
              legsOrSets: left(
                [
                  Leg(startingPoints: 301),
                ],
              ),
            ),
          ],
        );

        // Act & Assert
        expect(game.cancel(), true);
      });

      test(
          'GIVEN canceled game '
          'WHEN cancel called '
          'THEN return false.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;
        final game = Game.fromData(
          status: Status.canceled,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: true,
              legsOrSets: left(
                [
                  Leg(startingPoints: 301),
                ],
              ),
            ),
          ],
        );

        // Act & Assert
        expect(game.cancel(), false);
      });

      test(
          'GIVEN finished game '
          'WHEN cancel called '
          'THEN return false.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;
        final game = Game.fromData(
          status: Status.finished,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: true,
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
            ),
          ],
        );

        // Act & Assert
        expect(game.cancel(), false);
        expect(game.status, Status.finished);
      });
    });

    group('performThrow', () {
      test(
          'GIVEN not running game '
          'WHEN performThrow called '
          'THEN return false.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;
        final game = Game.fromData(
          status: Status.canceled,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: true,
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
                ],
              ),
            ),
          ],
        );

        // Act & Assert
        expect(
          game.performThrow(
            t: Throw(points: 121, dartsOnDouble: 1),
          ),
          false,
        );
      });

      test(
          'GIVEN running game and valid but not leg and not set and not game winning throw '
          'WHEN performThrow called and dartbot is next turn'
          'THEN perform a dartbot throw.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.sets;
        final game = Game.fromData(
          status: Status.running,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: true,
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
            ),
            DartBot.fromData(
              targetAverage: 10,
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
            ),
          ],
        );
        final t = Throw(points: 180);
        // Act
        game.performThrow(
          t: t,
        );

        // Assert
        expect(
          game.players[0].legsOrSets!
              .toOption()
              .toNullable()!
              .last
              .legs
              .last
              .throws
              .length,
          1,
        );
        expect(
          game.players[1].legsOrSets!
              .toOption()
              .toNullable()!
              .last
              .legs
              .last
              .throws
              .length,
          1,
        );
      });

      test(
          'GIVEN running game and valid but not leg and not set and not game winning throw '
          'WHEN performThrow called and dartbot is next turn'
          'THEN update isCurrentTurn of all players correctly.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.sets;
        final game = Game.fromData(
          status: Status.running,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: true,
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
            ),
            DartBot.fromData(
              targetAverage: 10,
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
            ),
          ],
        );
        final t = Throw(points: 180);
        // Act
        game.performThrow(
          t: t,
        );

        // Assert
        expect(game.players[0].isCurrentTurn, true);
        expect(game.players[1].isCurrentTurn, false);
      });

      group('legs', () {
        test(
            'GIVEN running game and valid throw '
            'WHEN performThrow called '
            'THEN return true.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.legs;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
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
                  ],
                ),
              ),
            ],
          );
          final t = Throw(points: 100);

          // Act & Assert
          expect(
            game.performThrow(
              t: t,
            ),
            true,
          );
        });

        test(
            'GIVEN running game and valid throw '
            'WHEN performThrow called '
            'THEN add throw to current turns current leg.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.legs;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: false,
                legsOrSets: left(
                  [
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
                        Throw(points: 0),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
          final t = Throw(points: 100);
          // Act
          game.performThrow(
            t: t,
          );

          // Assert
          expect(
            game.players[0].legsOrSets!
                .swap()
                .toOption()
                .toNullable()!
                .last
                .throws
                .last,
            t,
          );
        });

        test(
            'GIVEN running game and game winning throw '
            'WHEN performThrow called '
            'THEN finish game.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.legs;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
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
                  ],
                ),
              ),
            ],
          );
          final t = Throw(points: 121, dartsOnDouble: 1);

          // Act
          game.performThrow(
            t: t,
          );

          // Assert
          expect(game.status, Status.finished);
        });

        test(
            'GIVEN running game and leg winning but not game winning throw '
            'WHEN performThrow called '
            'THEN create new leg for all players.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.legs;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: false,
                legsOrSets: left(
                  [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
          final t = Throw(points: 121, dartsOnDouble: 1);

          // Act
          game.performThrow(
            t: t,
          );

          // Assert
          expect(
            game.players[0].legsOrSets!.swap().toOption().toNullable()!.length,
            2,
          );
          expect(
            game.players[0].legsOrSets!
                .swap()
                .toOption()
                .toNullable()!
                .last
                .startingPoints,
            startingPoints,
          );

          expect(
            game.players[1].legsOrSets!.swap().toOption().toNullable()!.length,
            2,
          );

          expect(
            game.players[1].legsOrSets!
                .swap()
                .toOption()
                .toNullable()!
                .last
                .startingPoints,
            startingPoints,
          );
        });

        test(
            'GIVEN running game and leg winning but not game winning throw '
            'WHEN performThrow called '
            'THEN update isCurrentTurn of all players correctly.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.legs;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: false,
                legsOrSets: left(
                  [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
          final t = Throw(points: 121, dartsOnDouble: 1);

          // Act
          game.performThrow(
            t: t,
          );

          // Assert
          expect(game.players[0].isCurrentTurn, false);
          expect(game.players[1].isCurrentTurn, true);
        });

        test(
            'GIVEN running game and not leg, game winning throw '
            'WHEN performThrow called '
            'THEN update isCurrentTurn of all players correctly.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.legs;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
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
              ),
            ],
          );
          final t = Throw(points: 180);

          // Act
          game.performThrow(
            t: t,
          );

          // Assert
          expect(game.players[0].isCurrentTurn, false);
          expect(game.players[1].isCurrentTurn, true);
        });
      });

      group('sets', () {
        test(
            'GIVEN running game and valid throw '
            'WHEN performThrow called '
            'THEN return true.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
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
                        Leg.fromData(
                          startingPoints: 301,
                          throws: [
                            Throw(points: 180),
                            Throw(points: 0),
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
                    Set.fromData(
                      startingPoints: 301,
                      legs: [
                        Leg.fromData(
                          startingPoints: 301,
                          throws: [
                            Throw(points: 180),
                            Throw(points: 0),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
          final t = Throw(points: 100);

          // Act & Assert
          expect(
            game.performThrow(
              t: t,
            ),
            true,
          );
        });

        test(
            'GIVEN running game and valid throw '
            'WHEN performThrow called '
            'THEN add throw to current turns current leg.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
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
                        Leg.fromData(
                          startingPoints: 301,
                          throws: [
                            Throw(points: 180),
                            Throw(points: 0),
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
                    Set.fromData(
                      startingPoints: 301,
                      legs: [
                        Leg.fromData(
                          startingPoints: 301,
                          throws: [
                            Throw(points: 180),
                            Throw(points: 0),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
          final t = Throw(points: 100);
          // Act
          game.performThrow(
            t: t,
          );

          // Assert
          expect(
            game.players[0].legsOrSets!
                .toOption()
                .toNullable()!
                .last
                .legs
                .last
                .throws
                .last,
            t,
          );
        });

        test(
            'GIVEN running game and game winning throw '
            'WHEN performThrow called '
            'THEN finish game.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
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
                        Leg.fromData(
                          startingPoints: 301,
                          throws: [
                            Throw(points: 180),
                            Throw(points: 0),
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
                    Set.fromData(
                      startingPoints: 301,
                      legs: [
                        Leg.fromData(
                          startingPoints: 301,
                          throws: [
                            Throw(points: 180),
                            Throw(points: 0),
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
                            Throw(points: 0),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
          final t = Throw(points: 121, dartsOnDouble: 1);
          // Act
          game.performThrow(
            t: t,
          );

          // Assert
          expect(game.status, Status.finished);
        });

        test(
            'GIVEN running game and set winning but not game winning throw '
            'WHEN performThrow called '
            'THEN create new set for all players.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
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
                        Leg.fromData(
                          startingPoints: 301,
                          throws: [
                            Throw(points: 180),
                            Throw(points: 0),
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
              ),
            ],
          );
          final t = Throw(points: 121, dartsOnDouble: 1);
          // Act
          game.performThrow(
            t: t,
          );

          // Assert
          expect(
            game.players[0].legsOrSets!.toOption().toNullable()!.length,
            2,
          );
          expect(
            game.players[0].legsOrSets!
                .toOption()
                .toNullable()!
                .last
                .startingPoints,
            startingPoints,
          );

          expect(
            game.players[1].legsOrSets!.toOption().toNullable()!.length,
            2,
          );
          expect(
            game.players[1].legsOrSets!
                .toOption()
                .toNullable()!
                .last
                .startingPoints,
            startingPoints,
          );
        });

        test(
            'GIVEN running game and set winning but not game winning throw '
            'WHEN performThrow called '
            'THEN update isCurrentTurn of all players correctly.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
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
                        Leg.fromData(
                          startingPoints: 301,
                          throws: [
                            Throw(points: 180),
                            Throw(points: 0),
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
              ),
            ],
          );
          final t = Throw(points: 121, dartsOnDouble: 1);
          // Act
          game.performThrow(
            t: t,
          );

          // Assert
          expect(game.players[0].isCurrentTurn, false);
          expect(game.players[1].isCurrentTurn, true);
        });

        test(
            'GIVEN running game and leg winning but not set and not game winning throw '
            'WHEN performThrow called '
            'THEN create new leg for all players.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
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
              ),
            ],
          );
          final t = Throw(points: 121, dartsOnDouble: 1);
          // Act
          game.performThrow(
            t: t,
          );

          // Assert
          expect(
            game.players[0].legsOrSets!
                .toOption()
                .toNullable()!
                .last
                .legs
                .length,
            2,
          );
          expect(
            game.players[0].legsOrSets!
                .toOption()
                .toNullable()!
                .last
                .legs
                .last
                .startingPoints,
            startingPoints,
          );

          expect(
            game.players[1].legsOrSets!
                .toOption()
                .toNullable()!
                .last
                .legs
                .length,
            2,
          );
          expect(
            game.players[1].legsOrSets!
                .toOption()
                .toNullable()!
                .last
                .legs
                .last
                .startingPoints,
            startingPoints,
          );
        });

        test(
            'GIVEN running game and leg winning but not set and not game winning throw '
            'WHEN performThrow called '
            'THEN update isCurrentTurn of all players correctly.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
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
              ),
            ],
          );
          final t = Throw(points: 121, dartsOnDouble: 1);
          // Act
          game.performThrow(
            t: t,
          );

          // Assert
          expect(game.players[0].isCurrentTurn, false);
          expect(game.players[1].isCurrentTurn, true);
        });

        test(
            'GIVEN running game and valid but not leg and not set and not game winning throw '
            'WHEN performThrow called '
            'THEN update isCurrentTurn of all players correctly.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
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
              ),
            ],
          );
          final t = Throw(points: 180);
          // Act
          game.performThrow(
            t: t,
          );

          // Assert
          expect(game.players[0].isCurrentTurn, false);
          expect(game.players[1].isCurrentTurn, true);
        });
      });
    });

    group('undoThrow', () {
      test(
          'GIVEN not running game '
          'WHEN undoThrow called '
          'THEN return false.', () {
        // Arrange
        final startingPoints = 301;
        final mode = Mode.firstTo;
        final size = 2;
        final type = Type.legs;
        final game = Game.fromData(
          status: Status.canceled,
          startingPoints: startingPoints,
          mode: mode,
          size: size,
          type: type,
          players: [
            Player.fromData(
              id: 'dummyId',
              name: 'dummyName',
              legsOrSetsNeededToWin: 2,
              isCurrentTurn: true,
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
                ],
              ),
            ),
          ],
        );

        // Act & Assert
        expect(game.undoThrow(), false);
      });

      group('legs', () {
        test(
            'GIVEN running game with 0 throws '
            'WHEN undoThrow called '
            'THEN return false.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.legs;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
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
              ),
            ],
          );

          // Act & Assert
          expect(
            game.undoThrow(),
            false,
          );
        });

        test(
            'GIVEN running game >1 legs and 0 throws in currentLeg '
            'WHEN undoThrow called '
            'THEN remove last leg from all players.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.legs;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
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
                      throws: [],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                      ],
                    ),
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [],
                    ),
                  ],
                ),
              ),
            ],
          );

          // Act
          game.undoThrow();

          // Assert
          expect(
            game.players[0].legsOrSets!.swap().toOption().toNullable()!.length,
            1,
          );
          expect(
            game.players[1].legsOrSets!.swap().toOption().toNullable()!.length,
            1,
          );
        });

        test(
            'GIVEN running game >1 legs and 0 throws in currentLeg '
            'WHEN undoThrow called '
            'THEN remove last throw of winner of previous leg.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.legs;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
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
                      throws: [],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                      ],
                    ),
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [],
                    ),
                  ],
                ),
              ),
            ],
          );

          // Act
          game.undoThrow();

          // Assert
          expect(
            game.players[0].legsOrSets!
                .swap()
                .toOption()
                .toNullable()!
                .last
                .throws
                .length,
            1,
          );
        });

        test(
            'GIVEN running game >1 legs and 0 throws in currentLeg '
            'WHEN undoThrow called '
            'THEN updated isCurrentTurn of all players correctly.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.legs;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
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
                      throws: [],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                      ],
                    ),
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [],
                    ),
                  ],
                ),
              ),
            ],
          );

          // Act
          game.undoThrow();

          // Assert
          expect(game.players[0].isCurrentTurn, true);
          expect(game.players[1].isCurrentTurn, false);
        });

        test(
            'GIVEN running game >1 legs and 0 throws in currentLeg '
            'WHEN undoThrow called '
            'THEN return true.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.legs;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
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
                      throws: [],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                      ],
                    ),
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [],
                    ),
                  ],
                ),
              ),
            ],
          );

          // Act & Assert
          expect(game.undoThrow(), true);
        });

        test(
            'GIVEN running game >0 legs and >0 throws in currentLeg '
            'WHEN undoThrow called '
            'THEN remove last throw of pervious turn.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.legs;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: false,
                legsOrSets: left(
                  [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                        Throw(points: 21),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );

          // Act
          game.undoThrow();

          // Assert
          expect(
            game.players[0].legsOrSets!
                .swap()
                .toOption()
                .toNullable()!
                .last
                .throws
                .length,
            1,
          );
        });

        test(
            'GIVEN running game >0 legs and >0 throws in currentLeg '
            'WHEN undoThrow called '
            'THEN return true.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.legs;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: false,
                legsOrSets: left(
                  [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                        Throw(points: 21),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );

          // Act & Assert
          expect(game.undoThrow(), true);
        });

        test(
            'GIVEN running game with dartbot and >0 legs and >0 throws in currentLeg '
            'WHEN undoThrow called '
            'THEN remove last throw of dartbot and the throw of player previous to darbot.',
            () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.legs;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              DartBot.fromData(
                targetAverage: 100,
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: false,
                legsOrSets: left(
                  [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                        Throw(points: 21),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );

          // Act
          game.undoThrow();

          // Assert
          expect(
            game.players[0].legsOrSets!
                .swap()
                .toOption()
                .toNullable()!
                .last
                .throws
                .length,
            1,
          );
          expect(
            game.players[1].legsOrSets!
                .swap()
                .toOption()
                .toNullable()!
                .last
                .throws
                .length,
            0,
          );
        });

        test(
            'GIVEN running game with dartbot and >0 legs and >0 throws in currentLeg '
            'WHEN undoThrow called '
            'THEN return true.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.legs;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              DartBot.fromData(
                targetAverage: 100,
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: false,
                legsOrSets: left(
                  [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                        Throw(points: 21),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
                legsOrSets: left(
                  [
                    Leg.fromData(
                      startingPoints: 301,
                      throws: [
                        Throw(points: 180),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );

          // Act & Assert
          expect(game.undoThrow(), true);
        });
      });

      group('sets', () {
        test(
            'GIVEN running game with 0 throws '
            'WHEN undoThrow called '
            'THEN return false.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
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
              ),
            ],
          );

          // Act & Assert
          expect(
            game.undoThrow(),
            false,
          );
        });

        test(
            'GIVEN running game with >1 sets and 0 throws in current set '
            'WHEN undoThrow called '
            'THEN remove last set from all players.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
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
                          throws: [],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
                ),
              ),
            ],
          );

          // Act
          game.undoThrow();

          // Assert
          expect(
            game.players[0].legsOrSets!.toOption().toNullable()!.length,
            1,
          );
          expect(
            game.players[1].legsOrSets!.toOption().toNullable()!.length,
            1,
          );
        });

        test(
            'GIVEN running game with >1 sets and 0 throws in current set '
            'WHEN undoThrow called '
            'THEN remove last throw of winner of pervious set.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
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
                          throws: [],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
                ),
              ),
            ],
          );

          // Act
          game.undoThrow();

          // Assert
          expect(
            game.players[0].legsOrSets!
                .toOption()
                .toNullable()!
                .last
                .legs
                .last
                .throws
                .length,
            1,
          );
        });

        test(
            'GIVEN running game with >1 sets and 0 throws in current set '
            'WHEN undoThrow called '
            'THEN updated isCurrentTurn of all players correctly.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
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
                          throws: [],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
                ),
              ),
            ],
          );

          // Act
          game.undoThrow();

          // Assert
          expect(game.players[0].isCurrentTurn, true);
          expect(game.players[1].isCurrentTurn, false);
        });

        test(
            'GIVEN running game with >1 sets and 0 throws in current set '
            'WHEN undoThrow called '
            'THEN return true.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
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
                          throws: [],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
                ),
              ),
            ],
          );

          // Act & Assert
          expect(game.undoThrow(), true);
        });

        test(
            'GIVEN running game with >0 sets, >1 legs and 0 throws in current leg '
            'WHEN undoThrow called '
            'THEN remove last leg from current set of all players.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
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
                          throws: [],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
                        Leg.fromData(
                          startingPoints: 301,
                          throws: [],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );

          // Act
          game.undoThrow();

          // Assert
          expect(
            game.players[0].legsOrSets!
                .toOption()
                .toNullable()!
                .last
                .legs
                .length,
            1,
          );
          expect(
            game.players[1].legsOrSets!
                .toOption()
                .toNullable()!
                .last
                .legs
                .length,
            1,
          );
        });

        test(
            'GIVEN running game with >0 sets, >1 legs and 0 throws in current leg '
            'WHEN undoThrow called '
            'THEN remove last throw of winner of previous leg.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
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
                          throws: [],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
                        Leg.fromData(
                          startingPoints: 301,
                          throws: [],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );

          // Act
          game.undoThrow();

          // Assert
          expect(
            game.players[0].legsOrSets!
                .toOption()
                .toNullable()!
                .last
                .legs
                .last
                .throws
                .length,
            1,
          );
        });

        test(
            'GIVEN running game with >0 sets, >1 legs and 0 throws in current leg '
            'WHEN undoThrow called '
            'THEN updated isCurrentTurn of all players correctly.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
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
                          throws: [],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
                        Leg.fromData(
                          startingPoints: 301,
                          throws: [],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );

          // Act
          game.undoThrow();

          // Assert
          expect(game.players[0].isCurrentTurn, true);
          expect(game.players[1].isCurrentTurn, false);
        });

        test(
            'GIVEN running game with >0 sets, >1 legs and 0 throws in current leg '
            'WHEN undoThrow called '
            'THEN return true.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
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
                          throws: [],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
                        Leg.fromData(
                          startingPoints: 301,
                          throws: [],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );

          // Act & Assert
          expect(game.undoThrow(), true);
        });

        test(
            'GIVEN running game with >0 sets, >0 throws in current leg '
            'WHEN undoThrow called '
            'THEN remove last throw of previous turn.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
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
                            Throw(points: 21),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
              ),
            ],
          );

          // Act
          game.undoThrow();

          // Act & Assert
          expect(
            game.players[0].legsOrSets!
                .toOption()
                .toNullable()!
                .last
                .legs
                .last
                .throws
                .length,
            1,
          );
        });

        test(
            'GIVEN running game with >0 sets, >0 throws in current leg '
            'WHEN undoThrow called '
            'THEN return true.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              Player.fromData(
                id: 'dummyId',
                name: 'dummyName',
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
                            Throw(points: 21),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
              ),
            ],
          );

          // Act & Assert
          expect(game.undoThrow(), true);
        });

        test(
            'GIVEN running game with dartbot, >0 sets and >0 throws in current leg '
            'WHEN undoThrow called '
            'THEN remove last throw of dartbot and the throw of player previous to darbot.',
            () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              DartBot.fromData(
                targetAverage: 100,
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
                            Throw(points: 21),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
              ),
            ],
          );

          // Act
          game.undoThrow();

          // Assert
          expect(
            game.players[0].legsOrSets!
                .toOption()
                .toNullable()!
                .last
                .legs
                .last
                .throws
                .length,
            1,
          );
          expect(
            game.players[1].legsOrSets!
                .toOption()
                .toNullable()!
                .last
                .legs
                .last
                .throws
                .length,
            0,
          );
        });

        test(
            'GIVEN running game with dartbot, >0 sets and >0 throws in current leg '
            'WHEN undoThrow called '
            'THEN return true.', () {
          // Arrange
          final startingPoints = 301;
          final mode = Mode.firstTo;
          final size = 2;
          final type = Type.sets;
          final game = Game.fromData(
            status: Status.running,
            startingPoints: startingPoints,
            mode: mode,
            size: size,
            type: type,
            players: [
              DartBot.fromData(
                targetAverage: 100,
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
                            Throw(points: 21),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Player.fromData(
                id: 'dummyId1',
                name: 'dummyName1',
                legsOrSetsNeededToWin: 2,
                isCurrentTurn: true,
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
              ),
            ],
          );

          // Act & Assert
          expect(game.undoThrow(), true);
        });
      });
    });
  });

  group('toString()', () {
    test(
        'GIVEN - '
        'WHEN toString() called '
        'THEN return correct string representation.', () {
      final status = Status.pending;
      final startingPoints = 301;
      final mode = Mode.bestOf;
      final size = 2;
      final type = Type.sets;
      final players = [
        Player(id: 'dummyId1', name: 'dummyName1'),
        Player(id: 'dummyId2', name: 'dummyName2'),
      ];

      // Act
      final game = Game.fromData(
        status: status,
        startingPoints: startingPoints,
        mode: mode,
        size: size,
        type: type,
        players: players,
      );

      // Act & Assert
      expect(
        game.toString(),
        'Game{status: $status, startingPoints: $startingPoints, mode: $mode, size: $size, '
        'type: $type, players: $players}',
      );
    });
  });
}
