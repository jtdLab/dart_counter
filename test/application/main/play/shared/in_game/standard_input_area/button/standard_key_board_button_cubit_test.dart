import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/button/standard_key_board_button_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/infrastructure/play/dart_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockPointsLeftCubit extends MockCubit<int> implements PointsLeftCubit {}

class MockInputCubit extends MockCubit<InputState> implements InputCubit {}

class MockDartUtils extends Mock implements IDartUtils {}

void main() {
  setUpAll(() {
    // mocktail related setup
    registerFallbackValue(left<int, KtList<Dart>>(0));
  });

  late PointsLeftCubit mockPointsLeftCubit;
  late InputCubit mockInputCubit;
  final IDartUtils mockDartUtils = MockDartUtils();
  final IDartUtils dartUtils = DartUtils();

  setUp(() {
    mockPointsLeftCubit = MockPointsLeftCubit();
    mockInputCubit = MockInputCubit();
  });

  group('initial state initialized correctly', () {
    test(
        'GIVEN points left is no finish and type is check '
        'init correctly with disabled true', () {
      // Arrange
      whenListen(mockPointsLeftCubit, Stream.value(180), initialState: 180);
      whenListen(
        mockInputCubit,
        Stream.value(const InputState.points(points: 0)),
        initialState: const InputState.points(points: 0),
      );
      const type = StandardKeyBoardButtonType.check;

      // Act
      final underTest = StandardKeyBoardButtonCubit(
        type,
        mockPointsLeftCubit,
        mockInputCubit,
        dartUtils,
      );

      // Assert
      expect(
        underTest.state,
        const StandardKeyBoardButtonState.initial(type: type, disabled: true),
      );
    });

    test(
        'GIVEN type is erease '
        'init correctly with disabled true', () {
      // Arrange
      whenListen(mockPointsLeftCubit, Stream.value(180), initialState: 180);
      whenListen(
        mockInputCubit,
        Stream.value(const InputState.points(points: 0)),
        initialState: const InputState.points(points: 0),
      );
      const type = StandardKeyBoardButtonType.erease;

      // Act
      final underTest = StandardKeyBoardButtonCubit(
        type,
        mockPointsLeftCubit,
        mockInputCubit,
        dartUtils,
      );

      // Assert
      expect(
        underTest.state,
        const StandardKeyBoardButtonState.initial(type: type, disabled: true),
      );
    });

    test(
        'GIVEN type is not erease or check '
        'init correctly with disabled false', () {
      // Arrange
      final types = StandardKeyBoardButtonType.values.toList()
        ..removeWhere(
          (type) =>
              type == StandardKeyBoardButtonType.check ||
              type == StandardKeyBoardButtonType.erease,
        );

      whenListen(mockPointsLeftCubit, Stream.value(180), initialState: 180);
      whenListen(
        mockInputCubit,
        Stream.value(const InputState.points(points: 0)),
        initialState: const InputState.points(points: 0),
      );

      for (final type in types) {
        // Act
        final underTest = StandardKeyBoardButtonCubit(
          type,
          mockPointsLeftCubit,
          mockInputCubit,
          dartUtils,
        );

        // Assert
        expect(
          underTest.state,
          StandardKeyBoardButtonState.initial(type: type, disabled: false),
        );
      }
    });
  });

  group('onPointsLeftCubitChange', () {
    setUp(() {
      whenListen(mockPointsLeftCubit, Stream.value(501), initialState: 501);
      whenListen(
        mockInputCubit,
        const Stream<InputState>.empty(),
        initialState: const InputState.points(points: 0),
      );
    });

    blocTest<StandardKeyBoardButtonCubit, StandardKeyBoardButtonState>(
      'GIVEN value is check '
      'WHEN pointsLeft is not a finish '
      'emits [Initial] with disabled true',
      build: () {
        when(() => mockDartUtils.isFinish(points: any(named: 'points')))
            .thenReturn(false);

        return StandardKeyBoardButtonCubit(
          StandardKeyBoardButtonType.check,
          mockPointsLeftCubit,
          mockInputCubit,
          mockDartUtils,
        );
      },
      expect: () => [
        const StandardKeyBoardButtonState.initial(
          type: StandardKeyBoardButtonType.check,
          disabled: true,
        ),
      ],
    );

    blocTest<StandardKeyBoardButtonCubit, StandardKeyBoardButtonState>(
      'GIVEN value is check '
      'WHEN pointsLeft is a finish '
      'emits [Initial] with disabled false',
      build: () {
        when(() => mockDartUtils.isFinish(points: any(named: 'points')))
            .thenReturn(true);

        return StandardKeyBoardButtonCubit(
          StandardKeyBoardButtonType.check,
          mockPointsLeftCubit,
          mockInputCubit,
          mockDartUtils,
        );
      },
      expect: () => [
        const StandardKeyBoardButtonState.initial(
          type: StandardKeyBoardButtonType.check,
          disabled: false,
        ),
      ],
    );

    blocTest<StandardKeyBoardButtonCubit, StandardKeyBoardButtonState>(
      'GIVEN value is erease '
      'WHEN input is 0 '
      'emits [Initial] with disabled true',
      build: () {
        whenListen(
          mockInputCubit,
          Stream.value(const InputState.points(points: 0)),
          initialState: const InputState.points(points: 0),
        );

        return StandardKeyBoardButtonCubit(
          StandardKeyBoardButtonType.erease,
          mockPointsLeftCubit,
          mockInputCubit,
          dartUtils,
        );
      },
      expect: () => [
        const StandardKeyBoardButtonState.initial(
          type: StandardKeyBoardButtonType.erease,
          disabled: true,
        ),
      ],
    );

    blocTest<StandardKeyBoardButtonCubit, StandardKeyBoardButtonState>(
      'GIVEN value is check '
      'WHEN input is not 0 '
      'emits [Initial] with disabled false',
      build: () {
        whenListen(
          mockInputCubit,
          Stream.value(const InputState.points(points: 1)),
          initialState: const InputState.points(points: 1),
        );

        return StandardKeyBoardButtonCubit(
          StandardKeyBoardButtonType.erease,
          mockPointsLeftCubit,
          mockInputCubit,
          dartUtils,
        );
      },
      expect: () => [
        const StandardKeyBoardButtonState.initial(
          type: StandardKeyBoardButtonType.erease,
          disabled: false,
        ),
      ],
    );

    blocTest<StandardKeyBoardButtonCubit, StandardKeyBoardButtonState>(
      'GIVEN value is zero '
      'WHEN input is 0 '
      'emits [Initial] with disabled true',
      build: () {
        whenListen(
          mockInputCubit,
          Stream.value(const InputState.points(points: 0)),
          initialState: const InputState.points(points: 0),
        );

        return StandardKeyBoardButtonCubit(
          StandardKeyBoardButtonType.zero,
          mockPointsLeftCubit,
          mockInputCubit,
          dartUtils,
        );
      },
      expect: () => [
        const StandardKeyBoardButtonState.initial(
          type: StandardKeyBoardButtonType.zero,
          disabled: true,
        ),
      ],
    );

    blocTest<StandardKeyBoardButtonCubit, StandardKeyBoardButtonState>(
      'GIVEN value is zero '
      'WHEN input is not 0 '
      'emits [Initial] with disabled false',
      build: () {
        whenListen(
          mockInputCubit,
          Stream.value(const InputState.points(points: 1)),
          initialState: const InputState.points(points: 1),
        );

        return StandardKeyBoardButtonCubit(
          StandardKeyBoardButtonType.zero,
          mockPointsLeftCubit,
          mockInputCubit,
          dartUtils,
        );
      },
      expect: () => [
        const StandardKeyBoardButtonState.initial(
          type: StandardKeyBoardButtonType.zero,
          disabled: false,
        ),
      ],
    );

    for (final type in StandardKeyBoardButtonType.values.toList()
      ..removeWhere(
        (element) =>
            element == StandardKeyBoardButtonType.check ||
            element == StandardKeyBoardButtonType.erease,
      )) {
      final typeString = type.toString().split('.')[1];

      blocTest<StandardKeyBoardButtonCubit, StandardKeyBoardButtonState>(
        'GIVEN type is $typeString '
        'WHEN new points (after the button is pressed) would be invalid '
        'emits [Initial] with disabled true',
        build: () {
          when(() => mockInputCubit.state)
              .thenReturn(const InputState.points(points: 1));

          when(
            () => mockDartUtils.isFinish(
              points: any(named: 'points'),
            ),
          ).thenReturn(false);

          when(
            () => mockDartUtils.validatePoints(
              pointsLeft: any(named: 'pointsLeft'),
              points: any(named: 'points'),
            ),
          ).thenReturn(false);

          return StandardKeyBoardButtonCubit(
            type,
            mockPointsLeftCubit,
            mockInputCubit,
            mockDartUtils,
          );
        },
        expect: () => [
          StandardKeyBoardButtonState.initial(
            type: type,
            disabled: true,
          ),
        ],
        verify: (_) => verify(
          () => mockDartUtils.validatePoints(
            points: int.parse('1${type.toDigit().toString()}'),
            pointsLeft: 501,
          ),
        ).called(1),
      );

      blocTest<StandardKeyBoardButtonCubit, StandardKeyBoardButtonState>(
        'GIVEN type is $typeString '
        'WHEN new points (after the button is pressed) would be valid '
        'emits [Initial] with disabled false',
        build: () {
          when(() => mockInputCubit.state)
              .thenReturn(const InputState.points(points: 1));

          when(
            () => mockDartUtils.isFinish(
              points: any(named: 'points'),
            ),
          ).thenReturn(true);

          when(
            () => mockDartUtils.validatePoints(
              pointsLeft: any(named: 'pointsLeft'),
              points: any(named: 'points'),
            ),
          ).thenReturn(true);

          return StandardKeyBoardButtonCubit(
            type,
            mockPointsLeftCubit,
            mockInputCubit,
            mockDartUtils,
          );
        },
        expect: () => [
          StandardKeyBoardButtonState.initial(
            type: type,
            disabled: false,
          ),
        ],
        verify: (_) => verify(
          () => mockDartUtils.validatePoints(
            points: int.parse('1${type.toDigit().toString()}'),
            pointsLeft: 501,
          ),
        ).called(1),
      );
    }
  });

  group(
    'onInputCubitChange',
    () {
      setUp(() {
        whenListen(
          mockInputCubit,
          Stream.value(const InputState.points(points: 1)),
          initialState: const InputPoints(points: 1),
        );
        whenListen(
          mockPointsLeftCubit,
          const Stream<int>.empty(),
          initialState: 501,
        );
      });

      blocTest<StandardKeyBoardButtonCubit, StandardKeyBoardButtonState>(
        'GIVEN value is check '
        'WHEN pointsLeft is not a finish '
        'emits [Initial] with disabled true',
        build: () {
          when(() => mockDartUtils.isFinish(points: any(named: 'points')))
              .thenReturn(false);

          return StandardKeyBoardButtonCubit(
            StandardKeyBoardButtonType.check,
            mockPointsLeftCubit,
            mockInputCubit,
            mockDartUtils,
          );
        },
        expect: () => [
          const StandardKeyBoardButtonState.initial(
            type: StandardKeyBoardButtonType.check,
            disabled: true,
          ),
        ],
      );

      blocTest<StandardKeyBoardButtonCubit, StandardKeyBoardButtonState>(
        'GIVEN value is check '
        'WHEN pointsLeft is a finish '
        'emits [Initial] with disabled false',
        build: () {
          when(() => mockDartUtils.isFinish(points: any(named: 'points')))
              .thenReturn(true);

          return StandardKeyBoardButtonCubit(
            StandardKeyBoardButtonType.check,
            mockPointsLeftCubit,
            mockInputCubit,
            mockDartUtils,
          );
        },
        expect: () => [
          const StandardKeyBoardButtonState.initial(
            type: StandardKeyBoardButtonType.check,
            disabled: false,
          ),
        ],
      );

      blocTest<StandardKeyBoardButtonCubit, StandardKeyBoardButtonState>(
        'GIVEN value is erease '
        'WHEN input is 0 '
        'emits [Initial] with disabled true',
        build: () {
          whenListen(
            mockInputCubit,
            Stream.value(const InputState.points(points: 0)),
            initialState: const InputState.points(points: 0),
          );

          return StandardKeyBoardButtonCubit(
            StandardKeyBoardButtonType.erease,
            mockPointsLeftCubit,
            mockInputCubit,
            dartUtils,
          );
        },
        expect: () => [
          const StandardKeyBoardButtonState.initial(
            type: StandardKeyBoardButtonType.erease,
            disabled: true,
          ),
        ],
      );

      blocTest<StandardKeyBoardButtonCubit, StandardKeyBoardButtonState>(
        'GIVEN value is check '
        'WHEN input is not 0 '
        'emits [Initial] with disabled false',
        build: () {
          whenListen(
            mockInputCubit,
            Stream.value(const InputState.points(points: 1)),
            initialState: const InputState.points(points: 1),
          );

          return StandardKeyBoardButtonCubit(
            StandardKeyBoardButtonType.erease,
            mockPointsLeftCubit,
            mockInputCubit,
            dartUtils,
          );
        },
        expect: () => [
          const StandardKeyBoardButtonState.initial(
            type: StandardKeyBoardButtonType.erease,
            disabled: false,
          ),
        ],
      );

      blocTest<StandardKeyBoardButtonCubit, StandardKeyBoardButtonState>(
        'GIVEN value is zero '
        'WHEN input is 0 '
        'emits [Initial] with disabled true',
        build: () {
          whenListen(
            mockInputCubit,
            Stream.value(const InputState.points(points: 0)),
            initialState: const InputState.points(points: 0),
          );

          return StandardKeyBoardButtonCubit(
            StandardKeyBoardButtonType.zero,
            mockPointsLeftCubit,
            mockInputCubit,
            dartUtils,
          );
        },
        expect: () => [
          const StandardKeyBoardButtonState.initial(
            type: StandardKeyBoardButtonType.zero,
            disabled: true,
          ),
        ],
      );

      blocTest<StandardKeyBoardButtonCubit, StandardKeyBoardButtonState>(
        'GIVEN value is zero '
        'WHEN input is not 0 '
        'emits [Initial] with disabled false',
        build: () {
          whenListen(
            mockInputCubit,
            Stream.value(const InputState.points(points: 1)),
            initialState: const InputState.points(points: 1),
          );

          return StandardKeyBoardButtonCubit(
            StandardKeyBoardButtonType.zero,
            mockPointsLeftCubit,
            mockInputCubit,
            dartUtils,
          );
        },
        expect: () => [
          const StandardKeyBoardButtonState.initial(
            type: StandardKeyBoardButtonType.zero,
            disabled: false,
          ),
        ],
      );

      for (final type in StandardKeyBoardButtonType.values.toList()
        ..removeWhere(
          (element) =>
              element == StandardKeyBoardButtonType.check ||
              element == StandardKeyBoardButtonType.erease,
        )) {
        final typeString = type.toString().split('.')[1];

        blocTest<StandardKeyBoardButtonCubit, StandardKeyBoardButtonState>(
          'GIVEN type is $typeString '
          'WHEN new points (after the button is pressed) would be invalid '
          'emits [Initial] with disabled true',
          build: () {
            when(() => mockInputCubit.state)
                .thenReturn(const InputState.points(points: 1));

            when(
              () => mockDartUtils.isFinish(
                points: any(named: 'points'),
              ),
            ).thenReturn(false);

            when(
              () => mockDartUtils.validatePoints(
                pointsLeft: any(named: 'pointsLeft'),
                points: any(named: 'points'),
              ),
            ).thenReturn(false);

            return StandardKeyBoardButtonCubit(
              type,
              mockPointsLeftCubit,
              mockInputCubit,
              mockDartUtils,
            );
          },
          expect: () => [
            StandardKeyBoardButtonState.initial(
              type: type,
              disabled: true,
            ),
          ],
          verify: (_) => verify(
            () => mockDartUtils.validatePoints(
              points: int.parse('1${type.toDigit().toString()}'),
              pointsLeft: 501,
            ),
          ).called(1),
        );

        blocTest<StandardKeyBoardButtonCubit, StandardKeyBoardButtonState>(
          'GIVEN type is $typeString '
          'WHEN new points (after the button is pressed) would be valid '
          'emits [Initial] with disabled false',
          build: () {
            when(() => mockInputCubit.state)
                .thenReturn(const InputState.points(points: 1));

            when(
              () => mockDartUtils.isFinish(
                points: any(named: 'points'),
              ),
            ).thenReturn(true);

            when(
              () => mockDartUtils.validatePoints(
                pointsLeft: any(named: 'pointsLeft'),
                points: any(named: 'points'),
              ),
            ).thenReturn(true);

            return StandardKeyBoardButtonCubit(
              type,
              mockPointsLeftCubit,
              mockInputCubit,
              mockDartUtils,
            );
          },
          expect: () => [
            StandardKeyBoardButtonState.initial(
              type: type,
              disabled: false,
            ),
          ],
          verify: (_) => verify(
            () => mockDartUtils.validatePoints(
              points: int.parse('1${type.toDigit().toString()}'),
              pointsLeft: 501,
            ),
          ).called(1),
        );
      }
    },
  );
}
