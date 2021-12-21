/**
 * import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/button/detailed_key_board_button_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/detailed_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDetailedInputAreaBloc
    extends MockBloc<DetailedInputAreaEvent, DetailedInputAreaState>
    implements DetailedInputAreaBloc {}

class MockPointsLeftCubit extends MockCubit<int> implements PointsLeftCubit {}

class MockDartUtils extends Mock implements IDartUtils {}

void main() {
  late DetailedInputAreaBloc mockInputAreaBloc;
  late PointsLeftCubit mockPointsLeftCubit;
  final IDartUtils mockDartUtils = MockDartUtils();

  setUp(() {
    mockInputAreaBloc = MockDetailedInputAreaBloc();
    mockPointsLeftCubit = MockPointsLeftCubit();
  });

  test('initial state initialized correctly', () {
    // Arrange
    const type = DetailedKeyBoardButtonType.ten;

    // Act
    final underTest = DetailedKeyBoardButtonCubit(
      type,
      mockInputAreaBloc,
      mockPointsLeftCubit,
      mockDartUtils,
    );

    // Assert
    expect(
      underTest.state,
      const DetailedKeyBoardButtonState.initial(type: type, disabled: false),
    );
  });

  group('pressed', () {
    blocTest<DetailedKeyBoardButtonCubit, DetailedKeyBoardButtonState>(
      'GIVEN type is erease '
      'WHEN pressed '
      'add EreaseDartPressed to InputArea bloc ',
      build: () {
        return DetailedKeyBoardButtonCubit(
          DetailedKeyBoardButtonType.erease,
          mockInputAreaBloc,
          mockPointsLeftCubit,
          mockDartUtils,
        );
      },
      act: (cubit) => cubit.pressed(),
      verify: (_) => verify(
        () => mockInputAreaBloc
            .add(const DetailedInputAreaEvent.ereaseDartPressed()),
      ).called(1),
    );

    for (final type in DetailedKeyBoardButtonType.values
        .where((element) => element != DetailedKeyBoardButtonType.erease)
        .toList()) {
      blocTest<DetailedKeyBoardButtonCubit, DetailedKeyBoardButtonState>(
        'GIVEN type is $type and state is DetailedKeyBoardButtonInitial '
        'WHEN pressed '
        'add DartFocused to InputArea bloc with correct focusedValue ',
        build: () {
          return DetailedKeyBoardButtonCubit(
            type,
            mockInputAreaBloc,
            mockPointsLeftCubit,
            mockDartUtils,
          );
        },
        act: (cubit) => cubit.pressed(),
        verify: (_) => verify(
          () => mockInputAreaBloc.add(
            DetailedInputAreaEvent.dartFocused(focusedValue: type.toDigit()),
          ),
        ).called(1),
      );

      blocTest<DetailedKeyBoardButtonCubit, DetailedKeyBoardButtonState>(
        'GIVEN type is $type and state is DetailedKeyBoardButtonFocused '
        'WHEN pressed '
        'add DartFocused to InputArea bloc with correct type ',
        build: () {
          return DetailedKeyBoardButtonCubit(
            type,
            mockInputAreaBloc,
            mockPointsLeftCubit,
            mockDartUtils,
          );
        },
        seed: () => DetailedKeyBoardButtonState.focused(
          type: type,
          dartType: DartType.single,
        ),
        act: (cubit) => cubit.pressed(),
        verify: (_) => verify(
          () => mockInputAreaBloc.add(
            const DetailedInputAreaEvent.dartDetailPressed(
              type: DartType.single,
            ),
          ),
        ).called(1),
      );
    }
  });

  group('onInputAreaChange', () {
    blocTest<DetailedKeyBoardButtonCubit, DetailedKeyBoardButtonState>(
      'WHEN incoming state is DetailedKeyBoardInitial '
      'emit DetailedKeyBoardButtonInitial with disabled false ',
      build: () {
        whenListen(
          mockInputAreaBloc,
          Stream.value(const DetailedInputAreaState.initial()),
        );

        return DetailedKeyBoardButtonCubit(
          DetailedKeyBoardButtonType.five,
          mockInputAreaBloc,
          mockPointsLeftCubit,
          mockDartUtils,
        );
      },
      expect: () => const [
        DetailedKeyBoardButtonState.initial(
          type: DetailedKeyBoardButtonType.five,
          disabled: false,
        )
      ],
    );

    blocTest<DetailedKeyBoardButtonCubit, DetailedKeyBoardButtonState>(
      'GIVEN type is erease '
      'WHEN incoming state is DetailedKeyBoardFocused '
      'emit DetailedKeyBoardButtonInitial with disabled false ',
      build: () {
        whenListen(
          mockInputAreaBloc,
          Stream.value(
            const DetailedInputAreaState.focused(
              focusedValue: 4,
              maxAllowedType: DartType.single,
            ),
          ),
        );

        return DetailedKeyBoardButtonCubit(
          DetailedKeyBoardButtonType.erease,
          mockInputAreaBloc,
          mockPointsLeftCubit,
          mockDartUtils,
        );
      },
      expect: () => const [
        DetailedKeyBoardButtonState.initial(
          type: DetailedKeyBoardButtonType.erease,
          disabled: false,
        )
      ],
    );

    group('focused value is left side', () {
      // buttons where no button is on the left side of this
      final leftSide = [
        DetailedKeyBoardButtonType.zero,
        DetailedKeyBoardButtonType.four,
        DetailedKeyBoardButtonType.ten,
        DetailedKeyBoardButtonType.sixteen,
      ];

      // buttons one right to the left side buttons
      final oneRight = [
        DetailedKeyBoardButtonType.one,
        DetailedKeyBoardButtonType.five,
        DetailedKeyBoardButtonType.eleven,
        DetailedKeyBoardButtonType.seventeen,
      ];

      // buttons two right to the left side buttons
      final twoRight = [
        DetailedKeyBoardButtonType.two,
        DetailedKeyBoardButtonType.six,
        DetailedKeyBoardButtonType.twelve,
        DetailedKeyBoardButtonType.eighteen,
      ];

      for (int i = 0; i < leftSide.length; i++) {
        blocTest<DetailedKeyBoardButtonCubit, DetailedKeyBoardButtonState>(
          'GIVEN type is ${leftSide[i]} '
          'WHEN incoming state is DetailedKeyBoardFocused with focusedValue ${leftSide[i].toDigit()} '
          'emit DetailedKeyBoardButtonFocused with dartType single ',
          build: () {
            whenListen(
              mockInputAreaBloc,
              Stream.value(
                DetailedInputAreaState.focused(
                  focusedValue: leftSide[i].toDigit(),
                  maxAllowedType: DartType.triple,
                ),
              ),
            );

            return DetailedKeyBoardButtonCubit(
              leftSide[i],
              mockInputAreaBloc,
              mockPointsLeftCubit,
              mockDartUtils,
            );
          },
          expect: () => [
            DetailedKeyBoardButtonState.focused(
              type: leftSide[i],
              dartType: DartType.single,
            ),
          ],
        );

        blocTest<DetailedKeyBoardButtonCubit, DetailedKeyBoardButtonState>(
          'GIVEN type is ${oneRight[i]} '
          'WHEN incoming state is DetailedKeyBoardFocused with focusedValue ${leftSide[i].toDigit()} '
          'emit DetailedKeyBoardButtonFocused with type ${leftSide[i]} dartType double ',
          build: () {
            whenListen(
              mockInputAreaBloc,
              Stream.value(
                DetailedInputAreaState.focused(
                  focusedValue: leftSide[i].toDigit(),
                  maxAllowedType: DartType.triple,
                ),
              ),
            );

            return DetailedKeyBoardButtonCubit(
              oneRight[i],
              mockInputAreaBloc,
              mockPointsLeftCubit,
              mockDartUtils,
            );
          },
          expect: () => [
            DetailedKeyBoardButtonState.focused(
              type: leftSide[i],
              dartType: DartType.double,
            ),
          ],
        );

        blocTest<DetailedKeyBoardButtonCubit, DetailedKeyBoardButtonState>(
          'GIVEN type is ${twoRight[i]} '
          'WHEN incoming state is DetailedKeyBoardFocused with focusedValue ${leftSide[i].toDigit()} '
          'emit DetailedKeyBoardButtonFocused with type ${leftSide[i]} dartType triple ',
          build: () {
            whenListen(
              mockInputAreaBloc,
              Stream.value(
                DetailedInputAreaState.focused(
                  focusedValue: leftSide[i].toDigit(),
                  maxAllowedType: DartType.triple,
                ),
              ),
            );

            return DetailedKeyBoardButtonCubit(
              twoRight[i],
              mockInputAreaBloc,
              mockPointsLeftCubit,
              mockDartUtils,
            );
          },
          expect: () => [
            DetailedKeyBoardButtonState.focused(
              type: leftSide[i],
              dartType: DartType.triple,
            ),
          ],
        );
      }
    });

    group('focused value right side', () {
      // buttons where no button is on the right side of this
      final rightSide = [
        DetailedKeyBoardButtonType.three,
        DetailedKeyBoardButtonType.nine,
        DetailedKeyBoardButtonType.fifteen,
      ];

      // buttons one left to the right side buttons
      final oneLeft = [
        DetailedKeyBoardButtonType.two,
        DetailedKeyBoardButtonType.eight,
        DetailedKeyBoardButtonType.fourteen,
      ];

      // buttons two left to the right side buttons
      final twoLeft = [
        DetailedKeyBoardButtonType.one,
        DetailedKeyBoardButtonType.seven,
        DetailedKeyBoardButtonType.thirteen,
      ];

      for (int i = 0; i < rightSide.length; i++) {
        blocTest<DetailedKeyBoardButtonCubit, DetailedKeyBoardButtonState>(
          'GIVEN type is ${rightSide[i]} '
          'WHEN incoming state is DetailedKeyBoardFocused with focusedValue ${rightSide[i].toDigit()} '
          'emit DetailedKeyBoardButtonFocused with type ${rightSide[i]} dartType triple ',
          build: () {
            whenListen(
              mockInputAreaBloc,
              Stream.value(
                DetailedInputAreaState.focused(
                  focusedValue: rightSide[i].toDigit(),
                  maxAllowedType: DartType.triple,
                ),
              ),
            );

            return DetailedKeyBoardButtonCubit(
              rightSide[i],
              mockInputAreaBloc,
              mockPointsLeftCubit,
              mockDartUtils,
            );
          },
          expect: () => [
            DetailedKeyBoardButtonState.focused(
              type: rightSide[i],
              dartType: DartType.triple,
            ),
          ],
        );

        blocTest<DetailedKeyBoardButtonCubit, DetailedKeyBoardButtonState>(
          'GIVEN type is ${oneLeft[i]} '
          'WHEN incoming state is DetailedKeyBoardFocused with focusedValue ${rightSide[i].toDigit()} '
          'emit DetailedKeyBoardButtonFocused with type ${rightSide[i]} dartType double ',
          build: () {
            whenListen(
              mockInputAreaBloc,
              Stream.value(
                DetailedInputAreaState.focused(
                  focusedValue: rightSide[i].toDigit(),
                  maxAllowedType: DartType.triple,
                ),
              ),
            );

            return DetailedKeyBoardButtonCubit(
              oneLeft[i],
              mockInputAreaBloc,
              mockPointsLeftCubit,
              mockDartUtils,
            );
          },
          expect: () => [
            DetailedKeyBoardButtonState.focused(
              type: rightSide[i],
              dartType: DartType.double,
            ),
          ],
        );

        blocTest<DetailedKeyBoardButtonCubit, DetailedKeyBoardButtonState>(
          'GIVEN type is ${twoLeft[i]} '
          'WHEN incoming state is DetailedKeyBoardFocused with focusedValue ${rightSide[i].toDigit()} '
          'emit DetailedKeyBoardButtonFocused with type ${rightSide[i]} dartType single ',
          build: () {
            whenListen(
              mockInputAreaBloc,
              Stream.value(
                DetailedInputAreaState.focused(
                  focusedValue: rightSide[i].toDigit(),
                  maxAllowedType: DartType.triple,
                ),
              ),
            );

            return DetailedKeyBoardButtonCubit(
              twoLeft[i],
              mockInputAreaBloc,
              mockPointsLeftCubit,
              mockDartUtils,
            );
          },
          expect: () => [
            DetailedKeyBoardButtonState.focused(
              type: rightSide[i],
              dartType: DartType.single,
            ),
          ],
        );
      }
    });

    group('focused value 25', () {
      blocTest<DetailedKeyBoardButtonCubit, DetailedKeyBoardButtonState>(
        'GIVEN type is DetailedKeyBoardButtonType.twentyFive '
        'WHEN incoming state is DetailedKeyBoardFocused with focusedValue 25 '
        'emit DetailedKeyBoardButtonFocused with type DetailedKeyBoardButtonType.twentyFive dartType double ',
        build: () {
          whenListen(
            mockInputAreaBloc,
            Stream.value(
              const DetailedInputAreaState.focused(
                focusedValue: 25,
                maxAllowedType: DartType.triple,
              ),
            ),
          );

          return DetailedKeyBoardButtonCubit(
            DetailedKeyBoardButtonType.twentyFive,
            mockInputAreaBloc,
            mockPointsLeftCubit,
            mockDartUtils,
          );
        },
        expect: () => const [
          DetailedKeyBoardButtonState.focused(
            type: DetailedKeyBoardButtonType.twentyFive,
            dartType: DartType.double,
          ),
        ],
      );

      blocTest<DetailedKeyBoardButtonCubit, DetailedKeyBoardButtonState>(
        'GIVEN type is DetailedKeyBoardButtonType.twenty '
        'WHEN incoming state is DetailedKeyBoardFocused with focusedValue 25 '
        'emit DetailedKeyBoardButtonFocused with type DetailedKeyBoardButtonType.twentyFive dartType single ',
        build: () {
          whenListen(
            mockInputAreaBloc,
            Stream.value(
              const DetailedInputAreaState.focused(
                focusedValue: 25,
                maxAllowedType: DartType.triple,
              ),
            ),
          );

          return DetailedKeyBoardButtonCubit(
            DetailedKeyBoardButtonType.twenty,
            mockInputAreaBloc,
            mockPointsLeftCubit,
            mockDartUtils,
          );
        },
        expect: () => const [
          DetailedKeyBoardButtonState.focused(
            type: DetailedKeyBoardButtonType.twentyFive,
            dartType: DartType.single,
          ),
        ],
      );
    });

    group('focused value middle', () {
      // buttons which is in the middle of the keyboard
      // (e.g at least 1 other button is on the left and on the right side of this button)
      final middle = [
        DetailedKeyBoardButtonType.one,
        DetailedKeyBoardButtonType.two,
        DetailedKeyBoardButtonType.five,
        DetailedKeyBoardButtonType.six,
        DetailedKeyBoardButtonType.seven,
        DetailedKeyBoardButtonType.eight,
        DetailedKeyBoardButtonType.eleven,
        DetailedKeyBoardButtonType.twelve,
        DetailedKeyBoardButtonType.thirteen,
        DetailedKeyBoardButtonType.fourteen,
        DetailedKeyBoardButtonType.seventeen,
        DetailedKeyBoardButtonType.eighteen,
        DetailedKeyBoardButtonType.nineteen,
        DetailedKeyBoardButtonType.twenty,
      ];

      // buttons left of a middle buttons
      final left = [
        DetailedKeyBoardButtonType.zero,
        DetailedKeyBoardButtonType.one,
        DetailedKeyBoardButtonType.four,
        DetailedKeyBoardButtonType.five,
        DetailedKeyBoardButtonType.six,
        DetailedKeyBoardButtonType.seven,
        DetailedKeyBoardButtonType.ten,
        DetailedKeyBoardButtonType.eleven,
        DetailedKeyBoardButtonType.twelve,
        DetailedKeyBoardButtonType.thirteen,
        DetailedKeyBoardButtonType.sixteen,
        DetailedKeyBoardButtonType.seventeen,
        DetailedKeyBoardButtonType.eighteen,
        DetailedKeyBoardButtonType.nineteen,
      ];

      // buttons right of the middle buttons
      final right = [
        DetailedKeyBoardButtonType.two,
        DetailedKeyBoardButtonType.three,
        DetailedKeyBoardButtonType.six,
        DetailedKeyBoardButtonType.seven,
        DetailedKeyBoardButtonType.eight,
        DetailedKeyBoardButtonType.nine,
        DetailedKeyBoardButtonType.twelve,
        DetailedKeyBoardButtonType.thirteen,
        DetailedKeyBoardButtonType.fourteen,
        DetailedKeyBoardButtonType.fifteen,
        DetailedKeyBoardButtonType.eighteen,
        DetailedKeyBoardButtonType.nineteen,
        DetailedKeyBoardButtonType.twenty,
        DetailedKeyBoardButtonType.twentyFive,
      ];

      for (int i = 0; i < middle.length; i++) {
        blocTest<DetailedKeyBoardButtonCubit, DetailedKeyBoardButtonState>(
          'GIVEN type is ${left[i]} '
          'WHEN incoming state is DetailedKeyBoardFocused with focusedValue ${middle[i].toDigit()} '
          'emit DetailedKeyBoardButtonFocused with dartType single ',
          build: () {
            whenListen(
              mockInputAreaBloc,
              Stream.value(
                DetailedInputAreaState.focused(
                  focusedValue: middle[i].toDigit(),
                  maxAllowedType: DartType.triple,
                ),
              ),
            );

            return DetailedKeyBoardButtonCubit(
              left[i],
              mockInputAreaBloc,
              mockPointsLeftCubit,
              mockDartUtils,
            );
          },
          expect: () => [
            DetailedKeyBoardButtonState.focused(
              type: middle[i],
              dartType: DartType.single,
            ),
          ],
        );

        blocTest<DetailedKeyBoardButtonCubit, DetailedKeyBoardButtonState>(
          'GIVEN type is ${middle[i]} '
          'WHEN incoming state is DetailedKeyBoardFocused with focusedValue ${middle[i].toDigit()} '
          'emit DetailedKeyBoardButtonFocused with type ${middle[i]} dartType double ',
          build: () {
            whenListen(
              mockInputAreaBloc,
              Stream.value(
                DetailedInputAreaState.focused(
                  focusedValue: middle[i].toDigit(),
                  maxAllowedType: DartType.triple,
                ),
              ),
            );

            return DetailedKeyBoardButtonCubit(
              middle[i],
              mockInputAreaBloc,
              mockPointsLeftCubit,
              mockDartUtils,
            );
          },
          expect: () => [
            DetailedKeyBoardButtonState.focused(
              type: middle[i],
              dartType: DartType.double,
            ),
          ],
        );

        blocTest<DetailedKeyBoardButtonCubit, DetailedKeyBoardButtonState>(
          'GIVEN type is ${right[i]} '
          'WHEN incoming state is DetailedKeyBoardFocused with focusedValue ${middle[i].toDigit()} '
          'emit DetailedKeyBoardButtonFocused with type ${middle[i]} dartType triple ',
          build: () {
            whenListen(
              mockInputAreaBloc,
              Stream.value(
                DetailedInputAreaState.focused(
                  focusedValue: middle[i].toDigit(),
                  maxAllowedType: DartType.triple,
                ),
              ),
            );

            return DetailedKeyBoardButtonCubit(
              right[i],
              mockInputAreaBloc,
              mockPointsLeftCubit,
              mockDartUtils,
            );
          },
          expect: () => [
            DetailedKeyBoardButtonState.focused(
              type: middle[i],
              dartType: DartType.triple,
            ),
          ],
        );
      }
    });

    blocTest<DetailedKeyBoardButtonCubit, DetailedKeyBoardButtonState>(
      'GIVEN type is not erease '
      'WHEN incoming state is DetailedKeyBoardFocused with maxType single and type would have not dartType single in focused state with the focus value '
      'emit DetailedKeyBoardButtonInitial with disabled true ',
      build: () {
        whenListen(
          mockInputAreaBloc,
          Stream.value(
            const DetailedInputAreaState.focused(
              focusedValue: 14,
              maxAllowedType: DartType.single,
            ),
          ),
        );

        return DetailedKeyBoardButtonCubit(
          DetailedKeyBoardButtonType.fourteen,
          mockInputAreaBloc,
          mockPointsLeftCubit,
          mockDartUtils,
        );
      },
      expect: () => const [
        DetailedKeyBoardButtonState.initial(
          type: DetailedKeyBoardButtonType.fourteen,
          disabled: true,
        ),
      ],
    );

    blocTest<DetailedKeyBoardButtonCubit, DetailedKeyBoardButtonState>(
      'GIVEN type is not erease '
      'WHEN incoming state is DetailedKeyBoardFocused with maxType double and type would have dartType triple in focused state with the focus value '
      'emit DetailedKeyBoardButtonInitial with disabled true ',
      build: () {
        whenListen(
          mockInputAreaBloc,
          Stream.value(
            const DetailedInputAreaState.focused(
              focusedValue: 14,
              maxAllowedType: DartType.double,
            ),
          ),
        );

        return DetailedKeyBoardButtonCubit(
          DetailedKeyBoardButtonType.fifteen,
          mockInputAreaBloc,
          mockPointsLeftCubit,
          mockDartUtils,
        );
      },
      expect: () => const [
        DetailedKeyBoardButtonState.initial(
          type: DetailedKeyBoardButtonType.fifteen,
          disabled: true,
        ),
      ],
    );
  });
}

 */