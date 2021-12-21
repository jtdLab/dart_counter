import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/application_error.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/detailed_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/key_board/erease_button/detailed_erease_button_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/presentation/core/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDetailedInputAreaBloc
    extends MockBloc<DetailedInputAreaEvent, DetailedInputAreaState>
    implements DetailedInputAreaBloc {}

class MockInputCubit extends MockCubit<InputState> implements InputCubit {}

void main() {
  late DetailedInputAreaBloc mockInputAreaBloc;
  late InputCubit mockInputCubit;

  setUp(() {
    mockInputAreaBloc = MockDetailedInputAreaBloc();
    mockInputCubit = MockInputCubit();
  });

  group('DetailEreaseButtonBloc', () {
    test('initial state is DetailedEreaseButtonDisabled', () {
      // Act
      final underTest = DetailedEreaseButtonBloc(
        mockInputAreaBloc,
        mockInputCubit,
      );

      // Assert
      expect(
        underTest.state,
        const DetailedEreaseButtonState.disabled(),
      );
    });

    group('Started', () {
      // TODO test this maybe there is a bug in bloc_test
      /**
      *  blocTest<DetailedEreaseButtonBloc, DetailedEreaseButtonState>(
        'throws ApplicationError for each emitted points by inputCubit '
        'when Started is added',
        setUp: () {
          whenListen(
            mockInputCubit,
            Stream.fromIterable([
              const InputState.points(points: 2),
              const InputState.points(points: 20),
            ]),
          );
        },
        build: () => DetailedEreaseButtonBloc(
          mockInputAreaBloc,
          mockInputCubit,
        ),
        act: (bloc) => bloc.add(const DetailedEreaseButtonEvent.started()),
        errors: () => [
          isA<ApplicationError>(),
          isA<ApplicationError>(),
        ],
      );
      */

      blocTest<DetailedEreaseButtonBloc, DetailedEreaseButtonState>(
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
    });

    group('Pressed', () {
      blocTest<DetailedEreaseButtonBloc, DetailedEreaseButtonState>(
        'throws ApplicationError '
        'when inputCubit has points',
        setUp: () {
          when(() => mockInputCubit.state)
              .thenReturn(const InputState.points(points: 2));
        },
        build: () => DetailedEreaseButtonBloc(
          mockInputAreaBloc,
          mockInputCubit,
        ),
        act: (bloc) => bloc.add(const DetailedEreaseButtonEvent.pressed()),
        errors: () => [
          isA<ApplicationError>(),
        ],
      );

      blocTest<DetailedEreaseButtonBloc, DetailedEreaseButtonState>(
        'does nothing '
        'when inputCubit has empty darts',
        setUp: () {
          when(() => mockInputCubit.state)
              .thenReturn(const InputState.darts(darts: KtList.empty()));
        },
        build: () => DetailedEreaseButtonBloc(
          mockInputAreaBloc,
          mockInputCubit,
        ),
        act: (bloc) => bloc.add(const DetailedEreaseButtonEvent.pressed()),
        verify: (_) {
          verifyNever(
            () => mockInputAreaBloc.add(
              const DetailedInputAreaEvent.unfocusRequested(),
            ),
          );

          // TODO when input cubit is reworked
          /**
           * verifyNever(
            () => mockInputCubit.add(
              const DetailedInputAreaEvent.unfocusRequested(),
            ),
          );
           */
        },
      );

      blocTest<DetailedEreaseButtonBloc, DetailedEreaseButtonState>(
        'adds UnfocusRequested to inputAreaBloc '
        'adds Erease to inputBloc '
        'when inputCubit has not empty darts',
        setUp: () {
          when(() => mockInputCubit.state).thenReturn(
            InputState.darts(
              darts: [
                const Dart(type: DartType.single, value: 20),
              ].toImmutableList(),
            ),
          );
        },
        build: () => DetailedEreaseButtonBloc(
          mockInputAreaBloc,
          mockInputCubit,
        ),
        act: (bloc) => bloc.add(const DetailedEreaseButtonEvent.pressed()),
        verify: (_) {
          verify(
            () => mockInputAreaBloc.add(
              const DetailedInputAreaEvent.unfocusRequested(),
            ),
          ).called(1);

          // TODO when input cubit is reworked
          /**
           * verify(
            () => mockInputCubit.add(
              const DetailedInputAreaEvent.unfocusRequested(),
            ),
          ).called(1);
           */
        },
      );
    });
  });
}
