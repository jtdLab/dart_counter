import 'package:dart_counter/infrastructure/game/abstract_legs_or_sets_dto.dart';
import 'package:dart_counter/infrastructure/game/abstract_player_dto.dart';
import 'package:dart_counter/infrastructure/game/converters.dart';
import 'package:dart_counter/infrastructure/game/leg_dto.dart';
import 'package:dart_counter/infrastructure/game/set_dto.dart';
import 'package:dart_counter/infrastructure/game/throw_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AbstractLegsOrSetsConverter', () {
    group('fromJson', () {
      test('legs', () {
        // Arrange
        final json = [
          {
            'throws': [
              {
                'points': 180,
                'dartsThrown': 3,
                'dartsOnDouble': 0,
                'darts': null,
              },
              {
                'points': 20,
                'dartsThrown': 3,
                'dartsOnDouble': 0,
                'darts': null,
              }
            ],
          },
          {
            'throws': [
              {
                'points': 100,
                'dartsThrown': 3,
                'dartsOnDouble': 0,
                'darts': null,
              },
              {
                'points': 100,
                'dartsThrown': 3,
                'dartsOnDouble': 0,
                'darts': null,
              }
            ],
          }
        ];

        // Act
        final dto = const AbstractLegsOrSetsConverter().fromJson(json);

        // Assert
        expect(dto, isA<List<LegDto>>());
        expect(dto, [
          const LegDto(
            throws: [
              ThrowDto(points: 180, dartsThrown: 3, dartsOnDouble: 0),
              ThrowDto(points: 20, dartsThrown: 3, dartsOnDouble: 0),
            ],
          ),
          const LegDto(
            throws: [
              ThrowDto(points: 100, dartsThrown: 3, dartsOnDouble: 0),
              ThrowDto(points: 100, dartsThrown: 3, dartsOnDouble: 0),
            ],
          ),
        ]);
      });

      test('sets', () {
        // Arrange
        final json = [
          {
            'legs': [
              {
                'throws': [
                  {
                    'points': 180,
                    'dartsThrown': 3,
                    'dartsOnDouble': 0,
                    'darts': null,
                  },
                  {
                    'points': 20,
                    'dartsThrown': 3,
                    'dartsOnDouble': 0,
                    'darts': null,
                  }
                ],
              },
              {
                'throws': [
                  {
                    'points': 100,
                    'dartsThrown': 3,
                    'dartsOnDouble': 0,
                    'darts': null,
                  },
                  {
                    'points': 100,
                    'dartsThrown': 3,
                    'dartsOnDouble': 0,
                    'darts': null,
                  }
                ],
              }
            ],
          },
          {
            'legs': [
              {
                'throws': [
                  {
                    'points': 180,
                    'dartsThrown': 3,
                    'dartsOnDouble': 0,
                    'darts': null,
                  },
                  {
                    'points': 20,
                    'dartsThrown': 3,
                    'dartsOnDouble': 0,
                    'darts': null,
                  }
                ],
              },
              {
                'throws': [
                  {
                    'points': 100,
                    'dartsThrown': 3,
                    'dartsOnDouble': 0,
                    'darts': null,
                  },
                  {
                    'points': 100,
                    'dartsThrown': 3,
                    'dartsOnDouble': 0,
                    'darts': null,
                  }
                ],
              }
            ],
          },
        ];

        // Act
        final dto = const AbstractLegsOrSetsConverter().fromJson(json);

        // Assert
        expect(dto, isA<List<SetDto>>());
        expect(dto, [
          const SetDto(
            legs: [
              LegDto(
                throws: [
                  ThrowDto(points: 180, dartsThrown: 3, dartsOnDouble: 0),
                  ThrowDto(points: 20, dartsThrown: 3, dartsOnDouble: 0),
                ],
              ),
              LegDto(
                throws: [
                  ThrowDto(points: 100, dartsThrown: 3, dartsOnDouble: 0),
                  ThrowDto(points: 100, dartsThrown: 3, dartsOnDouble: 0),
                ],
              ),
            ],
          ),
          const SetDto(
            legs: [
              LegDto(
                throws: [
                  ThrowDto(points: 180, dartsThrown: 3, dartsOnDouble: 0),
                  ThrowDto(points: 20, dartsThrown: 3, dartsOnDouble: 0),
                ],
              ),
              LegDto(
                throws: [
                  ThrowDto(points: 100, dartsThrown: 3, dartsOnDouble: 0),
                  ThrowDto(points: 100, dartsThrown: 3, dartsOnDouble: 0),
                ],
              ),
            ],
          ),
        ]);
      });
    });

    group('toJson', () {
      test('legs', () {
        // Arrange
        final legs = [
          const LegDto(
            throws: [
              ThrowDto(points: 180, dartsThrown: 3, dartsOnDouble: 0),
              ThrowDto(points: 20, dartsThrown: 3, dartsOnDouble: 0),
            ],
          ),
          const LegDto(
            throws: [
              ThrowDto(points: 100, dartsThrown: 3, dartsOnDouble: 0),
              ThrowDto(points: 100, dartsThrown: 3, dartsOnDouble: 0),
            ],
          ),
        ];

        // Act
        final json = const AbstractLegsOrSetsConverter().toJson(legs);

        // Assert
        expect(
          json,
          [
            {
              'throws': [
                {
                  'points': 180,
                  'dartsThrown': 3,
                  'dartsOnDouble': 0,
                  'darts': null,
                },
                {
                  'points': 20,
                  'dartsThrown': 3,
                  'dartsOnDouble': 0,
                  'darts': null,
                }
              ],
            },
            {
              'throws': [
                {
                  'points': 100,
                  'dartsThrown': 3,
                  'dartsOnDouble': 0,
                  'darts': null,
                },
                {
                  'points': 100,
                  'dartsThrown': 3,
                  'dartsOnDouble': 0,
                  'darts': null,
                }
              ],
            }
          ],
        );
      });

      test('sets', () {
        // Arrange
        final sets = [
          const SetDto(
            legs: [
              LegDto(
                throws: [
                  ThrowDto(points: 180, dartsThrown: 3, dartsOnDouble: 0),
                  ThrowDto(points: 20, dartsThrown: 3, dartsOnDouble: 0),
                ],
              ),
              LegDto(
                throws: [
                  ThrowDto(points: 100, dartsThrown: 3, dartsOnDouble: 0),
                  ThrowDto(points: 100, dartsThrown: 3, dartsOnDouble: 0),
                ],
              ),
            ],
          ),
          const SetDto(
            legs: [
              LegDto(
                throws: [
                  ThrowDto(points: 180, dartsThrown: 3, dartsOnDouble: 0),
                  ThrowDto(points: 20, dartsThrown: 3, dartsOnDouble: 0),
                ],
              ),
              LegDto(
                throws: [
                  ThrowDto(points: 100, dartsThrown: 3, dartsOnDouble: 0),
                  ThrowDto(points: 100, dartsThrown: 3, dartsOnDouble: 0),
                ],
              ),
            ],
          ),
        ];

        // Act
        final json = const AbstractLegsOrSetsConverter().toJson(sets);

        // Assert
        expect(
          json,
          [
            {
              'legs': [
                {
                  'throws': [
                    {
                      'points': 180,
                      'dartsThrown': 3,
                      'dartsOnDouble': 0,
                      'darts': null,
                    },
                    {
                      'points': 20,
                      'dartsThrown': 3,
                      'dartsOnDouble': 0,
                      'darts': null,
                    }
                  ],
                },
                {
                  'throws': [
                    {
                      'points': 100,
                      'dartsThrown': 3,
                      'dartsOnDouble': 0,
                      'darts': null,
                    },
                    {
                      'points': 100,
                      'dartsThrown': 3,
                      'dartsOnDouble': 0,
                      'darts': null,
                    }
                  ],
                }
              ],
            },
            {
              'legs': [
                {
                  'throws': [
                    {
                      'points': 180,
                      'dartsThrown': 3,
                      'dartsOnDouble': 0,
                      'darts': null,
                    },
                    {
                      'points': 20,
                      'dartsThrown': 3,
                      'dartsOnDouble': 0,
                      'darts': null,
                    }
                  ],
                },
                {
                  'throws': [
                    {
                      'points': 100,
                      'dartsThrown': 3,
                      'dartsOnDouble': 0,
                      'darts': null,
                    },
                    {
                      'points': 100,
                      'dartsThrown': 3,
                      'dartsOnDouble': 0,
                      'darts': null,
                    }
                  ],
                }
              ],
            },
          ],
        );
      });

      test('throws error when mixed sets and legs in input list', () {
        // Arrange
        final mixed = [
          const SetDto(
            legs: [
              LegDto(
                throws: [
                  ThrowDto(points: 180, dartsThrown: 3, dartsOnDouble: 0),
                  ThrowDto(points: 20, dartsThrown: 3, dartsOnDouble: 0),
                ],
              ),
              LegDto(
                throws: [
                  ThrowDto(points: 100, dartsThrown: 3, dartsOnDouble: 0),
                  ThrowDto(points: 100, dartsThrown: 3, dartsOnDouble: 0),
                ],
              ),
            ],
          ),
          const LegDto(
            throws: [
              ThrowDto(points: 180, dartsThrown: 3, dartsOnDouble: 0),
              ThrowDto(points: 20, dartsThrown: 3, dartsOnDouble: 0),
            ],
          ),
        ];

        // Act & Assert
        expect(
          () => const AbstractLegsOrSetsConverter().toJson(mixed),
          throwsA(isArgumentError),
        );
      });
    });
  });

  group('AbstractOfflinePlayerDtoConverter', () {
    group('fromJson', () {
      test('OfflinePlayerDto', () {
        // Arrange
        final json = {
          'id': 'dummyId',
          'name': 'dummyName',
          'legsOrSets': [
            {
              'throws': [
                {
                  'points': 180,
                  'dartsThrown': 3,
                  'dartsOnDouble': 0,
                  'darts': null,
                },
                {
                  'points': 20,
                  'dartsThrown': 3,
                  'dartsOnDouble': 0,
                  'darts': null,
                }
              ],
            },
          ],
        };

        // Act
        final dto = const AbstractOfflinePlayerDtoConverter().fromJson(json);

        // Assert
        expect(
          dto,
          const OfflinePlayerDto(
            id: 'dummyId',
            name: 'dummyName',
            legsOrSets: [
              LegDto(
                throws: [
                  ThrowDto(points: 180, dartsThrown: 3, dartsOnDouble: 0),
                  ThrowDto(points: 20, dartsThrown: 3, dartsOnDouble: 0),
                ],
              ),
            ],
          ),
        );
      });

      test('DartBotDto', () {
        // Arrange
        final json = {
          'id': 'dartBot',
          'name': 'DartBot',
          'legsOrSets': [
            {
              'throws': [
                {
                  'points': 180,
                  'dartsThrown': 3,
                  'dartsOnDouble': 0,
                  'darts': null,
                },
                {
                  'points': 20,
                  'dartsThrown': 3,
                  'dartsOnDouble': 0,
                  'darts': null,
                }
              ],
            },
          ],
        };

        // Act
        final dto = const AbstractOfflinePlayerDtoConverter().fromJson(json);

        // Assert
        expect(
          dto,
          const DartBotDto(
            id: 'dartBot',
            name: 'DartBot',
            legsOrSets: [
              LegDto(
                throws: [
                  ThrowDto(points: 180, dartsThrown: 3, dartsOnDouble: 0),
                  ThrowDto(points: 20, dartsThrown: 3, dartsOnDouble: 0),
                ],
              ),
            ],
          ),
        );
      });
    });

    group('toJson', () {
      test('OfflinePlayerDto', () {
        // Arrange
        const dto = OfflinePlayerDto(
          id: 'dummyId',
          name: 'dummyName',
          legsOrSets: [
            LegDto(
              throws: [
                ThrowDto(points: 180, dartsThrown: 3, dartsOnDouble: 0),
                ThrowDto(points: 20, dartsThrown: 3, dartsOnDouble: 0),
              ],
            ),
          ],
        );

        // Act
        final json = const AbstractOfflinePlayerDtoConverter().toJson(dto);

        // Assert
        expect(
          json,
          {
            'id': 'dummyId',
            'name': 'dummyName',
            'legsOrSets': [
              {
                'throws': [
                  {
                    'points': 180,
                    'dartsThrown': 3,
                    'dartsOnDouble': 0,
                    'darts': null,
                  },
                  {
                    'points': 20,
                    'dartsThrown': 3,
                    'dartsOnDouble': 0,
                    'darts': null,
                  }
                ],
              },
            ],
          },
        );
      });

      test('DartBotDto', () {
        // Arrange
        const dto = DartBotDto(
          id: 'dartBot',
          name: 'DartBot',
          legsOrSets: [
            LegDto(
              throws: [
                ThrowDto(points: 180, dartsThrown: 3, dartsOnDouble: 0),
                ThrowDto(points: 20, dartsThrown: 3, dartsOnDouble: 0),
              ],
            ),
          ],
        );

        // Act
        final json = const AbstractOfflinePlayerDtoConverter().toJson(dto);

        // Assert
        expect(
          json,
          {
            'id': 'dartBot',
            'name': 'DartBot',
            'legsOrSets': [
              {
                'throws': [
                  {
                    'points': 180,
                    'dartsThrown': 3,
                    'dartsOnDouble': 0,
                    'darts': null,
                  },
                  {
                    'points': 20,
                    'dartsThrown': 3,
                    'dartsOnDouble': 0,
                    'darts': null,
                  }
                ],
              },
            ],
          },
        );
      });
    });
  });
}
