import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/core/play/online/play_online_cubit.dart';
import 'package:dart_counter/application/authenticated/play/online/in_game/in_online_game_bloc.dart';
import 'package:dart_counter/application/authenticated/play/online/in_game/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:dart_counter/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDartUtils extends Mock implements IDartUtils {}

class MockPlayOnlineService extends Mock implements IPlayOnlineService {}

class MockPlayOnlineCubit extends MockCubit<PlayState<OnlineGameSnapshot>>
    implements PlayOnlineCubit {}

class MockInOnlineGameBloc extends MockBloc<InGameEvent, InGameState>
    implements InOnlineGameBloc {}

void main() {
  late MockDartUtils dartUtils;
  late MockPlayOnlineService playOnlineService;
  late MockPlayOnlineCubit playOnlineCubit;
  late MockInOnlineGameBloc inOnlineGameBloc;

  setUpAll(() {
    dartUtils = MockDartUtils();
    playOnlineService = MockPlayOnlineService();
    playOnlineCubit = MockPlayOnlineCubit();
    inOnlineGameBloc = MockInOnlineGameBloc();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test(
          'Is subclass of InputRowBloc and takes IDartUtils, IPlayOnlineService, PlayOnlineCubit and InOnlineGameBloc as a param.',
          () {
        final underTest = InputRowBlocOnlineStandardInputArea(
          dartUtils,
          playOnlineService,
          playOnlineCubit,
          inOnlineGameBloc,
        );

        expect(underTest, isA<InputRowBloc>());
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN InputRowBlocOnlineStandardInputArea is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => InputRowBlocOnlineStandardInputArea.getIt(
            playOnlineCubit,
            inOnlineGameBloc,
          ),
          throwsA(anything),
        );
      });

      test(
          'GIVEN InputRowBlocOnlineStandardInputArea is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance =
            InputRowBlocOnlineStandardInputArea.injectable(
          dartUtils,
          playOnlineService,
          [
            playOnlineCubit,
            inOnlineGameBloc,
          ],
        );
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = InputRowBlocOnlineStandardInputArea.getIt(
          playOnlineCubit,
          inOnlineGameBloc,
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
          'GIVEN otherDependencies is not [PlayOnlineCubit, InOnlineGameBloc] '
          'THEN throw error.', () {
        // Arrange
        final otherDependencies = [true];

        // Act & Assert
        expect(
          () => InputRowBlocOnlineStandardInputArea.injectable(
            dartUtils,
            playOnlineService,
            otherDependencies,
          ),
          throwsA(anything),
        );
      });

      test(
          'GIVEN otherDependencies is [PlayOnlineCubit, InOnlineGameBloc] '
          'THEN is subclass of InputRowBloc.', () {
        // Arrange
        final otherDependencies = [
          playOnlineCubit,
          inOnlineGameBloc,
        ];

        // Act
        final underTest = InputRowBlocOnlineStandardInputArea.injectable(
          dartUtils,
          playOnlineService,
          otherDependencies,
        );

        // Assert
        expect(underTest, isA<InputRowBloc>());
      });
    });
  });
}
