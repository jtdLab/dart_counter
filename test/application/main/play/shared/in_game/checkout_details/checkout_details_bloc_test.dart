void main() {
  // TODO impl tests
}
/**
 * import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/play/offline/in_game/in_offline_game_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/in_game/checkout_details/checkout_details_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/application/authenticated/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockInGameBloc extends MockBloc<InGameEvent, InGameState> {}

class MockPointsLeftCubit extends MockCubit<int> implements PointsLeftCubit {}

class MockInputCubit extends MockCubit<InputState> implements InputCubit {}

class MockDartUtils extends Mock implements IDartUtils {}

void main() {
  late Bloc<InGameEvent, InGameState> mockInGameBloc;
  late PointsLeftCubit mockPointsLeftCubit;
  late InputCubit mockInputCubit;
  final IDartUtils mockDartUtils = MockDartUtils();

  const points = 40;
  final darts = [
    const Dart(type: DartType.single, value: 10),
    const Dart(type: DartType.single, value: 10),
    const Dart(type: DartType.double, value: 10),
  ].toImmutableList();

  const minDartsThrown = 1;
  const maxDartsThrown = 3;
  const minDartsOnDouble = 1;
  const maxDartsOnDouble = 3;

  setUp(() {
    mockPointsLeftCubit = MockPointsLeftCubit();
    mockInGameBloc = MockInGameBloc();
    mockInputCubit = MockInputCubit();

    whenListen(
      mockPointsLeftCubit,
      Stream.fromIterable([points]),
      initialState: points,
    );

    when<int>(
      () => mockDartUtils.minDartsThrown(
        pointsLeft: any(named: 'pointsLeft'),
        points: any(named: 'points'),
      ),
    ).thenAnswer((_) => minDartsThrown);

    when<int>(
      () => mockDartUtils.maxDartsThrown(
        pointsLeft: any(named: 'pointsLeft'),
        points: any(named: 'points'),
      ),
    ).thenAnswer((_) => maxDartsThrown);

    when<int>(
      () => mockDartUtils.minDartsOnDouble(
        pointsLeft: any(named: 'pointsLeft'),
        points: any(named: 'points'),
      ),
    ).thenAnswer((_) => minDartsOnDouble);

    when<int>(
      () => mockDartUtils.maxDartsOnDouble(
        pointsLeft: any(named: 'pointsLeft'),
        points: any(named: 'points'),
      ),
    ).thenAnswer((_) => maxDartsOnDouble);
  });

  test('initial state initialized correctly when input is points', () {
    // Arrange
    whenListen(
      mockInputCubit,
      Stream.fromIterable([const InputState.points(points: points)]),
      initialState: const InputState.points(points: points),
    );

    // Act
    final underTest = CheckoutDetailsBloc(
      mockPointsLeftCubit,
      mockInGameBloc,
      mockInputCubit,
      mockDartUtils,
    );

    // Assert
    expect(
      underTest.state,
      const CheckoutDetailsState.initial(
        minDartsThrown: minDartsThrown,
        maxDartsThrown: maxDartsThrown,
        minDartsOnDouble: minDartsOnDouble,
        maxDartsOnDouble: minDartsThrown,
        selectedDartsThrown: minDartsThrown,
        selectedDartsOnDouble: minDartsOnDouble,
      ),
    );
  });

  test('initial state initialized correctly when input is darts', () {
    // Arrange
    whenListen(
      mockInputCubit,
      Stream.fromIterable([InputState.darts(darts: darts)]),
      initialState: InputState.darts(darts: darts),
    );

    // Act
    final underTest = CheckoutDetailsBloc(
      mockPointsLeftCubit,
      mockInGameBloc,
      mockInputCubit,
      mockDartUtils,
    );

    // Assert
    expect(
      underTest.state,
      const CheckoutDetailsState.initial(
        minDartsThrown: minDartsThrown,
        maxDartsThrown: maxDartsThrown,
        minDartsOnDouble: minDartsOnDouble,
        maxDartsOnDouble: minDartsThrown,
        selectedDartsThrown: minDartsThrown,
        selectedDartsOnDouble: minDartsOnDouble,
      ),
    );
  });

  test(
      'initial state initialized correctly when maxDartsOnDouble > minDartsThrown',
      () {
    // Arrange
    whenListen(
      mockInputCubit,
      Stream.fromIterable([const InputState.points(points: points)]),
      initialState: const InputState.points(points: points),
    );

    // Act
    final underTest = CheckoutDetailsBloc(
      mockPointsLeftCubit,
      mockInGameBloc,
      mockInputCubit,
      mockDartUtils,
    );

    // Assert
    expect(
      underTest.state,
      const CheckoutDetailsState.initial(
        minDartsThrown: minDartsThrown,
        maxDartsThrown: maxDartsThrown,
        minDartsOnDouble: minDartsOnDouble,
        maxDartsOnDouble: minDartsThrown,
        selectedDartsThrown: minDartsThrown,
        selectedDartsOnDouble: minDartsOnDouble,
      ),
    );
  });

  test(
      'initial state initialized correctly when maxDartsOnDouble <= minDartsThrown',
      () {
    // Arrange
    const minDartsThrown = 3;
    const maxDartsThrown = 3;
    const minDartsOnDouble = 0;
    const maxDartsOnDouble = 1;

    when<int>(
      () => mockDartUtils.minDartsThrown(
        pointsLeft: any(named: 'pointsLeft'),
        points: any(named: 'points'),
      ),
    ).thenAnswer((_) => minDartsThrown);

    when<int>(
      () => mockDartUtils.maxDartsThrown(
        pointsLeft: any(named: 'pointsLeft'),
        points: any(named: 'points'),
      ),
    ).thenAnswer((_) => maxDartsThrown);

    when<int>(
      () => mockDartUtils.minDartsOnDouble(
        pointsLeft: any(named: 'pointsLeft'),
        points: any(named: 'points'),
      ),
    ).thenAnswer((_) => minDartsOnDouble);

    when<int>(
      () => mockDartUtils.maxDartsOnDouble(
        pointsLeft: any(named: 'pointsLeft'),
        points: any(named: 'points'),
      ),
    ).thenAnswer((_) => maxDartsOnDouble);

    whenListen(
      mockInputCubit,
      Stream.fromIterable([const InputState.points(points: points)]),
      initialState: const InputState.points(points: points),
    );

    // Act
    final underTest = CheckoutDetailsBloc(
      mockPointsLeftCubit,
      mockInGameBloc,
      mockInputCubit,
      mockDartUtils,
    );

    // Assert
    expect(
      underTest.state,
      const CheckoutDetailsState.initial(
        minDartsThrown: minDartsThrown,
        maxDartsThrown: maxDartsThrown,
        minDartsOnDouble: minDartsOnDouble,
        maxDartsOnDouble: maxDartsOnDouble,
        selectedDartsThrown: minDartsThrown,
        selectedDartsOnDouble: minDartsOnDouble,
      ),
    );
  });

  group('SelectedDartsThrownUpdated', () {
    blocTest<CheckoutDetailsBloc, CheckoutDetailsState>(
      'GIVEN selectedDartsOnDouble > newSelectedDartsThrown '
      'emits [CheckoutDetailsInitial] with updated selectedDartsThrown, selectedDartsOnDouble and '
      'maxDartsOnDouble. '
      'when SelectedDartsThrownUpdated is added.',
      build: () {
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.points(points: points)]),
          initialState: const InputState.points(points: points),
        );

        return CheckoutDetailsBloc(
          mockPointsLeftCubit,
          mockInGameBloc,
          mockInputCubit,
          mockDartUtils,
        );
      },
      seed: () => const CheckoutDetailsState.initial(
        minDartsThrown: minDartsThrown,
        maxDartsThrown: maxDartsThrown,
        minDartsOnDouble: minDartsOnDouble,
        maxDartsOnDouble: maxDartsOnDouble,
        selectedDartsThrown: 3,
        selectedDartsOnDouble: 3,
      ),
      act: (bloc) => bloc.add(
        const CheckoutDetailsEvent.selectedDartsThrownUpdated(
          newSelectedDartsThrown: 1,
        ),
      ),
      expect: () => [
        const CheckoutDetailsState.initial(
          minDartsThrown: minDartsThrown,
          maxDartsThrown: maxDartsThrown,
          minDartsOnDouble: minDartsOnDouble,
          maxDartsOnDouble: 1,
          selectedDartsThrown: 1,
          selectedDartsOnDouble: 1,
        ),
      ],
    );

    blocTest<CheckoutDetailsBloc, CheckoutDetailsState>(
      'GIVEN selectedDartsOnDouble <= newSelectedDartsThrown '
      'emits [CheckoutDetailsInitial] with updated selectedDartsThrown and '
      'maxDartsOnDouble. '
      'when SelectedDartsThrownUpdated is added.',
      build: () {
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.points(points: points)]),
          initialState: const InputState.points(points: points),
        );

        return CheckoutDetailsBloc(
          mockPointsLeftCubit,
          mockInGameBloc,
          mockInputCubit,
          mockDartUtils,
        );
      },
      act: (bloc) => bloc.add(
        const CheckoutDetailsEvent.selectedDartsThrownUpdated(
          newSelectedDartsThrown: 2,
        ),
      ),
      expect: () => [
        const CheckoutDetailsState.initial(
          minDartsThrown: minDartsThrown,
          maxDartsThrown: maxDartsThrown,
          minDartsOnDouble: minDartsOnDouble,
          maxDartsOnDouble: 2,
          selectedDartsThrown: 2,
          selectedDartsOnDouble: minDartsOnDouble,
        ),
      ],
    );
  });

  group('SelectedDartsOnDoubleUpdated', () {
    blocTest<CheckoutDetailsBloc, CheckoutDetailsState>(
      'emits [CheckoutDetailsInitial] with updated selectedDartsOnDouble '
      'when SelectedDartsOnDoubleUpdated is added.',
      build: () {
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.points(points: points)]),
          initialState: const InputState.points(points: points),
        );

        return CheckoutDetailsBloc(
          mockPointsLeftCubit,
          mockInGameBloc,
          mockInputCubit,
          mockDartUtils,
        );
      },
      act: (bloc) => bloc.add(
        const CheckoutDetailsEvent.selectedDartsOnDoubleUpdated(
          newSelectedDartsOnDouble: 3,
        ),
      ),
      expect: () => [
        const CheckoutDetailsState.initial(
          minDartsThrown: minDartsThrown,
          maxDartsThrown: maxDartsThrown,
          minDartsOnDouble: minDartsOnDouble,
          maxDartsOnDouble: minDartsThrown,
          selectedDartsThrown: minDartsThrown,
          selectedDartsOnDouble: 3,
        )
      ],
    );
  });

  group('ConfirmPressed', () {
    blocTest<CheckoutDetailsBloc, CheckoutDetailsState>(
      'GIVEN input is points '
      'adds correct preformThrowPressed event to inGamBloc '
      'when SelectedDartsOnDoubleUpdated is added.',
      build: () {
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.points(points: points)]),
          initialState: const InputState.points(points: points),
        );

        return CheckoutDetailsBloc(
          mockPointsLeftCubit,
          mockInGameBloc,
          mockInputCubit,
          mockDartUtils,
        );
      },
      act: (bloc) => bloc.add(const CheckoutDetailsEvent.confirmPressed()),
      verify: (_) {
        verify(
          () => mockInGameBloc.add(
            const InGameEvent.performThrowPressed(
              t: Throw(
                points: points,
                dartsThrown: minDartsThrown,
                dartsOnDouble: minDartsOnDouble,
              ),
            ),
          ),
        ).called(1);
      },
    );

    blocTest<CheckoutDetailsBloc, CheckoutDetailsState>(
      'GIVEN input is darts '
      'adds correct preformThrowPressed event to inGamBloc '
      'when SelectedDartsOnDoubleUpdated is added.',
      build: () {
        whenListen(
          mockInputCubit,
          Stream.fromIterable([InputState.darts(darts: darts)]),
          initialState: InputState.darts(darts: darts),
        );

        return CheckoutDetailsBloc(
          mockPointsLeftCubit,
          mockInGameBloc,
          mockInputCubit,
          mockDartUtils,
        );
      },
      act: (bloc) => bloc.add(const CheckoutDetailsEvent.confirmPressed()),
      verify: (_) {
        verify(
          () => mockInGameBloc.add(
            InGameEvent.performThrowPressed(
              t: Throw(
                points: points,
                dartsThrown: minDartsThrown,
                dartsOnDouble: minDartsOnDouble,
                darts: darts,
              ),
            ),
          ),
        ).called(1);
      },
    );
  });
}

 */