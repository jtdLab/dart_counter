import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/home/create_online_game/create_online_game_cubit.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOnlineService extends Mock implements IPlayOnlineService {}

void main() {
  late MockPlayOnlineService mockPlayOnlineService;

  setUp(() {
    mockPlayOnlineService = MockPlayOnlineService();
  });

  group('#Constructors', () {
    group('#Standard#', () {
      test('Initial state set to CreateOnlineGameInitial.', () {
        // Arrange & Act
        final underTest = CreateOnlineGameCubit(mockPlayOnlineService);

        // Assert
        expect(underTest.state, const CreateOnlineGameState.initial());
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN CreateOnlineGameCubit is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => CreateOnlineGameCubit.getIt(),
          throwsA(anything),
        );
      });

      test(
          'GIVEN CreateOnlineGameCubit is registered inside getIt '
          'THEN initial state set to CreateOnlineGameInitial.', () {
        // Arrange
        getIt.registerFactoryParam(
          (param1, _) => CreateOnlineGameCubit(mockPlayOnlineService),
        );

        // Act
        final underTest = CreateOnlineGameCubit.getIt();

        // Assert
        expect(underTest.state, const CreateOnlineGameState.initial());
      });

      test(
          'GIVEN CreateOnlineGameCubit is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = CreateOnlineGameCubit(mockPlayOnlineService);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = CreateOnlineGameCubit.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });
  });

  group('#Methods#', () {
    group('#createGame#', () {
      blocTest<CreateOnlineGameCubit, CreateOnlineGameState>(
        'GIVEN create game fails '
        'THEN emit [CreateOnlineGameFailure].',
        build: () {
          when(
            () => mockPlayOnlineService.createGame(),
          ).thenAnswer(
            (_) async => left(const PlayFailure.error()),
          );

          return CreateOnlineGameCubit(mockPlayOnlineService);
        },
        act: (cubit) => cubit.createGame(),
        expect: () => const [
          CreateOnlineGameState.failure(failure: PlayFailure.error()),
        ],
      );

      blocTest<CreateOnlineGameCubit, CreateOnlineGameState>(
        'GIVEN create game succeeds '
        'THEN emit [CreateOnlineGameSuccess].',
        build: () {
          when(
            () => mockPlayOnlineService.createGame(),
          ).thenAnswer(
            (_) async => right(OnlineGameSnapshot.dummy()),
          );

          return CreateOnlineGameCubit(mockPlayOnlineService);
        },
        act: (cubit) => cubit.createGame(),
        expect: () => const [
          CreateOnlineGameState.success(),
        ],
      );
    });
  });
}
