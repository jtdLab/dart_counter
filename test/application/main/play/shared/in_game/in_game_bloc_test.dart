import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/shared/in_game/in_game_bloc.dart';
import 'package:dart_counter/domain/play/abstract_i_play_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// TODO this a machanism to test abstract classes use in other tests too
class TestInGameBloc extends InGameBloc {
  TestInGameBloc(
    AbstractIPlayService playService,
  ) : super(playService);
}

class MockPlayService extends Mock implements AbstractIPlayService {}

void main() {
  late MockPlayService mockPlayService;

  setUpAll(() {
    mockPlayService = MockPlayService();
    when(() => mockPlayService.cancelGame()).thenAnswer(
      (_) async => right(unit),
    );
  });

  test('Initial state set to InGameInitial with showCheckoutDetails false.',
      () {
    // Act
    final underTest = TestInGameBloc(mockPlayService);

    // Assert
    expect(
      underTest.state,
      const InGameState.initial(showCheckoutDetails: false),
    );
  });

  group('ShowCheckoutDetailsChanged', () {
    blocTest<InGameBloc, InGameState>(
      'GIVEN incoming newShowCheckoutDetails is true '
      'THEN emit [InGameInitial] with showCheckoutDetails true.',
      build: () => TestInGameBloc(mockPlayService),
      act: (bloc) => bloc.add(
        const InGameEvent.showCheckoutDetailsChanged(
          newShowCheckoutDetails: true,
        ),
      ),
      expect: () => [const InGameState.initial(showCheckoutDetails: true)],
    );

    blocTest<InGameBloc, InGameState>(
      'GIVEN incoming newShowCheckoutDetails is false '
      'THEN emit [InGameInitial] with showCheckoutDetails false.',
      build: () => TestInGameBloc(mockPlayService),
      act: (bloc) => bloc.add(
        const InGameEvent.showCheckoutDetailsChanged(
          newShowCheckoutDetails: false,
        ),
      ),
      expect: () => [const InGameState.initial(showCheckoutDetails: false)],
    );
  });

  group('ShowCheckoutDetailsChanged', () {
    blocTest<InGameBloc, InGameState>(
      'Call cancel game.',
      build: () => TestInGameBloc(mockPlayService),
      act: (bloc) => bloc.add(const InGameEvent.canceled()),
      verify: (_) {
        verify(() => mockPlayService.cancelGame()).called(1);
      },
    );
  });
}
