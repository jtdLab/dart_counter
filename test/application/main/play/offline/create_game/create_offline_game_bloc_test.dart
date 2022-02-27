import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/offline/create_game/create_offline_game_bloc.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOfflineService extends Mock implements IPlayOfflineService {}

void main() {
  late MockPlayOfflineService mockPlayOfflineService;

  setUpAll(() {
    mockPlayOfflineService = MockPlayOfflineService();
  });

  group('#Constructors#', () {
    group('#GetIt#', () {
      test(
          'GIVEN CreateOfflineGameBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => CreateOfflineGameBloc.getIt(),
          throwsA(anything),
        );
      });

      test(
          'GIVEN CreateOfflineGameBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance =
            CreateOfflineGameBloc(mockPlayOfflineService);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = CreateOfflineGameBloc.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });
  });

  group('#Events#', () {
    group('#GameCanceled#', () {
      blocTest<CreateOfflineGameBloc, void>(
        'Cancel the game.',
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

    group('#PlayerReordered#', () {
      blocTest<CreateOfflineGameBloc, void>(
        'Reorder players with incoming indices.',
        setUp: () {
          when(
            () => mockPlayOfflineService.reorderPlayer(
              oldIndex: 0,
              newIndex: 1,
            ),
          ).thenAnswer(
            (_) async => right(unit),
          );
        },
        build: () => CreateOfflineGameBloc(mockPlayOfflineService),
        act: (bloc) => bloc.add(
          const CreateOfflineGameEvent.playerReordered(
              oldIndex: 0, newIndex: 1),
        ),
        verify: (_) => verify(
          () => mockPlayOfflineService.reorderPlayer(oldIndex: 0, newIndex: 1),
        ).called(1),
      );
    });

    group('#PlayerAdded#', () {
      blocTest<CreateOfflineGameBloc, void>(
        'Add new player.',
        setUp: () {
          when(() => mockPlayOfflineService.addPlayer()).thenAnswer(
            (_) async => right(unit),
          );
        },
        build: () => CreateOfflineGameBloc(mockPlayOfflineService),
        act: (bloc) => bloc.add(const CreateOfflineGameEvent.playerAdded()),
        verify: (_) =>
            verify(() => mockPlayOfflineService.addPlayer()).called(1),
      );
    });

    group('#PlayerRemoved#', () {
      blocTest<CreateOfflineGameBloc, void>(
        'Remove player at incoming index.',
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

    group('#PlayerNameUpdated#', () {
      blocTest<CreateOfflineGameBloc, void>(
        'Update the name of player at index to incoming newName.',
        setUp: () {
          when(
            () => mockPlayOfflineService.updateName(
                index: 0, newName: 'dummyName'),
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
          () =>
              mockPlayOfflineService.updateName(index: 0, newName: 'dummyName'),
        ).called(1),
      );
    });

    group('#StartingPointsUpdated#', () {
      blocTest<CreateOfflineGameBloc, void>(
        'Update starting points to incoming newStartingPoints.',
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

    group('#ModeUpdated#', () {
      blocTest<CreateOfflineGameBloc, void>(
        'Update mode to incoming newMode.',
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

    group('#SizeUpdated#', () {
      blocTest<CreateOfflineGameBloc, void>(
        'Update size to incoming newSize.',
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

    group('#TypeUpdated#', () {
      blocTest<CreateOfflineGameBloc, void>(
        'Update type to incoming newType.',
        setUp: () {
          when(() => mockPlayOfflineService.setType(type: Type.sets))
              .thenAnswer(
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

    group('#DartBotAdded#', () {
      blocTest<CreateOfflineGameBloc, void>(
        'Add a dartbot.',
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

    group('#GameStarted#', () {
      blocTest<CreateOfflineGameBloc, void>(
        'Start the game.',
        setUp: () {
          when(() => mockPlayOfflineService.startGame()).thenAnswer(
            (_) async => right(unit),
          );
        },
        build: () => CreateOfflineGameBloc(mockPlayOfflineService),
        act: (bloc) => bloc.add(
          const CreateOfflineGameEvent.gameStarted(),
        ),
        verify: (_) => verify(
          () => mockPlayOfflineService.startGame(),
        ).called(1),
      );
    });

    group('#DartBotRemoved#', () {
      blocTest<CreateOfflineGameBloc, void>(
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

    group('#DartBotTargetAverageUpdated#', () {
      blocTest<CreateOfflineGameBloc, void>(
        'calls the correct method of the play service.',
        setUp: () {
          when(
            () => mockPlayOfflineService.setDartBotTargetAverage(
                targetAverage: 88),
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
          () =>
              mockPlayOfflineService.setDartBotTargetAverage(targetAverage: 88),
        ).called(1),
      );
    });
  });
}
