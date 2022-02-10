import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/home/create_online_game/create_online_game_cubit.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOnlineService extends Mock implements IPlayOnlineService {}

void main() {
  setUpAll(() {
    // mocktail related setup
    registerFallbackValue(User.dummy());
  });

  late MockPlayOnlineService mockPlayOnlineService;

  setUp(() {
    mockPlayOnlineService = MockPlayOnlineService();
  });

  test('Initial state set to CreateOnlineGameInitial.', () {
    // Arrange & Act
    final underTest = CreateOnlineGameCubit(mockPlayOnlineService);

    // Assert
    expect(underTest.state, const CreateOnlineGameState.initial());
  });

  group('createGame', () {
    blocTest<CreateOnlineGameCubit, CreateOnlineGameState>(
      'GIVEN create game fails '
      'THEN emit [CreateOnlineGameFailure].',
      build: () {
        when<Future<Either<PlayFailure, OnlineGameSnapshot>>>(
          () => mockPlayOnlineService.createGame(),
        ).thenAnswer(
          (_) async => left(const PlayFailure.error()),
        );

        return CreateOnlineGameCubit(mockPlayOnlineService);
      },
      act: (cubit) => cubit.createGame(),
      expect: () => const <CreateOnlineGameState>[
        CreateOnlineGameState.failure(failure: PlayFailure.error()),
      ],
    );

    blocTest<CreateOnlineGameCubit, CreateOnlineGameState>(
      'GIVEN create game succeeds '
      'THEN emit [CreateOnlineGameSuccess].',
      build: () {
        when<Future<Either<PlayFailure, OnlineGameSnapshot>>>(
          () => mockPlayOnlineService.createGame(),
        ).thenAnswer(
          (_) async => right(OnlineGameSnapshot.dummy()),
        );

        return CreateOnlineGameCubit(mockPlayOnlineService);
      },
      act: (cubit) => cubit.createGame(),
      expect: () => const <CreateOnlineGameState>[
        CreateOnlineGameState.success(),
      ],
    );
  });
}
