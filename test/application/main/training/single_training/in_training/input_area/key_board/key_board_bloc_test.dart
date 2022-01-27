import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/main/training/single_training/in_training/input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:dart_counter/domain/training/single/single_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/single/single_training_player_snapshot.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSingleTrainingService extends Mock implements ISingleTrainingService {
}

class MockSingleTrainingGameSnapshot extends Mock
    implements SingleTrainingGameSnapshot {}

class MockSingleTrainingPlayerSnapshot extends Mock
    implements SingleTrainingPlayerSnapshot {}

class MockDartsDisplayerBloc
    extends MockBloc<DartsDisplayerEvent, DartsDisplayerState>
    implements DartsDisplayerBloc {}


void main() {
  late MockSingleTrainingService singleTrainingService;
  late MockSingleTrainingPlayerSnapshot singleTrainingPlayerSnapshot;
  late MockSingleTrainingGameSnapshot singleTrainingGameSnapshot;

  late MockDartsDisplayerBloc dartsDisplayerBloc;

  const targetValue = 1;

  setUpAll(() {
    singleTrainingPlayerSnapshot = MockSingleTrainingPlayerSnapshot();
    when(() => singleTrainingPlayerSnapshot.targetValue)
        .thenReturn(targetValue);
    singleTrainingGameSnapshot = MockSingleTrainingGameSnapshot();
    when(() => singleTrainingGameSnapshot.currentTurn())
        .thenReturn(singleTrainingPlayerSnapshot);
  });

  setUp(() {
    singleTrainingService = MockSingleTrainingService();
    dartsDisplayerBloc = MockDartsDisplayerBloc();
  });

  group('SinglePressed', () {
    blocTest<KeyBoardBloc, void>(
      'GIVEN current turn has target value X '
      'Add Dart(single:X) to DartsDisplayerBloc.',
      setUp: () {
        when(
          () => singleTrainingService.getGame(),
        ).thenReturn(singleTrainingGameSnapshot);
      },
      build: () => KeyBoardBloc(singleTrainingService, dartsDisplayerBloc),
      act: (bloc) => bloc.add(const KeyBoardEvent.singlePressed()),
      verify: (_) {
        verify(
          () => dartsDisplayerBloc.add(
            const DartsDisplayerEvent.dartAdded(
              dart: Dart(type: DartType.single, value: targetValue),
            ),
          ),
        ).called(1);
      },
    );
  });

  group('DoublePressed', () {
    blocTest<KeyBoardBloc, void>(
      'GIVEN current turn has target value X '
      'Add Dart(double:X) to DartsDisplayerBloc.',
      setUp: () {
        when(
          () => singleTrainingService.getGame(),
        ).thenReturn(singleTrainingGameSnapshot);
      },
      build: () => KeyBoardBloc(singleTrainingService, dartsDisplayerBloc),
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
  });

  group('TriplePressed', () {
    blocTest<KeyBoardBloc, void>(
      'GIVEN current turn has target value X '
      'Add Dart(triple:X) to DartsDisplayerBloc.',
      setUp: () {
        when(
          () => singleTrainingService.getGame(),
        ).thenReturn(singleTrainingGameSnapshot);
      },
      build: () => KeyBoardBloc(singleTrainingService, dartsDisplayerBloc),
      act: (bloc) => bloc.add(const KeyBoardEvent.triplePressed()),
      verify: (_) {
        verify(
          () => dartsDisplayerBloc.add(
            const DartsDisplayerEvent.dartAdded(
              dart: Dart(type: DartType.triple, value: targetValue),
            ),
          ),
        ).called(1);
      },
    );
  });

  group('MissedPressed', () {
    blocTest<KeyBoardBloc, void>(
      'Add Dart(missed) to DartsDisplayerBloc.',
      build: () => KeyBoardBloc(singleTrainingService, dartsDisplayerBloc),
      act: (bloc) => bloc.add(const KeyBoardEvent.missedPressed()),
      verify: (_) {
        verify(
          () => dartsDisplayerBloc.add(
            const DartsDisplayerEvent.dartAdded(dart: Dart.missed),
          ),
        ).called(1);
      },
    );
  });

  group('EreasePressed', () {
    blocTest<KeyBoardBloc, void>(
      'Remove last dart from DartsDisplayerBloc.',
      build: () => KeyBoardBloc(singleTrainingService, dartsDisplayerBloc),
      act: (bloc) => bloc.add(const KeyBoardEvent.ereasePressed()),
      verify: (_) {
        verify(
          () => dartsDisplayerBloc.add(const DartsDisplayerEvent.dartRemoved()),
        ).called(1);
      },
    );
  });
}
