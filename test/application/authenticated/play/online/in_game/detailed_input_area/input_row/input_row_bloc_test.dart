import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/play/online/in_game/detailed_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOnlineService extends Mock implements IPlayOnlineService {}

class MockDartsDisplayerBloc
    extends MockBloc<DartsDisplayerEvent, DartsDisplayerState>
    implements DartsDisplayerBloc {}

void main() {
  late MockPlayOnlineService playOnlineService;
  late MockDartsDisplayerBloc dartsDisplayerBloc;

  setUpAll(() {
    playOnlineService = MockPlayOnlineService();
    dartsDisplayerBloc = MockDartsDisplayerBloc();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test(
          'Is subclass of InputRowBloc and takes IPlayOnlineService and DartsDisplayerBloc as a param.',
          () {
        final underTest = InputRowBlocOnlineDetailedInputArea(
          playOnlineService,
          dartsDisplayerBloc,
        );

        expect(underTest, isA<InputRowBloc>());
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN InputRowBlocOnlineDetailedInputArea is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => InputRowBlocOnlineDetailedInputArea.getIt(dartsDisplayerBloc),
          throwsA(anything),
        );
      });

      test(
          'GIVEN InputRowBlocOnlineDetailedInputArea is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance =
            InputRowBlocOnlineDetailedInputArea.injectable(
          playOnlineService,
          [
            dartsDisplayerBloc,
          ],
        );
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = InputRowBlocOnlineDetailedInputArea.getIt(
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
          () => InputRowBlocOnlineDetailedInputArea.injectable(
            playOnlineService,
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
        final underTest = InputRowBlocOnlineDetailedInputArea.injectable(
          playOnlineService,
          otherDependencies,
        );

        // Assert
        expect(underTest, isA<InputRowBloc>());
      });
    });
  });
}
