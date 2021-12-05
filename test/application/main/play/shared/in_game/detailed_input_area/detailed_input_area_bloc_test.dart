import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/offline/in_game/in_offline_game_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/detailed_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/show_checkout_details/show_checkout_details_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:kt_dart/kt.dart';

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
    final underTest = DetailedInputAreaBloc(
      mockPlayWatcherCubit,
      mockInGameBloc,
      mockInputCubit,
      mockShowCheckoutDetailsCubit,
    );

    // Assert
    expect(underTest.state, const DetailedInputAreaState.initial());
  });

  group('UndoThrowPressed', () {
    blocTest<DetailedInputAreaBloc, DetailedInputAreaState>(
      'add undoThrowPressed to inGameBloc when UndoDartPressed is added.',
      build: () {
        return DetailedInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      act: (bloc) => bloc.add(const DetailedInputAreaEvent.undoThrowPressed()),
      verify: (_) {
        verify(
          () => mockInGameBloc.add(const InGameEvent.undoThrowPressed()),
        ).called(1);
      },
    );
  });

  group('PerformThrowPressed', () {
    // TODO impl
    blocTest<DetailedInputAreaBloc, DetailedInputAreaState>(
      'emits [MyState] when MyEvent is added.',
      build: () {
        return DetailedInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
    );
  });

  group('DartFocused', () {
    blocTest<DetailedInputAreaBloc, DetailedInputAreaState>(
      'GIVEN input is points '
      'throws Error when DartFocused is added.',
      build: () {
        const points = 10;
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.points(points: points)]),
          initialState: const InputState.points(points: points),
        );

        return DetailedInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      act: (bloc) =>
          bloc.add(const DetailedInputAreaEvent.dartFocused(focusedValue: 10)),
      errors: () => [isA<Error>()],
    );

    // TODO impl
    blocTest<DetailedInputAreaBloc, DetailedInputAreaState>(
      'GIVEN input is points dd'
      'throws Error when DartFocused is added.',
      build: () {
        final gameSnapshot = MockAbstractGameSnapshot(40);
        whenListen(
          mockPlayWatcherCubit,
          Stream.fromIterable([gameSnapshot]),
          initialState: gameSnapshot,
        );

        const points = 10;
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.points(points: points)]),
          initialState: const InputState.points(points: points),
        );

        return DetailedInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      act: (bloc) =>
          bloc.add(const DetailedInputAreaEvent.dartFocused(focusedValue: 10)),
      errors: () => [isA<Error>()],
    );
  });

  group('Unfocused', () {
    blocTest<DetailedInputAreaBloc, DetailedInputAreaState>(
      'emits [DetailedInputAreaInitial] with focusedValue = null when Unfocused is added.',
      build: () {
        return DetailedInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      act: (bloc) => bloc.add(const DetailedInputAreaEvent.unfocused()),
      expect: () =>
          const <DetailedInputAreaState>[DetailedInputAreaState.initial()],
    );
  });

  group('DartDetailPressed', () {
    blocTest<DetailedInputAreaBloc, DetailedInputAreaState>(
      'GIVEN input is points '
      'throws Error when DartDetailPressed is added.',
      build: () {
        const points = 40;
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.points(points: points)]),
          initialState: const InputState.points(points: points),
        );
        return DetailedInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      act: (bloc) => bloc.add(
        const DetailedInputAreaEvent.dartDetailPressed(type: DartType.single),
      ),
      errors: () => [isA<Error>()],
    );

    blocTest<DetailedInputAreaBloc, DetailedInputAreaState>(
      'emits [DetailedInputAreaInitial] and updates input cubit with darts where correct new dart was added '
      'when DartDetailPressed is added.',
      build: () {
        const darts = KtList<Dart>.empty();
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.darts(darts: darts)]),
          initialState: const InputState.darts(darts: darts),
        );
        return DetailedInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      seed: () => const DetailedInputAreaState.focused(
        focusedValue: 20,
        maxAllowedType: DartType.triple,
      ),
      act: (bloc) => bloc.add(
        const DetailedInputAreaEvent.dartDetailPressed(
          type: DartType.double,
        ),
      ),
      expect: () => [const DetailedInputAreaState.initial()],
      verify: (_) => (verify(
        () => mockInputCubit.update(
          newInput: right(
            KtList.from([const Dart(type: DartType.double, value: 20)]),
          ),
        ),
      )).called(1),
    );
  });

  group('UndoDartPressed', () {
    blocTest<DetailedInputAreaBloc, DetailedInputAreaState>(
      'GIVEN input is points '
      'throws Error when UndoDartPressed is added.',
      build: () {
        const points = 40;
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.points(points: points)]),
          initialState: const InputState.points(points: points),
        );
        return DetailedInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      act: (bloc) => bloc.add(
        const DetailedInputAreaEvent.undoDartPressed(),
      ),
      errors: () => [isA<Error>()],
    );

    blocTest<DetailedInputAreaBloc, DetailedInputAreaState>(
      'GIVEN input is empty darts '
      'do nothing '
      'when UndoDartPressed is added.',
      build: () {
        const darts = KtList<Dart>.empty();
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.darts(darts: darts)]),
          initialState: const InputState.darts(darts: darts),
        );
        return DetailedInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      act: (bloc) => bloc.add(
        const DetailedInputAreaEvent.undoDartPressed(),
      ),
      verify: (_) => verifyNever(
        () => mockInputCubit.update(newInput: any(named: 'newInput')),
      ),
    );

    blocTest<DetailedInputAreaBloc, DetailedInputAreaState>(
      'GIVEN input is not empty darts '
      'emits [DetailedInputAreaInitial] and updates input cubit with darts where last dart is removed '
      'when UndoDartPressed is added.',
      build: () {
        final darts =
            KtList.from([const Dart(type: DartType.single, value: 10)]);
        whenListen(
          mockInputCubit,
          Stream.fromIterable([InputState.darts(darts: darts)]),
          initialState: InputState.darts(darts: darts),
        );
        return DetailedInputAreaBloc(
          mockPlayWatcherCubit,
          mockInGameBloc,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
        );
      },
      act: (bloc) => bloc.add(
        const DetailedInputAreaEvent.undoDartPressed(),
      ),
      expect: () => [const DetailedInputAreaState.initial()],
      verify: (_) => verify(
        () => mockInputCubit.update(newInput: right(const KtList.empty())),
      ).called(1),
    );
  });
}
