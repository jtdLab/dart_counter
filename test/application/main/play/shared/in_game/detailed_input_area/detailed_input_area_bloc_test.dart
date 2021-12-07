import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/offline/in_game/in_offline_game_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/detailed_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/show_checkout_details/show_checkout_details_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockInGameBloc extends MockBloc<InGameEvent, InGameState> {}

class MockPointsLeftCubit extends MockCubit<int> implements PointsLeftCubit {}

class MockInputCubit extends MockCubit<InputState> implements InputCubit {}

class MockShowCheckoutDetailsCubit extends MockCubit<bool>
    implements ShowCheckoutDetailsCubit {}

class MockDartUtils extends Mock implements IDartUtils {}

void main() {
  setUpAll(() {
    // mocktail related setup
    registerFallbackValue(left<int, KtList<Dart>>(0));
  });

  late Bloc<InGameEvent, InGameState> mockInGameBloc;
  late PointsLeftCubit mockPointsLeftCubit;
  late InputCubit mockInputCubit;
  late ShowCheckoutDetailsCubit mockShowCheckoutDetailsCubit;
  final IDartUtils mockDartUtils = MockDartUtils();

  setUp(() {
    mockInGameBloc = MockInGameBloc();
    mockPointsLeftCubit = MockPointsLeftCubit();
    mockInputCubit = MockInputCubit();
    mockShowCheckoutDetailsCubit = MockShowCheckoutDetailsCubit();
  });

  test('initial state initialized correctly', () {
    // Arrange & Act
    final underTest = DetailedInputAreaBloc(
      mockInGameBloc,
      mockPointsLeftCubit,
      mockInputCubit,
      mockShowCheckoutDetailsCubit,
      mockDartUtils,
    );

    // Assert
    expect(underTest.state, const DetailedInputAreaState.initial());
  });

  group('UndoThrowPressed', () {
    blocTest<DetailedInputAreaBloc, DetailedInputAreaState>(
      'add undoThrowPressed to inGameBloc when UndoDartPressed is added.',
      build: () {
        return DetailedInputAreaBloc(
          mockInGameBloc,
          mockPointsLeftCubit,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
          mockDartUtils,
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
          mockInGameBloc,
          mockPointsLeftCubit,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
          mockDartUtils,
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
          mockInGameBloc,
          mockPointsLeftCubit,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
          mockDartUtils,
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
        const pointsLeft = 40;
        whenListen(
          mockPointsLeftCubit,
          Stream.fromIterable([pointsLeft]),
          initialState: pointsLeft,
        );

        const points = 10;
        whenListen(
          mockInputCubit,
          Stream.fromIterable([const InputState.points(points: points)]),
          initialState: const InputState.points(points: points),
        );

        return DetailedInputAreaBloc(
          mockInGameBloc,
          mockPointsLeftCubit,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
          mockDartUtils,
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
          mockInGameBloc,
          mockPointsLeftCubit,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
          mockDartUtils,
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
          mockInGameBloc,
          mockPointsLeftCubit,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
          mockDartUtils,
        );
      },
      seed: () => const DetailedInputAreaState.focused(
        focusedValue: 20,
        maxAllowedType: DartType.triple,
      ),
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
          mockInGameBloc,
          mockPointsLeftCubit,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
          mockDartUtils,
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
          mockInGameBloc,
          mockPointsLeftCubit,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
          mockDartUtils,
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
          mockInGameBloc,
          mockPointsLeftCubit,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
          mockDartUtils,
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
          mockInGameBloc,
          mockPointsLeftCubit,
          mockInputCubit,
          mockShowCheckoutDetailsCubit,
          mockDartUtils,
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
