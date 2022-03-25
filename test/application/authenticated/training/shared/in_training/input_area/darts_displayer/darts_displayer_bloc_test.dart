import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

void main() {
  const dart = Dart(type: DartType.double, value: 18);

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Initial state set to DartsDisplayerEmpty.', () {
        // Act
        final underTest = DartsDisplayerBloc();

        // Assert
        expect(underTest.state, const DartsDisplayerState.empty());
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN DartsDisplayerBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(() => DartsDisplayerBloc.getIt(), throwsA(anything));
      });

      test(
          'GIVEN DartsDisplayerBloc is registered inside getIt '
          'THEN initial state set to DartsDisplayerEmpty.', () {
        // Arrange
        getIt.registerFactoryParam(
          (param1, _) => DartsDisplayerBloc(),
        );

        // Act
        final underTest = DartsDisplayerBloc.getIt();

        // Assert
        expect(
          underTest.state,
          const DartsDisplayerState.empty(),
        );
      });

      test(
          'GIVEN DartsDisplayerBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = DartsDisplayerBloc();
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = DartsDisplayerBloc.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });
  });

  group('#Events#', () {
    group('#DartAdded#', () {
      blocTest<DartsDisplayerBloc, DartsDisplayerState>(
        'GIVEN state is DartsDisplayerEmpty '
        'THEN emit [DartsDisplayerNotEmpty] with dart as the only element.',
        build: () => DartsDisplayerBloc(),
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
        'GIVEN state is DartsDisplayerNotEmpty and contains less than 3 darts '
        'THEN emit [DartsDisplayerNotEmpty] with dart added to darts.',
        build: () => DartsDisplayerBloc(),
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
        'GIVEN state is DartsDisplayerNotEmpty and contains 3 darts '
        'THEN do nothing.',
        build: () => DartsDisplayerBloc(),
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
        build: () => DartsDisplayerBloc(),
        seed: () => const DartsDisplayerState.empty(),
        act: (bloc) => bloc.add(const DartsDisplayerEvent.dartRemoved()),
        expect: () => [],
      );

      blocTest<DartsDisplayerBloc, DartsDisplayerState>(
        'GIVEN state is DartsDisplayerNotEmpty and contains 1 dart '
        'THEN emit [DartsDisplayerEmpty].',
        build: () => DartsDisplayerBloc(),
        seed: () => DartsDisplayerState.notEmpty(
          darts: NotEmptyList([dart].toImmutableList()),
        ),
        act: (bloc) => bloc.add(const DartsDisplayerEvent.dartRemoved()),
        expect: () => [const DartsDisplayerState.empty()],
      );

      blocTest<DartsDisplayerBloc, DartsDisplayerState>(
        'GIVEN state is DartsDisplayerNotEmpty and contains more than 1 dart '
        'THEN emit [DartsDisplayerNotEmpty] with last dart removed from darts.',
        build: () => DartsDisplayerBloc(),
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
        build: () => DartsDisplayerBloc(),
        act: (bloc) => bloc.add(const DartsDisplayerEvent.resetRequested()),
        expect: () => [const DartsDisplayerState.empty()],
      );
    });
  });
}
