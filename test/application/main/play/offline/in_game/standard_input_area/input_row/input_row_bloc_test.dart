import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/core/play/offline/play_offline_cubit.dart';
import 'package:dart_counter/application/main/play/offline/in_game/in_offline_game_bloc.dart';
import 'package:dart_counter/application/main/play/offline/in_game/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/domain/play/offline/offline_game_snapshot.dart';
import 'package:dart_counter/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDartUtils extends Mock implements IDartUtils {}

class MockPlayOfflineService extends Mock implements IPlayOfflineService {}

class MockInOfflineGameBloc extends MockBloc<InGameEvent, InGameState>
    implements InOfflineGameBloc {}

class MockPlayOfflineCubit extends MockCubit<PlayState<OfflineGameSnapshot>>
    implements PlayOfflineCubit {}

void main() {
  late MockDartUtils dartUtils;
  late MockPlayOfflineService playOfflineService;
  late MockInOfflineGameBloc inOfflineGameBloc;
  late MockPlayOfflineCubit playOfflineCubit;

  setUpAll(() {
    dartUtils = MockDartUtils();
    playOfflineService = MockPlayOfflineService();
    inOfflineGameBloc = MockInOfflineGameBloc();
    playOfflineCubit = MockPlayOfflineCubit();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test(
          'Is subclass of InputRowBloc and takes IDartUtils, IPlayOfflineService, PlayOfflineCubit and InOfflineGameBloc as a param.',
          () {
        final underTest = InputRowBlocOfflineStandardInputArea(
          dartUtils,
          playOfflineService,
          playOfflineCubit,
          inOfflineGameBloc,
        );

        expect(underTest, isA<InputRowBloc>());
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN InputRowBlocOfflineStandardInputArea is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => InputRowBlocOfflineStandardInputArea.getIt(
            playOfflineCubit,
            inOfflineGameBloc,
          ),
          throwsA(anything),
        );
      });

      test(
          'GIVEN InputRowBlocOfflineStandardInputArea is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance =
            InputRowBlocOfflineStandardInputArea.injectable(
          dartUtils,
          playOfflineService,
          [
            playOfflineCubit,
            inOfflineGameBloc,
          ],
        );
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = InputRowBlocOfflineStandardInputArea.getIt(
          playOfflineCubit,
          inOfflineGameBloc,
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
          'GIVEN otherDependencies is not [PlayOfflineCubit, InOfflineGameBloc] '
          'THEN throw error.', () {
        // Arrange
        final otherDependencies = [true];

        // Act & Assert
        expect(
          () => InputRowBlocOfflineStandardInputArea.injectable(
            dartUtils,
            playOfflineService,
            otherDependencies,
          ),
          throwsA(anything),
        );
      });

      test(
          'GIVEN otherDependencies is [PlayOfflineCubit, InOfflineGameBloc] '
          'THEN is subclass of InputRowBloc.', () {
        // Arrange
        final otherDependencies = [
          playOfflineCubit,
          inOfflineGameBloc,
        ];

        // Act
        final underTest = InputRowBlocOfflineStandardInputArea.injectable(
          dartUtils,
          playOfflineService,
          otherDependencies,
        );

        // Assert
        expect(underTest, isA<InputRowBloc>());
      });
    });
  });
}
