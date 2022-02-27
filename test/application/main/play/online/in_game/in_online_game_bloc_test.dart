import 'package:dart_counter/application/main/play/online/in_game/in_online_game_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/in_game_bloc.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOnlineService extends Mock implements IPlayOnlineService {}

void main() {
  late MockPlayOnlineService playOnlineService;

  setUpAll(() {
    playOnlineService = MockPlayOnlineService();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Is subclass of InGameBloc and takes IPlayOnlineService as a param.',
          () {
        final underTest = InOnlineGameBloc(playOnlineService);

        expect(underTest, isA<InGameBloc>());
      });
    });

    group('#GetIt#', () {
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
        final underTest = InOnlineGameBloc.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });
  });
}
