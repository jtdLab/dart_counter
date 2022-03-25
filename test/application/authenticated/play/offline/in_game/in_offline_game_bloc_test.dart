import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/play/offline/in_game/in_offline_game_bloc.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOfflineService extends Mock implements IPlayOfflineService {}

void main() {
  late MockPlayOfflineService playOfflineService;

  late InOfflineGameBloc underTest;

  setUpAll(() {
    playOfflineService = MockPlayOfflineService();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Initial state set to InGameInitial with showCheckoutDetails false.',
          () {
        underTest = InOfflineGameBloc(playOfflineService);

        expect(
          underTest.state,
          const InGameState.initial(showCheckoutDetails: false),
        );
      });
    });

    group('#GetIt#', () {
      test('Initial state set to InGameInitial with showCheckoutDetails false.',
          () {
        // Arrange
        getIt.registerFactoryParam(
          (param1, _) => InOfflineGameBloc(playOfflineService),
        );

        // Act
        underTest = InOfflineGameBloc.getIt();

        // Assert
        expect(
          underTest.state,
          const InGameState.initial(showCheckoutDetails: false),
        );
      });

      test(
          'GIVEN InOfflineGameBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => InOfflineGameBloc.getIt(),
          throwsA(anything),
        );
      });

      test(
          'GIVEN InOfflineGameBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = InOfflineGameBloc(playOfflineService);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = InOfflineGameBloc.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });
  });

  group('#Methods#', () {
    setUp(() {
      underTest = InOfflineGameBloc(playOfflineService);
    });

    group('#Canceled#', () {
      blocTest<InOfflineGameBloc, InGameState>(
        'Cancel game.',
        setUp: () {
          when(() => playOfflineService.cancelGame()).thenAnswer(
            (_) async => right(unit),
          );
        },
        build: () => underTest,
        act: (bloc) => bloc.add(const InGameEvent.canceled()),
        verify: (_) {
          verify(() => playOfflineService.cancelGame()).called(1);
        },
      );
    });

    group('#ShowCheckoutDetailsChanged#', () {
      const newCheckoutDetails = true;

      blocTest<InOfflineGameBloc, InGameState>(
        'GIVEN new checkout details. '
        'THEN emit [InGameInitial] with updated checkout details.',
        build: () => underTest,
        act: (bloc) => bloc.add(
          const InGameEvent.showCheckoutDetailsChanged(
            newShowCheckoutDetails: newCheckoutDetails,
          ),
        ),
        expect: () => [
          const InGameState.initial(showCheckoutDetails: newCheckoutDetails),
        ],
      );
    });
  });
}
