import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/training/double_training/in_training/input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/training/double/double_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/double/double_training_player_snapshot.dart';
import 'package:dart_counter/domain/training/double/i_double_training_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';


class MockDoubleTrainingService extends Mock implements IDoubleTrainingService {
}

class MockDoubleTrainingGameSnapshot extends Mock
    implements DoubleTrainingGameSnapshot {}

class MockDoubleTrainingPlayerSnapshot extends Mock
    implements DoubleTrainingPlayerSnapshot {}

class MockDartsDisplayerBloc
    extends MockBloc<DartsDisplayerEvent, DartsDisplayerState>
    implements DartsDisplayerBloc {}

void main() {
  late MockDoubleTrainingService doubleTrainingService;
  late MockDoubleTrainingPlayerSnapshot doubleTrainingPlayerSnapshot;
  late MockDoubleTrainingGameSnapshot doubleTrainingGameSnapshot;

  late MockDartsDisplayerBloc dartsDisplayerBloc;

  const targetValue = 1;

  setUpAll(() {
    doubleTrainingPlayerSnapshot = MockDoubleTrainingPlayerSnapshot();
    when(() => doubleTrainingPlayerSnapshot.targetValue)
        .thenReturn(targetValue);
    doubleTrainingGameSnapshot = MockDoubleTrainingGameSnapshot();
    when(() => doubleTrainingGameSnapshot.currentTurn())
        .thenReturn(doubleTrainingPlayerSnapshot);
  });

  setUp(() {
    doubleTrainingService = MockDoubleTrainingService();
    dartsDisplayerBloc = MockDartsDisplayerBloc();
  });

  group('DoublePressed', () {
    blocTest<KeyBoardBloc, void>(
      'GIVEN current turn has target value X '
      'GIVEN state of DartsDisplayerBloc is DartsDisplayerEmpty '
      'Add Dart(double:X) to DartsDisplayerBloc.',
      setUp: () {
        when(
          () => doubleTrainingService.getGame(),
        ).thenReturn(doubleTrainingGameSnapshot);
        when(() => dartsDisplayerBloc.state).thenReturn(
          const DartsDisplayerState.empty(),
        );
      },
      build: () => KeyBoardBloc(doubleTrainingService, dartsDisplayerBloc),
      act: (bloc) => bloc.add(const KeyBoardEvent.doublePressed()),
      verify: (_) {
        verify(
          () => dartsDisplayerBloc.add(
            const DartsDisplayerEvent.dartAdded(
              dart: Dart(type: DartType.double, value: targetValue),
            ),
          ),
        ).called(1);
      },
    );

    blocTest<KeyBoardBloc, void>(
      'GIVEN current turn has target value X '
      'GIVEN state of DartsDisplayerBloc is DartsDisplayerNotEmpty with darts containing only Dart(missed) '
      'Add Dart(double:X) to DartsDisplayerBloc.',
      setUp: () {
        when(
          () => doubleTrainingService.getGame(),
        ).thenReturn(doubleTrainingGameSnapshot);
        when(() => dartsDisplayerBloc.state).thenReturn(
          DartsDisplayerState.notEmpty(
            darts: NotEmptyList(
              [Dart.missed, Dart.missed].toImmutableList(),
            ),
          ),
        );
      },
      build: () => KeyBoardBloc(doubleTrainingService, dartsDisplayerBloc),
      act: (bloc) => bloc.add(const KeyBoardEvent.doublePressed()),
      verify: (_) {
        verify(
          () => dartsDisplayerBloc.add(
            const DartsDisplayerEvent.dartAdded(
              dart: Dart(type: DartType.double, value: targetValue),
            ),
          ),
        ).called(1);
      },
    );

    blocTest<KeyBoardBloc, void>(
      'GIVEN current turn has target value X '
      'GIVEN state of DartsDisplayerBloc is DartsDisplayerNotEmpty with darts containing 1 Dart(double:X) '
      'do nothing.',
      setUp: () {
        when(
          () => doubleTrainingService.getGame(),
        ).thenReturn(doubleTrainingGameSnapshot);
        when(() => dartsDisplayerBloc.state).thenReturn(
          DartsDisplayerState.notEmpty(
            darts: NotEmptyList(
              [
                const Dart(type: DartType.double, value: targetValue),
              ].toImmutableList(),
            ),
          ),
        );
      },
      build: () => KeyBoardBloc(doubleTrainingService, dartsDisplayerBloc),
      act: (bloc) => bloc.add(const KeyBoardEvent.doublePressed()),
      verify: (_) {
        verifyNever(
          () => dartsDisplayerBloc.add(
            const DartsDisplayerEvent.dartAdded(
              dart: Dart(type: DartType.double, value: targetValue),
            ),
          ),
        );
      },
    );
  });

  group('MissedPressed', () {
    blocTest<KeyBoardBloc, void>(
      'GIVEN state of DartsDisplayerBloc is DartsDisplayerEmpty '
      'Add Dart(missed) to DartsDisplayerBloc.',
      setUp: () {
        when(
          () => doubleTrainingService.getGame(),
        ).thenReturn(doubleTrainingGameSnapshot);
        when(() => dartsDisplayerBloc.state).thenReturn(
          const DartsDisplayerState.empty(),
        );
      },
      build: () => KeyBoardBloc(doubleTrainingService, dartsDisplayerBloc),
      act: (bloc) => bloc.add(const KeyBoardEvent.missedPressed()),
      verify: (_) {
        verify(
          () => dartsDisplayerBloc.add(
            const DartsDisplayerEvent.dartAdded(dart: Dart.missed),
          ),
        ).called(1);
      },
    );

    blocTest<KeyBoardBloc, void>(
      'GIVEN state of DartsDisplayerBloc is DartsDisplayerNotEmpty with darts containing only Dart(missed) '
      'Add Dart(double:X) to DartsDisplayerBloc.',
      setUp: () {
        when(
          () => doubleTrainingService.getGame(),
        ).thenReturn(doubleTrainingGameSnapshot);
        when(() => dartsDisplayerBloc.state).thenReturn(
          DartsDisplayerState.notEmpty(
            darts: NotEmptyList(
              [Dart.missed, Dart.missed].toImmutableList(),
            ),
          ),
        );
      },
      build: () => KeyBoardBloc(doubleTrainingService, dartsDisplayerBloc),
      act: (bloc) => bloc.add(const KeyBoardEvent.missedPressed()),
      verify: (_) {
        verify(
          () => dartsDisplayerBloc.add(
            const DartsDisplayerEvent.dartAdded(dart: Dart.missed),
          ),
        ).called(1);
      },
    );

    blocTest<KeyBoardBloc, void>(
      'GIVEN state of DartsDisplayerBloc is DartsDisplayerNotEmpty with darts containing 1 Dart(double:X) '
      'do nothing.',
      setUp: () {
        when(
          () => doubleTrainingService.getGame(),
        ).thenReturn(doubleTrainingGameSnapshot);
        when(() => dartsDisplayerBloc.state).thenReturn(
          DartsDisplayerState.notEmpty(
            darts: NotEmptyList(
              [
                const Dart(type: DartType.double, value: targetValue),
              ].toImmutableList(),
            ),
          ),
        );
      },
      build: () => KeyBoardBloc(doubleTrainingService, dartsDisplayerBloc),
      act: (bloc) => bloc.add(const KeyBoardEvent.missedPressed()),
      verify: (_) {
        verifyNever(
          () => dartsDisplayerBloc.add(
            const DartsDisplayerEvent.dartAdded(dart: Dart.missed),
          ),
        );
      },
    );
  });

  group('EreasePressed', () {
    blocTest<KeyBoardBloc, void>(
      'Remove last dart from DartsDisplayerBloc.',
      build: () => KeyBoardBloc(doubleTrainingService, dartsDisplayerBloc),
      act: (bloc) => bloc.add(const KeyBoardEvent.ereasePressed()),
      verify: (_) {
        verify(
          () => dartsDisplayerBloc.add(const DartsDisplayerEvent.dartRemoved()),
        ).called(1);
      },
    );
  });
}
