import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/online/create_game/create_online_game_bloc.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOnlineService extends Mock implements IPlayOnlineService {}

void main() {
  late MockPlayOnlineService mockPlayOnlineService;

  setUpAll(() {
    mockPlayOnlineService = MockPlayOnlineService();
  });

  group('GameCanceled', () {
    blocTest<CreateOnlineGameBloc, void>(
      'Cancel the game.',
      setUp: () {
        when(() => mockPlayOnlineService.cancelGame()).thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => CreateOnlineGameBloc(mockPlayOnlineService),
      act: (bloc) => bloc.add(const CreateOnlineGameEvent.gameCanceled()),
      verify: (_) => verify(() => mockPlayOnlineService.cancelGame()).called(1),
    );
  });

  group('PlayerReordered', () {
    blocTest<CreateOnlineGameBloc, void>(
      'Reorder players with incoming indices.',
      setUp: () {
        when(
          () => mockPlayOnlineService.reorderPlayer(oldIndex: 0, newIndex: 1),
        ).thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => CreateOnlineGameBloc(mockPlayOnlineService),
      act: (bloc) => bloc.add(
        const CreateOnlineGameEvent.playerReordered(oldIndex: 0, newIndex: 1),
      ),
      verify: (_) => verify(
        () => mockPlayOnlineService.reorderPlayer(oldIndex: 0, newIndex: 1),
      ).called(1),
    );
  });

  group('PlayerRemoved', () {
    blocTest<CreateOnlineGameBloc, void>(
      'Remove player at incoming index.',
      setUp: () {
        when(() => mockPlayOnlineService.removePlayer(index: 0)).thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => CreateOnlineGameBloc(mockPlayOnlineService),
      act: (bloc) => bloc.add(
        const CreateOnlineGameEvent.playerRemoved(index: 0),
      ),
      verify: (_) => verify(
        () => mockPlayOnlineService.removePlayer(index: 0),
      ).called(1),
    );
  });

  group('StartingPointsUpdated', () {
    blocTest<CreateOnlineGameBloc, void>(
      'Update starting points to incoming newStartingPoints.',
      setUp: () {
        when(
          () => mockPlayOnlineService.setStartingPoints(startingPoints: 701),
        ).thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => CreateOnlineGameBloc(mockPlayOnlineService),
      act: (bloc) => bloc.add(
        const CreateOnlineGameEvent.startingPointsUpdated(
          newStartingPoints: 701,
        ),
      ),
      verify: (_) => verify(
        () => mockPlayOnlineService.setStartingPoints(startingPoints: 701),
      ).called(1),
    );
  });

  group('ModeUpdated', () {
    blocTest<CreateOnlineGameBloc, void>(
      'Update mode to incoming newMode.',
      setUp: () {
        when(() => mockPlayOnlineService.setMode(mode: Mode.bestOf)).thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => CreateOnlineGameBloc(mockPlayOnlineService),
      act: (bloc) => bloc.add(
        const CreateOnlineGameEvent.modeUpdated(newMode: Mode.bestOf),
      ),
      verify: (_) => verify(
        () => mockPlayOnlineService.setMode(mode: Mode.bestOf),
      ).called(1),
    );
  });

  group('SizeUpdated', () {
    blocTest<CreateOnlineGameBloc, void>(
      'Update size to incoming newSize.',
      setUp: () {
        when(() => mockPlayOnlineService.setSize(size: 10)).thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => CreateOnlineGameBloc(mockPlayOnlineService),
      act: (bloc) => bloc.add(
        const CreateOnlineGameEvent.sizeUpdated(newSize: 10),
      ),
      verify: (_) => verify(
        () => mockPlayOnlineService.setSize(size: 10),
      ).called(1),
    );
  });

  group('TypeUpdated', () {
    blocTest<CreateOnlineGameBloc, void>(
      'Update type to incoming newType.',
      setUp: () {
        when(() => mockPlayOnlineService.setType(type: Type.sets)).thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => CreateOnlineGameBloc(mockPlayOnlineService),
      act: (bloc) => bloc.add(
        const CreateOnlineGameEvent.typeUpdated(newType: Type.sets),
      ),
      verify: (_) => verify(
        () => mockPlayOnlineService.setType(type: Type.sets),
      ).called(1),
    );
  });

  group('GameStarted', () {
    blocTest<CreateOnlineGameBloc, void>(
      'Start the game.',
      setUp: () {
        when(() => mockPlayOnlineService.startGame()).thenAnswer(
          (_) async => right(unit),
        );
      },
      build: () => CreateOnlineGameBloc(mockPlayOnlineService),
      act: (bloc) => bloc.add(
        const CreateOnlineGameEvent.gameStarted(),
      ),
      verify: (_) => verify(
        () => mockPlayOnlineService.startGame(),
      ).called(1),
    );
  });
}
