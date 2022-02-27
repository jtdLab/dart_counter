import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/core/play/offline/play_offline_cubit.dart';
import 'package:dart_counter/application/main/play/offline/in_game/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/main/play/offline/in_game/standard_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/advanced_settings.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/domain/play/offline/offline_game_snapshot.dart';
import 'package:dart_counter/domain/play/offline/offline_player_snapshot.dart';
import 'package:dart_counter/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockOfflinePlayerSnapshot extends Mock implements OfflinePlayerSnapshot {}

class MockOfflineGameSnapshot extends Mock implements OfflineGameSnapshot {}

class MockDartUtils extends Mock implements IDartUtils {}

class MockPlayOfflineCubit extends MockCubit<PlayState<OfflineGameSnapshot>>
    implements PlayOfflineCubit {}

class MockAdvancedSettingsBloc
    extends MockBloc<AdvancedSettingsEvent, AdvancedSettingsState>
    implements AdvancedSettingsBloc {}

class MockInputRowBlocOfflineStandardInputArea
    extends MockBloc<InputRowEvent, int>
    implements InputRowBlocOfflineStandardInputArea {}

void main() {
  late MockOfflinePlayerSnapshot offlinePlayerSnapshot;
  late MockOfflineGameSnapshot offlineGameSnapshot;
  late MockDartUtils dartUtils;
  late MockPlayOfflineCubit playOfflineCubit;
  late AdvancedSettingsBloc advancedSettingsBloc;
  late MockInputRowBlocOfflineStandardInputArea inputRowBloc;

  setUpAll(() {
    registerFallbackValue(const KtList<Dart>.empty());

    offlinePlayerSnapshot = MockOfflinePlayerSnapshot();
    when(() => offlinePlayerSnapshot.pointsLeft).thenReturn(301);
    offlineGameSnapshot = MockOfflineGameSnapshot();
    when(() => offlineGameSnapshot.currentTurn()).thenReturn(
      offlinePlayerSnapshot,
    );
    dartUtils = MockDartUtils();
    when(
      () => dartUtils.validateDarts(
        pointsLeft: any(named: 'pointsLeft'),
        darts: any(named: 'darts'),
      ),
    ).thenReturn(true);
    playOfflineCubit = MockPlayOfflineCubit();
    whenListen(
      playOfflineCubit,
      Stream.value(PlayState.active(gameSnapshot: offlineGameSnapshot)),
      initialState: PlayState.active(gameSnapshot: offlineGameSnapshot),
    );
    advancedSettingsBloc = MockAdvancedSettingsBloc();
    final advancedSettings = AdvancedSettings.dummy();
    whenListen(
      advancedSettingsBloc,
      Stream.value(
        AdvancedSettingsState.inGame(
          advancedSettings: KtList.from([advancedSettings]),
          currentTurnAdvancedSettings: advancedSettings,
        ),
      ),
      initialState: AdvancedSettingsState.inGame(
        advancedSettings: KtList.from([advancedSettings]),
        currentTurnAdvancedSettings: advancedSettings,
      ),
    );
    inputRowBloc = MockInputRowBlocOfflineStandardInputArea();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test(
          'Is subclass of KeyBoardBloc and takes IDartUtils, PlayOfflineCubit, AdvancedSettingsBloc and InputRowBlocOfflineStandardInputArea as a param.',
          () {
        final underTest = KeyBoardBlocOfflineStandardInputArea(
          dartUtils,
          playOfflineCubit,
          advancedSettingsBloc,
          inputRowBloc,
        );

        expect(underTest, isA<KeyBoardBloc>());
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN KeyBoardBlocOfflineStandardInputArea is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => KeyBoardBlocOfflineStandardInputArea.getIt(
            playOfflineCubit,
            advancedSettingsBloc,
            inputRowBloc,
          ),
          throwsA(anything),
        );
      });

      test(
          'GIVEN KeyBoardBlocOfflineStandardInputArea is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance =
            KeyBoardBlocOfflineStandardInputArea.injectable(
          dartUtils,
          [
            playOfflineCubit,
            advancedSettingsBloc,
            inputRowBloc,
          ],
        );
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = KeyBoardBlocOfflineStandardInputArea.getIt(
          playOfflineCubit,
          advancedSettingsBloc,
          inputRowBloc,
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
          'GIVEN otherDependencies is not [PlayOfflineCubit, AdvancedSettingsBloc, InputRowBlocOfflineStandardInputArea] '
          'THEN throw error.', () {
        // Arrange
        final otherDependencies = [true, '1', 44];

        // Act & Assert
        expect(
          () => KeyBoardBlocOfflineStandardInputArea.injectable(
            dartUtils,
            otherDependencies,
          ),
          throwsA(anything),
        );
      });

      test(
          'GIVEN otherDependencies is [PlayOfflineCubit, AdvancedSettingsBloc, InputRowBlocOfflineStandardInputArea] '
          'THEN is subclass of InputRowBloc.', () {
        // Arrange
        final otherDependencies = [
          playOfflineCubit,
          advancedSettingsBloc,
          inputRowBloc,
        ];

        // Act
        final underTest = KeyBoardBlocOfflineStandardInputArea.injectable(
          dartUtils,
          otherDependencies,
        );

        // Assert
        expect(underTest, isA<KeyBoardBloc>());
      });
    });
  });
}
