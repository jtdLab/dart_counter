import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/offline/in_game/in_offline_game_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/checkout_details/checkout_details_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayWatcherCubit extends MockCubit<AbstractGameSnapshot> {}

class MockInGameBloc extends MockBloc<InGameEvent, InGameState> {}

class MockInputCubit extends MockCubit<InputState> implements InputCubit {}

class MockAbstractPlayerSnapshot extends Mock
    implements AbstractPlayerSnapshot {
  @override
  final int pointsLeft;

  MockAbstractPlayerSnapshot(this.pointsLeft);
}

class MockAbstractGameSnapshot extends Mock implements AbstractGameSnapshot {
  final int pointsLeftCurrentTurn;

  MockAbstractGameSnapshot(this.pointsLeftCurrentTurn);

  @override
  AbstractPlayerSnapshot currentTurn() =>
      MockAbstractPlayerSnapshot(pointsLeftCurrentTurn);
}


void main() {
  late Cubit<AbstractGameSnapshot> mockPlayWatcherCubit;
  late Bloc<InGameEvent, InGameState> mockInGameBloc;
  late InputCubit mockInputCubit;

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
    mockPlayWatcherCubit = MockPlayWatcherCubit();
    mockInGameBloc = MockInGameBloc();
    mockInputCubit = MockInputCubit();

    final gameSnapshot = MockAbstractGameSnapshot(points);
    whenListen(
      mockPlayWatcherCubit,
      Stream.fromIterable([gameSnapshot]),
      initialState: gameSnapshot,
    );
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
      mockPlayWatcherCubit,
      mockInGameBloc,
      mockInputCubit,
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

  test('initial state initialized correctly when input is darts', () {
    // Arrange
    whenListen(
      mockInputCubit,
      Stream.fromIterable([InputState.darts(darts: darts)]),
      initialState: InputState.darts(darts: darts),
    );

    // Act
    final underTest = CheckoutDetailsBloc(
      mockPlayWatcherCubit,
      mockInGameBloc,
      mockInputCubit,
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

  test(
      'initial state initialized correctly when maxDartsOnDouble > minDartsThrown',
      () {
    // Arrange
    const points = 40;
    const minDartsThrown = 1;
    const maxDartsThrown = 3;
    const minDartsOnDouble = 1;
    const maxDartsOnDouble = 3;
    whenListen(
      mockInputCubit,
      Stream.fromIterable([const InputState.points(points: points)]),
      initialState: const InputState.points(points: points),
    );

    // Act
    final underTest = CheckoutDetailsBloc(
      mockPlayWatcherCubit,
      mockInGameBloc,
      mockInputCubit,
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

  test(
      'initial state initialized correctly when maxDartsOnDouble <= minDartsThrown',
      () {
    // Arrange
    const points = 40;
    const minDartsThrown = 1;
    const maxDartsThrown = 3;
    const minDartsOnDouble = 1;
    const maxDartsOnDouble = 3;
    whenListen(
      mockInputCubit,
      Stream.fromIterable([const InputState.points(points: points)]),
      initialState: const InputState.points(points: points),
    );

    whenListen(
      mockInputCubit,
      Stream.fromIterable([InputState.darts(darts: darts)]),
      initialState: InputState.darts(darts: darts),
    );

    // Act
    final underTest = CheckoutDetailsBloc(
      mockPlayWatcherCubit,
      mockInGameBloc,
      mockInputCubit,
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
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
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
          maxDartsOnDouble: maxDartsOnDouble,
          selectedDartsThrown: 1,
          selectedDartsOnDouble: 1,
        ),
      ],
    );

    blocTest<CheckoutDetailsBloc, CheckoutDetailsState>(
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
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
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
          maxDartsOnDouble: maxDartsOnDouble,
          selectedDartsThrown: 2,
          selectedDartsOnDouble: 1,
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
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
        );
      },
      act: (bloc) => bloc.add(
        const CheckoutDetailsEvent.selectedDartsOnDoubleUpdated(
          newSelectedDartsOnDouble: 1,
        ),
      ),
      expect: () => [
        const CheckoutDetailsState.initial(
          minDartsThrown: minDartsThrown,
          maxDartsThrown: maxDartsThrown,
          minDartsOnDouble: minDartsOnDouble,
          maxDartsOnDouble: maxDartsOnDouble,
          selectedDartsThrown: minDartsThrown,
          selectedDartsOnDouble: 1,
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
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
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
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
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
