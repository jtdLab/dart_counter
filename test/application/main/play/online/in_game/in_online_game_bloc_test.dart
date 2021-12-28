import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/online/in_game/in_online_game_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/key_board_type.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOfflineService extends Mock implements IPlayOnlineService {}

void main() {
  late MockPlayOfflineService mockPlayOfflineService;

  setUp(() {
    mockPlayOfflineService = MockPlayOfflineService();
  });

  test('initial state initialized correctly', () {
    // Act
    final underTest = InOnlineGameBloc(mockPlayOfflineService);

    // Assert
    expect(
      underTest.state,
      const InGameState.initial(keyBoardType: KeyBoardType.standard),
    );
  });

  group('GameCanceled', () {
    blocTest<InOnlineGameBloc, InGameState>(
      'calls the correct method of the play service.',
      build: () => InOnlineGameBloc(mockPlayOfflineService),
      act: (bloc) => bloc.add(const InGameEvent.gameCanceled()),
      verify: (_) =>
          verify(() => mockPlayOfflineService.cancelGame()).called(1),
    );
  });

  group('UndoThrowPressed', () {
    blocTest<InOnlineGameBloc, InGameState>(
      'calls the correct method of the play service.',
      build: () => InOnlineGameBloc(mockPlayOfflineService),
      act: (bloc) => bloc.add(const InGameEvent.undoThrowPressed()),
      verify: (_) => verify(
        () => mockPlayOfflineService.undoThrow(),
      ).called(1),
    );
  });

  group('PerformThrowPressed', () {
    final t = Throw.dummy();

    blocTest<InOnlineGameBloc, InGameState>(
      'calls the correct method of the play service.',
      build: () => InOnlineGameBloc(mockPlayOfflineService),
      act: (bloc) => bloc.add(InGameEvent.performThrowPressed(t: t)),
      verify: (_) =>
          verify(() => mockPlayOfflineService.performThrow(t: t)).called(1),
    );
  });
}
