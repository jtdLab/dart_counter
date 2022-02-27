import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/core/shared/play/play_state.dart';
import 'package:dart_counter/application/main/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayerSnapshot extends Mock implements AbstractPlayerSnapshot {}

class MockGameSnapshot extends Mock implements AbstractGameSnapshot {}

class MockDartUtils extends Mock implements IDartUtils {}

class MockPlayCubit extends MockCubit<PlayState> {}

void main() {
  late MockPlayerSnapshot playerSnapshot;
  late MockGameSnapshot gameSnapshot;
  late MockDartUtils dartUtils;
  late MockPlayCubit playCubit;

  const dart = Dart(type: DartType.double, value: 18);

  setUpAll(() {
    registerFallbackValue(const KtList<Dart>.empty());

    playerSnapshot = MockPlayerSnapshot();
    when(() => playerSnapshot.pointsLeft).thenReturn(301);
    gameSnapshot = MockGameSnapshot();
    when(() => gameSnapshot.currentTurn()).thenReturn(playerSnapshot);

    dartUtils = MockDartUtils();
    playCubit = MockPlayCubit();
    whenListen(
      playCubit,
      Stream.value(PlayState.active(gameSnapshot: gameSnapshot)),
      initialState: PlayState.active(gameSnapshot: gameSnapshot),
    );
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Initial state set to DartsDisplayerEmpty.', () {
        // Act
        final underTest = DartsDisplayerBloc(dartUtils, playCubit);

        // Assert
        expect(underTest.state, const DartsDisplayerState.empty());
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN DartsDisplayerBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => DartsDisplayerBloc.getIt(playCubit),
          throwsA(anything),
        );
      });

      test(
          'GIVEN DartsDisplayerBloc is registered inside getIt '
          'THEN initial state set to DartsDisplayerEmpty.', () {
        // Arrange
        getIt.registerFactoryParam(
          (param1, _) => DartsDisplayerBloc.injectable(
            dartUtils,
            [
              playCubit,
            ],
          ),
        );

        // Act
        final underTest = DartsDisplayerBloc.getIt(playCubit);

        // Assert
        expect(underTest.state, const DartsDisplayerState.empty());
      });

      test(
          'GIVEN DartsDisplayerBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = DartsDisplayerBloc.injectable(
          dartUtils,
          [playCubit],
        );
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = DartsDisplayerBloc.getIt(playCubit);

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });

    group('#Injectable#', () {
      test(
          'GIVEN otherDependencies is not [Cubit<PlayState>] '
          'THEN throw error.', () {
        // Arrange
        final otherDependencies = [1];

        // Act & Assert
        expect(
          () => DartsDisplayerBloc.injectable(dartUtils, otherDependencies),
          throwsA(anything),
        );
      });

      test(
          'GIVEN otherDependencies is [Cubit<PlayState>] '
          'THEN initial state set to DartsDisplayerEmpty.', () {
        // Arrange
        final otherDependencies = [playCubit];

        // Act
        final underTest = DartsDisplayerBloc.injectable(
          dartUtils,
          otherDependencies,
        );

        // Assert
        expect(underTest.state, const DartsDisplayerState.empty());
      });
    });
  });

  group('#Events#', () {
    group('#DartAdded#', () {
      blocTest<DartsDisplayerBloc, DartsDisplayerState>(
        'GIVEN state is DartsDisplayerEmpty and newDarts are valid '
        'THEN emit [DartsDisplayerNotEmpty] with dart as the only element.',
        setUp: () {
          when(
            () => dartUtils.validateDarts(
              pointsLeft: any(named: 'pointsLeft'),
              darts: any(named: 'darts'),
            ),
          ).thenReturn(true);
        },
        build: () => DartsDisplayerBloc(dartUtils, playCubit),
        seed: () => const DartsDisplayerState.empty(),
        act: (bloc) =>
            bloc.add(const DartsDisplayerEvent.dartAdded(dart: dart)),
        expect: () => [
          DartsDisplayerState.notEmpty(
            darts: NotEmptyList([dart].toImmutableList()),
          ),
        ],
      );

      blocTest<DartsDisplayerBloc, DartsDisplayerState>(
        'GIVEN state is DartsDisplayerEmpty and newDarts are not valid '
        'THEN do nothing.',
        setUp: () {
          when(
            () => dartUtils.validateDarts(
              pointsLeft: any(named: 'pointsLeft'),
              darts: any(named: 'darts'),
            ),
          ).thenReturn(false);
        },
        build: () => DartsDisplayerBloc(dartUtils, playCubit),
        seed: () => const DartsDisplayerState.empty(),
        act: (bloc) =>
            bloc.add(const DartsDisplayerEvent.dartAdded(dart: dart)),
        expect: () => [],
      );

      blocTest<DartsDisplayerBloc, DartsDisplayerState>(
        'GIVEN state is DartsDisplayerNotEmpty, contains less than 3 darts and newDarts are valid '
        'THEN emit [DartsDisplayerNotEmpty] with dart added to darts.',
        setUp: () {
          when(
            () => dartUtils.validateDarts(
              pointsLeft: any(named: 'pointsLeft'),
              darts: any(named: 'darts'),
            ),
          ).thenReturn(true);
        },
        build: () => DartsDisplayerBloc(dartUtils, playCubit),
        seed: () => DartsDisplayerState.notEmpty(
          darts: NotEmptyList([dart, dart].toImmutableList()),
        ),
        act: (bloc) =>
            bloc.add(const DartsDisplayerEvent.dartAdded(dart: dart)),
        expect: () => [
          DartsDisplayerState.notEmpty(
            darts: NotEmptyList([dart, dart, dart].toImmutableList()),
          ),
        ],
      );

      blocTest<DartsDisplayerBloc, DartsDisplayerState>(
        'GIVEN state is DartsDisplayerNotEmpty and contains 3 darts and newDarts are not valid '
        'THEN do nothing.',
        setUp: () {
          when(
            () => dartUtils.validateDarts(
              pointsLeft: any(named: 'pointsLeft'),
              darts: any(named: 'darts'),
            ),
          ).thenReturn(false);
        },
        build: () => DartsDisplayerBloc(dartUtils, playCubit),
        seed: () => DartsDisplayerState.notEmpty(
          darts: NotEmptyList([dart, dart, dart].toImmutableList()),
        ),
        act: (bloc) =>
            bloc.add(const DartsDisplayerEvent.dartAdded(dart: dart)),
        expect: () => [],
      );
    });

    group('#DartRemoved#', () {
      blocTest<DartsDisplayerBloc, DartsDisplayerState>(
        'GIVEN state is DartsDisplayerEmpty '
        'THEN do nothing.',
        build: () => DartsDisplayerBloc(dartUtils, playCubit),
        seed: () => const DartsDisplayerState.empty(),
        act: (bloc) => bloc.add(const DartsDisplayerEvent.dartRemoved()),
        expect: () => [],
      );

      blocTest<DartsDisplayerBloc, DartsDisplayerState>(
        'GIVEN state is DartsDisplayerNotEmpty and contains 1 dart '
        'THEN emit [DartsDisplayerEmpty].',
        build: () => DartsDisplayerBloc(dartUtils, playCubit),
        seed: () => DartsDisplayerState.notEmpty(
          darts: NotEmptyList([dart].toImmutableList()),
        ),
        act: (bloc) => bloc.add(const DartsDisplayerEvent.dartRemoved()),
        expect: () => [const DartsDisplayerState.empty()],
      );

      blocTest<DartsDisplayerBloc, DartsDisplayerState>(
        'GIVEN state is DartsDisplayerNotEmpty and contains more than 1 dart '
        'THEN emit [DartsDisplayerNotEmpty] with last dart removed from darts.',
        build: () => DartsDisplayerBloc(dartUtils, playCubit),
        seed: () => DartsDisplayerState.notEmpty(
          darts: NotEmptyList([dart, dart, dart].toImmutableList()),
        ),
        act: (bloc) => bloc.add(const DartsDisplayerEvent.dartRemoved()),
        expect: () => [
          DartsDisplayerState.notEmpty(
            darts: NotEmptyList([dart, dart].toImmutableList()),
          ),
        ],
      );
    });

    group('#ResetRequested#', () {
      blocTest<DartsDisplayerBloc, DartsDisplayerState>(
        'Emit [DartsDisplayerEmpty].',
        build: () => DartsDisplayerBloc(dartUtils, playCubit),
        act: (bloc) => bloc.add(const DartsDisplayerEvent.resetRequested()),
        expect: () => [const DartsDisplayerState.empty()],
      );
    });
  });
}
