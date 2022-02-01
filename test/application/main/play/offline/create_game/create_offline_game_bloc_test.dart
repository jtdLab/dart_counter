import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/offline/create_game/create_offline_game_bloc.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOfflineService extends Mock implements IPlayOfflineService {}

void main() {
  late MockPlayOfflineService mockPlayOfflineService;

  setUpAll(() {
    mockPlayOfflineService = MockPlayOfflineService();
  });

  test('initial state initialized correctly', () {
    // Act
    final underTest = CreateOfflineGameBloc(mockPlayOfflineService);

    // Assert
    expect(underTest.state, const CreateOfflineGameState.initial());
  });

  group('GameCanceled', () {
    blocTest<CreateOfflineGameBloc, CreateOfflineGameState>(
      'calls the correct method of the play service.',
      setUp: () {
        when(() => mockPlayOfflineService.cancelGame()).thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => CreateOfflineGameBloc(mockPlayOfflineService),
      act: (bloc) => bloc.add(const CreateOfflineGameEvent.gameCanceled()),
      verify: (_) =>
          verify(() => mockPlayOfflineService.cancelGame()).called(1),
    );
  });

  group('PlayerReordered', () {
    blocTest<CreateOfflineGameBloc, CreateOfflineGameState>(
      'calls the correct method of the play service.',
      setUp: () {
        when(() =>
                mockPlayOfflineService.reorderPlayer(oldIndex: 0, newIndex: 1))
            .thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => CreateOfflineGameBloc(mockPlayOfflineService),
      act: (bloc) => bloc.add(
        const CreateOfflineGameEvent.playerReordered(oldIndex: 0, newIndex: 1),
      ),
      verify: (_) => verify(
        () => mockPlayOfflineService.reorderPlayer(oldIndex: 0, newIndex: 1),
      ).called(1),
    );
  });

  group('PlayerAdded', () {
    blocTest<CreateOfflineGameBloc, CreateOfflineGameState>(
      'calls the correct method of the play service.',
      setUp: () {
        when(() => mockPlayOfflineService.addPlayer()).thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => CreateOfflineGameBloc(mockPlayOfflineService),
      act: (bloc) => bloc.add(const CreateOfflineGameEvent.playerAdded()),
      verify: (_) => verify(() => mockPlayOfflineService.addPlayer()).called(1),
    );
  });

  group('PlayerRemoved', () {
    blocTest<CreateOfflineGameBloc, CreateOfflineGameState>(
      'calls the correct method of the play service.',
      setUp: () {
        when(() => mockPlayOfflineService.removePlayer(index: 0)).thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => CreateOfflineGameBloc(mockPlayOfflineService),
      act: (bloc) => bloc.add(
        const CreateOfflineGameEvent.playerRemoved(index: 0),
      ),
      verify: (_) => verify(
        () => mockPlayOfflineService.removePlayer(index: 0),
      ).called(1),
    );
  });

  group('PlayerNameUpdated', () {
    blocTest<CreateOfflineGameBloc, CreateOfflineGameState>(
      'calls the correct method of the play service.',
      setUp: () {
        when(
          () =>
              mockPlayOfflineService.updateName(index: 0, newName: 'dummyName'),
        ).thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => CreateOfflineGameBloc(mockPlayOfflineService),
      act: (bloc) => bloc.add(
        const CreateOfflineGameEvent.playerNameUpdated(
          index: 0,
          newName: 'dummyName',
        ),
      ),
      verify: (_) => verify(
        () => mockPlayOfflineService.updateName(index: 0, newName: 'dummyName'),
      ).called(1),
    );
  });

  group('StartingPointsUpdated', () {
    blocTest<CreateOfflineGameBloc, CreateOfflineGameState>(
      'calls the correct method of the play service.',
      setUp: () {
        when(
          () => mockPlayOfflineService.setStartingPoints(startingPoints: 701),
        ).thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => CreateOfflineGameBloc(mockPlayOfflineService),
      act: (bloc) => bloc.add(
        const CreateOfflineGameEvent.startingPointsUpdated(
          newStartingPoints: 701,
        ),
      ),
      verify: (_) => verify(
        () => mockPlayOfflineService.setStartingPoints(startingPoints: 701),
      ).called(1),
    );
  });

  group('ModeUpdated', () {
    blocTest<CreateOfflineGameBloc, CreateOfflineGameState>(
      'calls the correct method of the play service.',
      setUp: () {
        when(
          () => mockPlayOfflineService.setMode(mode: Mode.bestOf),
        ).thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => CreateOfflineGameBloc(mockPlayOfflineService),
      act: (bloc) => bloc.add(
        const CreateOfflineGameEvent.modeUpdated(newMode: Mode.bestOf),
      ),
      verify: (_) => verify(
        () => mockPlayOfflineService.setMode(mode: Mode.bestOf),
      ).called(1),
    );
  });

  group('SizeUpdated', () {
    blocTest<CreateOfflineGameBloc, CreateOfflineGameState>(
      'calls the correct method of the play service.',
      setUp: () {
        when(() => mockPlayOfflineService.setSize(size: 10)).thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => CreateOfflineGameBloc(mockPlayOfflineService),
      act: (bloc) => bloc.add(
        const CreateOfflineGameEvent.sizeUpdated(newSize: 10),
      ),
      verify: (_) => verify(
        () => mockPlayOfflineService.setSize(size: 10),
      ).called(1),
    );
  });

  group('TypeUpdated', () {
    blocTest<CreateOfflineGameBloc, CreateOfflineGameState>(
      'calls the correct method of the play service.',
      setUp: () {
        when(() => mockPlayOfflineService.setType(type: Type.sets)).thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => CreateOfflineGameBloc(mockPlayOfflineService),
      act: (bloc) => bloc.add(
        const CreateOfflineGameEvent.typeUpdated(newType: Type.sets),
      ),
      verify: (_) => verify(
        () => mockPlayOfflineService.setType(type: Type.sets),
      ).called(1),
    );
  });

  group('DartBotAdded', () {
    blocTest<CreateOfflineGameBloc, CreateOfflineGameState>(
      'calls the correct method of the play service.',
      setUp: () {
        when(() => mockPlayOfflineService.addDartBot()).thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => CreateOfflineGameBloc(mockPlayOfflineService),
      act: (bloc) => bloc.add(
        const CreateOfflineGameEvent.dartBotAdded(),
      ),
      verify: (_) => verify(
        () => mockPlayOfflineService.addDartBot(),
      ).called(1),
    );
  });

  group('DartBotRemoved', () {
    blocTest<CreateOfflineGameBloc, CreateOfflineGameState>(
      'calls the correct method of the play service.',
      setUp: () {
        when(() => mockPlayOfflineService.removeDartBot()).thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => CreateOfflineGameBloc(mockPlayOfflineService),
      act: (bloc) => bloc.add(
        const CreateOfflineGameEvent.dartBotRemoved(),
      ),
      verify: (_) => verify(
        () => mockPlayOfflineService.removeDartBot(),
      ).called(1),
    );
  });

  group('DartBotTargetAverageUpdated', () {
    blocTest<CreateOfflineGameBloc, CreateOfflineGameState>(
      'calls the correct method of the play service.',
      setUp: () {
        when(
          () =>
              mockPlayOfflineService.setDartBotTargetAverage(targetAverage: 88),
        ).thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => CreateOfflineGameBloc(mockPlayOfflineService),
      act: (bloc) => bloc.add(
        const CreateOfflineGameEvent.dartBotTargetAverageUpdated(
          newTargetAverage: 88,
        ),
      ),
      verify: (_) => verify(
        () => mockPlayOfflineService.setDartBotTargetAverage(targetAverage: 88),
      ).called(1),
    );
  });
}
