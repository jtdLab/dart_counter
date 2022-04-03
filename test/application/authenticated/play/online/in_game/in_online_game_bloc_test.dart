import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/play/online/in_game/in_online_game_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/in_game/in_game_bloc.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOnlineService extends Mock implements IPlayOnlineService {}

void main() {
  late MockPlayOnlineService playOnlineService;

  late InOnlineGameBloc underTest;

  setUp(() {
    playOnlineService = MockPlayOnlineService();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Initial state set to InGameInitial with showCheckoutDetails false.',
          () {
        underTest = InOnlineGameBloc(playOnlineService);

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
          (param1, _) => InOnlineGameBloc(playOnlineService),
        );

        // Act
        underTest = InOnlineGameBloc.getIt();

        // Assert
        expect(
          underTest.state,
          const InGameState.initial(showCheckoutDetails: false),
        );
      });

      test(
          'GIVEN InOnlineGameBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => InOnlineGameBloc.getIt(),
          throwsA(anything),
        );
      });

      test(
          'GIVEN InOnlineGameBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = InOnlineGameBloc(playOnlineService);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        underTest = InOnlineGameBloc.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        // Reset DI-container
        await getIt.reset();
      });
    });
  });

  group('#Methods#', () {
    setUp(() {
      underTest = InOnlineGameBloc(playOnlineService);
    });

    group('#Canceled#', () {
      blocTest<InOnlineGameBloc, InGameState>(
        'Cancel game.',
        setUp: () {
          when(() => playOnlineService.cancelGame()).thenAnswer(
            (_) async => right(unit),
          );
        },
        build: () => underTest,
        act: (bloc) => bloc.add(const InGameEvent.canceled()),
        verify: (_) {
          verify(() => playOnlineService.cancelGame()).called(1);
        },
      );
    });

    group('#ShowCheckoutDetailsChanged#', () {
      const newCheckoutDetails = true;

      blocTest<InOnlineGameBloc, InGameState>(
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
