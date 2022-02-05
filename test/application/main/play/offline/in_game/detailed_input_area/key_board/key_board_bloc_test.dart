import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/offline/in_game/detailed_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/advanced_settings.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/domain/play/offline/offline_game_snapshot.dart';
import 'package:dart_counter/domain/play/offline/offline_player_snapshot.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockOfflinePlayerSnapshot extends Mock implements OfflinePlayerSnapshot {}

class MockOfflineGameSnapshot extends Mock implements OfflineGameSnapshot {}

class MockDartUtils extends Mock implements IDartUtils {}

class MockPlayOfflineService extends Mock implements IPlayOfflineService {}

class MockAdvancedSettingsBloc
    extends MockBloc<AdvancedSettingsEvent, AdvancedSettingsState>
    implements AdvancedSettingsBloc {}

class MockDartsDisplayerBloc
    extends MockBloc<DartsDisplayerEvent, DartsDisplayerState>
    implements DartsDisplayerBloc {}

void main() {
  late MockOfflinePlayerSnapshot offlinePlayerSnapshot;
  late MockOfflineGameSnapshot offlineGameSnapshot;
  late MockDartUtils dartUtils;
  late MockPlayOfflineService playOfflineService;
  late AdvancedSettingsBloc advancedSettingsBloc;
  late MockDartsDisplayerBloc dartsDisplayerBloc;

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
    playOfflineService = MockPlayOfflineService();
    when(() => playOfflineService.getGame()).thenReturn(offlineGameSnapshot);
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
    dartsDisplayerBloc = MockDartsDisplayerBloc();
    whenListen(
      dartsDisplayerBloc,
      Stream.value(const DartsDisplayerState.empty()),
      initialState: const DartsDisplayerState.empty(),
    );
  });

  test(
      'Is subclass of KeyBoardBloc and takes IDartUtils, IPlayOfflineService, AdvancedSettingsBloc and DartsDisplayerBloc as a param.',
      () {
    final underTest = KeyBoardBlocOfflineDetailedInputArea(
      dartUtils,
      playOfflineService,
      advancedSettingsBloc,
      dartsDisplayerBloc,
    );

    expect(underTest, isA<KeyBoardBloc>());
  });
}
