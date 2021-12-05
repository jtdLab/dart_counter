import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/offline/in_game/in_offline_game_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/show_checkout_details/show_checkout_details_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/standard_input_area_bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayWatcherCubit extends MockCubit<AbstractGameSnapshot> {}

class MockInGameBloc extends MockBloc<InGameEvent, InGameState> {}

class MockInputCubit extends MockCubit<InputState> implements InputCubit {}

class MockShowCheckoutDetailsCubit extends MockCubit<bool>
    implements ShowCheckoutDetailsCubit {}

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
  setUpAll(() {
    // mocktail related setup
    registerFallbackValue(left<int, KtList<Dart>>(0));
  });

  late Cubit<AbstractGameSnapshot> mockPlayWatcherCubit;
  late Bloc<InGameEvent, InGameState> mockInGameBloc;
  late InputCubit mockInputCubit;
  late ShowCheckoutDetailsCubit mockShowCheckoutDetailsCubit;

  setUp(() {
    mockPlayWatcherCubit = MockPlayWatcherCubit();
    mockInGameBloc = MockInGameBloc();
    mockInputCubit = MockInputCubit();
    mockShowCheckoutDetailsCubit = MockShowCheckoutDetailsCubit();
  });

  test('initial state initialized correctly', () {
    // Arrange & Act
    final underTest = StandardInputAreaBloc(
      mockPlayWatcherCubit,
      mockInGameBloc,
      mockInputCubit,
      mockShowCheckoutDetailsCubit,
    );

    // Assert
    expect(underTest.state, const StandardInputAreaState.initial());
  });

  group('UndoThrowPressed', () {
    blocTest<StandardInputAreaBloc, StandardInputAreaState>(
      'adds undo throw pressed to in game bloc.',
      build: () {
        return StandardInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      act: (bloc) => bloc.add(const StandardInputAreaEvent.undoThrowPressed()),
      verify: (_) {
        verify(
          () => mockInGameBloc.add(const InGameEvent.undoThrowPressed()),
        ).called(1);
      },
    );
  });

  group('PerformThrowPressed', () {
    blocTest<StandardInputAreaBloc, StandardInputAreaState>(
      'GIVEN points with need to show checkout details '
      'show checkout details cubit gets called ',
      build: () {
        final gameSnapshot = MockAbstractGameSnapshot(40);
        whenListen(
          mockPlayWatcherCubit,
          Stream.fromIterable([gameSnapshot]),
          initialState: gameSnapshot,
        );

        const points = 40;
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.points(points: points)]),
          initialState: const InputState.points(points: points),
        );

        return StandardInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      act: (bloc) => bloc.add(const StandardInputAreaEvent.checkPressed()),
      verify: (_) {
        verify(
          () => mockShowCheckoutDetailsCubit.showCheckoutDetails(),
        ).called(1);
      },
    );

    blocTest<StandardInputAreaBloc, StandardInputAreaState>(
      'GIVEN points without need to show checkout details '
      'add performThrowPressed event to in game bloc with correct throw '
      'input cubit reset to 0 ',
      build: () {
        final gameSnapshot = MockAbstractGameSnapshot(170);
        whenListen(
          mockPlayWatcherCubit,
          Stream.fromIterable([gameSnapshot]),
          initialState: gameSnapshot,
        );

        const points = 170;
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.points(points: points)]),
          initialState: const InputState.points(points: points),
        );

        return StandardInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      act: (bloc) => bloc.add(const StandardInputAreaEvent.checkPressed()),
      verify: (_) {
        verifyNever(
          () => mockShowCheckoutDetailsCubit.showCheckoutDetails(),
        );
        verify(
          () => mockInGameBloc.add(
            const InGameEvent.performThrowPressed(
              t: Throw(points: 170, dartsThrown: 3, dartsOnDouble: 1),
            ),
          ),
        ).called(1);
        verify(
          () => mockInputCubit.update(newInput: left(0)),
        ).called(1);
      },
    );
  });

  group('CheckPressed', () {
    blocTest<StandardInputAreaBloc, StandardInputAreaState>(
      'GIVEN pointsLeft are not finishable '
      'do nothing',
      build: () {
        final gameSnapshot = MockAbstractGameSnapshot(180);
        whenListen(
          mockPlayWatcherCubit,
          Stream.fromIterable([gameSnapshot]),
          initialState: gameSnapshot,
        );

        return StandardInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      act: (bloc) => bloc.add(const StandardInputAreaEvent.checkPressed()),
      verify: (_) {
        verifyNever(
          () => mockInputCubit.update(newInput: left(180)),
        );
        verifyNever(
          () => mockShowCheckoutDetailsCubit.showCheckoutDetails(),
        );
        verifyNever(
          () => mockInGameBloc.add(
            const InGameEvent.performThrowPressed(
              t: Throw(points: 180, dartsThrown: 3, dartsOnDouble: 1),
            ),
          ),
        );
        verifyNever(
          () => mockInputCubit.update(newInput: left(0)),
        );
      },
    );

    blocTest<StandardInputAreaBloc, StandardInputAreaState>(
      'GIVEN pointsLeft are finishable with need to show checkout details '
      'input cubit gets updated with pointsLeft of the current turn '
      'show checkout details cubit gets called ',
      build: () {
        final gameSnapshot = MockAbstractGameSnapshot(40);
        whenListen(
          mockPlayWatcherCubit,
          Stream.fromIterable([gameSnapshot]),
          initialState: gameSnapshot,
        );

        const points = 40;
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.points(points: points)]),
          initialState: const InputState.points(points: points),
        );

        return StandardInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      act: (bloc) => bloc.add(const StandardInputAreaEvent.checkPressed()),
      verify: (_) {
        verify(
          () => mockInputCubit.update(newInput: left(40)),
        ).called(1);
        verify(
          () => mockShowCheckoutDetailsCubit.showCheckoutDetails(),
        ).called(1);
      },
    );

    blocTest<StandardInputAreaBloc, StandardInputAreaState>(
      'GIVEN pointsLeft are finishable without need to show checkout details '
      'input cubit gets updated with pointsLeft of the current turn '
      'add performThrowPressed event to in game bloc with correct throw '
      'input cubit reset to 0 ',
      build: () {
        final gameSnapshot = MockAbstractGameSnapshot(170);
        whenListen(
          mockPlayWatcherCubit,
          Stream.fromIterable([gameSnapshot]),
          initialState: gameSnapshot,
        );

        const points = 170;
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.points(points: points)]),
          initialState: const InputState.points(points: points),
        );

        return StandardInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      act: (bloc) => bloc.add(const StandardInputAreaEvent.checkPressed()),
      verify: (_) {
        verify(
          () => mockInputCubit.update(newInput: left(170)),
        ).called(1);
        verifyNever(
          () => mockShowCheckoutDetailsCubit.showCheckoutDetails(),
        );
        verify(
          () => mockInGameBloc.add(
            const InGameEvent.performThrowPressed(
              t: Throw(points: 170, dartsThrown: 3, dartsOnDouble: 1),
            ),
          ),
        ).called(1);
        verify(
          () => mockInputCubit.update(newInput: left(0)),
        ).called(1);
      },
    );
  });

  group('ErasePressed', () {
    blocTest<StandardInputAreaBloc, StandardInputAreaState>(
      'GIVEN input is darts '
      'throws Error when ErasePressed is added.',
      build: () {
        const darts = KtList<Dart>.empty();
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.darts(darts: darts)]),
          initialState: const InputState.darts(darts: darts),
        );
        return StandardInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      act: (bloc) => bloc.add(const StandardInputAreaEvent.erasePressed()),
      errors: () => [isA<Error>()],
    );

    blocTest<StandardInputAreaBloc, StandardInputAreaState>(
      'GIVEN input < 10 '
      'updates input cubit with points 0 '
      'when ErasePressed is added.',
      build: () {
        const points = 9;
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.points(points: points)]),
          initialState: const InputState.points(points: points),
        );

        return StandardInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      act: (bloc) => bloc.add(const StandardInputAreaEvent.erasePressed()),
      verify: (_) => (verify(
        () => mockInputCubit.update(newInput: left(0)),
      )).called(1),
    );

    blocTest<StandardInputAreaBloc, StandardInputAreaState>(
      'GIVEN input > =10 '
      'updates input cubit with input where last digit got cut '
      'when ErasePressed is added.',
      build: () {
        const points = 84;
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.points(points: points)]),
          initialState: const InputState.points(points: points),
        );

        return StandardInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      act: (bloc) => bloc.add(const StandardInputAreaEvent.erasePressed()),
      verify: (_) => (verify(
        () => mockInputCubit.update(newInput: left(8)),
      )).called(1),
    );
  });

  group('DigitPressed', () {
    blocTest<StandardInputAreaBloc, StandardInputAreaState>(
      'GIVEN input is darts '
      'throws Error when v is added.',
      build: () {
        const darts = KtList<Dart>.empty();
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.darts(darts: darts)]),
          initialState: const InputState.darts(darts: darts),
        );
        return StandardInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      act: (bloc) =>
          bloc.add(const StandardInputAreaEvent.digitPressed(digit: 1)),
      errors: () => [isA<Error>()],
    );

    blocTest<StandardInputAreaBloc, StandardInputAreaState>(
      'GIVEN input with pressed digit would be valid '
      'updates input cubit with input where pressed digit gets added on last place '
      'when DigitPressed is added.',
      build: () {
        final gameSnapshot = MockAbstractGameSnapshot(40);
        whenListen(
          mockPlayWatcherCubit,
          Stream.fromIterable([gameSnapshot]),
          initialState: gameSnapshot,
        );

        const points = 4;
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.points(points: points)]),
          initialState: const InputState.points(points: points),
        );

        return StandardInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      act: (bloc) =>
          bloc.add(const StandardInputAreaEvent.digitPressed(digit: 0)),
      verify: (_) => (verify(
        () => mockInputCubit.update(newInput: left(40)),
      )).called(1),
    );

    blocTest<StandardInputAreaBloc, StandardInputAreaState>(
      'GIVEN input with pressed digit would be invalid '
      'updates input cubit with input where pressed digit gets added on last place '
      'when DigitPressed is added.',
      build: () {
        final gameSnapshot = MockAbstractGameSnapshot(40);
        whenListen(
          mockPlayWatcherCubit,
          Stream.fromIterable([gameSnapshot]),
          initialState: gameSnapshot,
        );

        const points = 4;
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.points(points: points)]),
          initialState: const InputState.points(points: points),
        );

        return StandardInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      act: (bloc) =>
          bloc.add(const StandardInputAreaEvent.digitPressed(digit: 1)),
      verify: (_) => verifyNever(
        () => mockInputCubit.update(newInput: any(named: 'newInput')),
      ),
    );
  });
}
