// TODO
/**
 * import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/application_error.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/detailed_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/key_board/digit_button/detailed_digit_button_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/advanced_settings.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/presentation/core/core.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDetailedInputAreaBloc
    extends MockBloc<DetailedInputAreaEvent, DetailedInputAreaState>
    implements DetailedInputAreaBloc {}

class MockInputCubit extends MockCubit<InputState> implements InputCubit {}

class MockPointsLeftCubit extends MockCubit<int> implements PointsLeftCubit {}

class MockAdvancedSettingsBloc
    extends MockBloc<AdvancedSettingsEvent, AdvancedSettings>
    implements AdvancedSettingsBloc {}

class MockDartUtils extends Mock implements IDartUtils {}

void main() {
  final int digit =
      faker.randomGenerator.element(List.generate(21, (i) => i) + [25]);

  late DetailedInputAreaBloc mockInputAreaBloc;
  late InputCubit mockInputCubit;
  late PointsLeftCubit mockPointsLeftCubit;
  late AdvancedSettingsBloc mockAdvancedSettingsBloc;
  late IDartUtils mockDartUtils;

  setUp(() {
    mockInputAreaBloc = MockDetailedInputAreaBloc();
    mockInputCubit = MockInputCubit();
    mockPointsLeftCubit = MockPointsLeftCubit();
    mockAdvancedSettingsBloc = MockAdvancedSettingsBloc();
    mockDartUtils = MockDartUtils();

    // Default override can be overriden by specific test case
    when(() => mockInputCubit.state).thenReturn(
      const InputState.darts(darts: KtList.empty()),
    );
    when(() => mockPointsLeftCubit.state).thenReturn(2);
    when(
      () => mockDartUtils.validatePoints(
        pointsLeft: any(named: 'pointsLeft'),
        points: any(named: 'points'),
      ),
    ).thenReturn(true);
  });

  group('DetailedDigitButtonBloc', () {
    test(
        'initial state is DetailedDigitButtonEnabled '
        'when digit is valid points', () {
      // Arrange
      when(
        () => mockDartUtils.validatePoints(
          pointsLeft: any(named: 'pointsLeft'),
          points: any(named: 'points'),
        ),
      ).thenReturn(true);

      // Act
      final underTest = DetailedDigitButtonBloc(
        digit,
        mockInputAreaBloc,
        mockInputCubit,
        mockPointsLeftCubit,
        mockAdvancedSettingsBloc,
        mockDartUtils,
      );

      // Assert
      expect(
        underTest.state,
        DetailedDigitButtonState.enabled(digit: digit),
      );
    });

    test(
        'initial state is DetailedDigitButtonDisabled '
        'when digit is invalid points', () {
      // Arrange
      when(
        () => mockDartUtils.validatePoints(
          pointsLeft: any(named: 'pointsLeft'),
          points: any(named: 'points'),
        ),
      ).thenReturn(false);

      // Act
      final underTest = DetailedDigitButtonBloc(
        digit,
        mockInputAreaBloc,
        mockInputCubit,
        mockPointsLeftCubit,
        mockAdvancedSettingsBloc,
        mockDartUtils,
      );

      // Assert
      expect(
        underTest.state,
        DetailedDigitButtonState.disabled(digit: digit),
      );
    });

    group('Started', () {
      // TODO implement tests
      /**
      *  blocTest<DetailedEreaseButtonBloc, DetailedEreaseButtonState>(
        'emits DetailedEreaseButtonDisabled for each emitted empty darts by inputCubit '
        'when Started is added',
        setUp: () {
          whenListen(
            mockInputCubit,
            Stream.fromIterable([
              const InputState.darts(darts: KtList.empty()),
              const InputState.darts(darts: KtList.empty()),
            ]),
          );
        },
        build: () => DetailedEreaseButtonBloc(
          mockInputAreaBloc,
          mockInputCubit,
        ),
        act: (bloc) => bloc.add(const DetailedEreaseButtonEvent.started()),
        expect: () => const [
          DetailedEreaseButtonState.disabled(),
        ],
      );

      blocTest<DetailedEreaseButtonBloc, DetailedEreaseButtonState>(
        'emits DetailedEreaseButtonEnabled for each emitted not empty darts by inputCubit '
        'when Started is added',
        setUp: () {
          whenListen(
            mockInputCubit,
            Stream.fromIterable([
              InputState.darts(
                darts: [
                  const Dart(type: DartType.single, value: 20),
                ].toImmutableList(),
              ),
              InputState.darts(
                darts: [
                  const Dart(type: DartType.single, value: 10),
                ].toImmutableList(),
              ),
            ]),
          );
        },
        build: () => DetailedEreaseButtonBloc(
          mockInputAreaBloc,
          mockInputCubit,
        ),
        act: (bloc) => bloc.add(const DetailedEreaseButtonEvent.started()),
        expect: () => const [
          DetailedEreaseButtonState.enabled(),
        ],
      );

      blocTest<DetailedEreaseButtonBloc, DetailedEreaseButtonState>(
        'emits [DetailedEreaseButtonEnabled, DetailedEreaseButtonDisabled] '
        'when inputCubit emits [not empty darts, empty darts] '
        'when Started is added',
        setUp: () {
          whenListen(
            mockInputCubit,
            Stream.fromIterable([
              InputState.darts(
                darts: [
                  const Dart(type: DartType.single, value: 20),
                ].toImmutableList(),
              ),
              const InputState.darts(darts: KtList.empty()),
            ]),
          );
        },
        build: () => DetailedEreaseButtonBloc(
          mockInputAreaBloc,
          mockInputCubit,
        ),
        act: (bloc) => bloc.add(const DetailedEreaseButtonEvent.started()),
        expect: () => const [
          DetailedEreaseButtonState.enabled(),
          DetailedEreaseButtonState.disabled(),
        ],
      );
  
      */
    });

    group('Pressed', () {
      blocTest<DetailedDigitButtonBloc, DetailedDigitButtonState>(
        'throws ApplicationError '
        'when state is DetailedDigitButtonEnabled '
        'when inputCubit has points',
        setUp: () {
          when(() => mockInputCubit.state).thenReturn(
            const InputState.points(points: 100),
          );
        },
        build: () => DetailedDigitButtonBloc(
          digit,
          mockInputAreaBloc,
          mockInputCubit,
          mockPointsLeftCubit,
          mockAdvancedSettingsBloc,
          mockDartUtils,
        ),
        seed: () => DetailedDigitButtonState.enabled(digit: digit),
        act: (bloc) => bloc.add(const DetailedDigitButtonEvent.pressed()),
        errors: () => [
          isA<ApplicationError>(),
        ],
      );

      // TODO implement
      blocTest<DetailedDigitButtonBloc, DetailedDigitButtonState>(
        'throws ApplicationError1XXXXX '
        'when state is DetailedDigitButtonEnabled '
        'when inputCubit has points',
        setUp: () {
          when(() => mockInputCubit.state).thenReturn(
            const InputState.points(points: 100),
          );
        },
        build: () => DetailedDigitButtonBloc(
          digit,
          mockInputAreaBloc,
          mockInputCubit,
          mockPointsLeftCubit,
          mockAdvancedSettingsBloc,
          mockDartUtils,
        ),
        seed: () => DetailedDigitButtonState.enabled(digit: digit),
        act: (bloc) => bloc.add(const DetailedDigitButtonEvent.pressed()),
        errors: () => [
          isA<ApplicationError>(),
        ],
      );

      // TODO implement
      blocTest<DetailedDigitButtonBloc, DetailedDigitButtonState>(
        'throws ApplicationError2XXXXXX '
        'when state is DetailedDigitButtonEnabled '
        'when inputCubit has points',
        setUp: () {
          when(() => mockInputCubit.state).thenReturn(
            const InputState.points(points: 100),
          );
        },
        build: () => DetailedDigitButtonBloc(
          digit,
          mockInputAreaBloc,
          mockInputCubit,
          mockPointsLeftCubit,
          mockAdvancedSettingsBloc,
          mockDartUtils,
        ),
        seed: () => DetailedDigitButtonState.enabled(digit: digit),
        act: (bloc) => bloc.add(const DetailedDigitButtonEvent.pressed()),
        errors: () => [
          isA<ApplicationError>(),
        ],
      );

      blocTest<DetailedDigitButtonBloc, DetailedDigitButtonState>(
        'throws ApplicationError '
        'when state is DetailedDigitButtonDisabled',
        build: () => DetailedDigitButtonBloc(
          digit,
          mockInputAreaBloc,
          mockInputCubit,
          mockPointsLeftCubit,
          mockAdvancedSettingsBloc,
          mockDartUtils,
        ),
        seed: () => DetailedDigitButtonState.disabled(digit: digit),
        act: (bloc) => bloc.add(const DetailedDigitButtonEvent.pressed()),
        errors: () => [
          isA<ApplicationError>(),
        ],
      );

      blocTest<DetailedDigitButtonBloc, DetailedDigitButtonState>(
        'throws ApplicationError '
        'when state is DetailedDigitButtonFocused '
        'when inputCubit has points',
        setUp: () {
          when(() => mockInputCubit.state).thenReturn(
            const InputState.points(points: 100),
          );
        },
        build: () => DetailedDigitButtonBloc(
          digit,
          mockInputAreaBloc,
          mockInputCubit,
          mockPointsLeftCubit,
          mockAdvancedSettingsBloc,
          mockDartUtils,
        ),
        seed: () => DetailedDigitButtonState.focused(
          digit: digit,
          dartType: DartType.single,
        ),
        act: (bloc) => bloc.add(const DetailedDigitButtonEvent.pressed()),
        errors: () => [
          isA<ApplicationError>(),
        ],
      );

      blocTest<DetailedDigitButtonBloc, DetailedDigitButtonState>(
        'adds UnfocusRequested to inputAreaBloc '
        'calls update with darts where the dart the button represented got added '
        'when state is DetailedDigitButtonFocused '
        'when inputCubit has darts',
        setUp: () {
          when(() => mockInputCubit.state).thenReturn(
            const InputState.darts(darts: KtList.empty()),
          );
        },
        build: () => DetailedDigitButtonBloc(
          digit,
          mockInputAreaBloc,
          mockInputCubit,
          mockPointsLeftCubit,
          mockAdvancedSettingsBloc,
          mockDartUtils,
        ),
        seed: () => DetailedDigitButtonState.focused(
          digit: digit,
          dartType: DartType.single,
        ),
        act: (bloc) => bloc.add(const DetailedDigitButtonEvent.pressed()),
        verify: (_) {
          verify(
            () => mockInputAreaBloc.add(
              const DetailedInputAreaEvent.unfocusRequested(),
            ),
          ).called(1);

          verify(
            () => mockInputCubit.update(
              newInput: right(
                [
                  Dart(type: DartType.single, value: digit),
                ].toImmutableList(),
              ),
            ),
          ).called(1);
        },
      );
    });
  });
}

 */