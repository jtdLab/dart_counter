import 'package:dart_counter/application/main/play/offline/in_game/in_offline_game_bloc.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOfflineService extends Mock implements IPlayOfflineService {}

void main() {
  late MockPlayOfflineService playOfflineService;

  setUpAll(() {
    playOfflineService = MockPlayOfflineService();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test(
          'Is subclass of InGameBloc and takes IPlayOfflineService as a param.',
          () {
        final underTest = InOfflineGameBloc(playOfflineService);

        expect(underTest, isA<InGameBloc>());
      });
    });

    group('#GetIt#', () {
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
}
