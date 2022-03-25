import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/play/offline/in_game/detailed_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOfflineService extends Mock implements IPlayOfflineService {}

class MockDartsDisplayerBloc
    extends MockBloc<DartsDisplayerEvent, DartsDisplayerState>
    implements DartsDisplayerBloc {}

void main() {
  late MockPlayOfflineService playOfflineService;
  late MockDartsDisplayerBloc dartsDisplayerBloc;

  setUpAll(() {
    playOfflineService = MockPlayOfflineService();
    dartsDisplayerBloc = MockDartsDisplayerBloc();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test(
          'Is subclass of InputRowBloc and takes IPlayOfflineService and DartsDisplayerBloc as a param.',
          () {
        final underTest = InputRowBlocOfflineDetailedInputArea(
          playOfflineService,
          dartsDisplayerBloc,
        );

        expect(underTest, isA<InputRowBloc>());
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN InputRowBlocOfflineDetailedInputArea is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => InputRowBlocOfflineDetailedInputArea.getIt(dartsDisplayerBloc),
          throwsA(anything),
        );
      });

      test(
          'GIVEN InputRowBlocOfflineDetailedInputArea is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance =
            InputRowBlocOfflineDetailedInputArea.injectable(
          playOfflineService,
          [
            dartsDisplayerBloc,
          ],
        );
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = InputRowBlocOfflineDetailedInputArea.getIt(
          dartsDisplayerBloc,
        );

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });

    group('#Injectable#', () {
      test(
          'GIVEN otherDependencies is not [DartsDisplayerBloc] '
          'THEN throw error.', () {
        // Arrange
        final otherDependencies = [true];

        // Act & Assert
        expect(
          () => InputRowBlocOfflineDetailedInputArea.injectable(
            playOfflineService,
            otherDependencies,
          ),
          throwsA(anything),
        );
      });

      test(
          'GIVEN otherDependencies is [DartsDisplayerBloc] '
          'THEN is subclass of InputRowBloc.', () {
        // Arrange
        final otherDependencies = [dartsDisplayerBloc];

        // Act
        final underTest = InputRowBlocOfflineDetailedInputArea.injectable(
          playOfflineService,
          otherDependencies,
        );

        // Assert
        expect(underTest, isA<InputRowBloc>());
      });
    });
  });
}
