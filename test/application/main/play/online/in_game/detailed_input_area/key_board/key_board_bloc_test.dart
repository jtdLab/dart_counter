import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/online/in_game/detailed_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/advanced_settings.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:dart_counter/domain/play/online/online_player_snapshot.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockOnlinePlayerSnapshot extends Mock implements OnlinePlayerSnapshot {}

class MockOnlineGameSnapshot extends Mock implements OnlineGameSnapshot {}

class MockDartUtils extends Mock implements IDartUtils {}

class MockPlayOnlineService extends Mock implements IPlayOnlineService {}

class MockAdvancedSettingsBloc
    extends MockBloc<AdvancedSettingsEvent, AdvancedSettingsState>
    implements AdvancedSettingsBloc {}

class MockDartsDisplayerBloc
    extends MockBloc<DartsDisplayerEvent, DartsDisplayerState>
    implements DartsDisplayerBloc {}

void main() {
  late MockOnlinePlayerSnapshot onlinePlayerSnapshot;
  late MockOnlineGameSnapshot onlineGameSnapshot;
  late MockDartUtils dartUtils;
  late MockPlayOnlineService playOnlineService;
  late AdvancedSettingsBloc advancedSettingsBloc;
  late MockDartsDisplayerBloc dartsDisplayerBloc;

  setUpAll(() {
    registerFallbackValue(const KtList<Dart>.empty());

    onlinePlayerSnapshot = MockOnlinePlayerSnapshot();
    when(() => onlinePlayerSnapshot.pointsLeft).thenReturn(301);
    onlineGameSnapshot = MockOnlineGameSnapshot();
    when(() => onlineGameSnapshot.currentTurn()).thenReturn(
      onlinePlayerSnapshot,
    );
    dartUtils = MockDartUtils();
    when(
      () => dartUtils.validateDarts(
        pointsLeft: any(named: 'pointsLeft'),
        darts: any(named: 'darts'),
      ),
    ).thenReturn(true);
    playOnlineService = MockPlayOnlineService();
    when(() => playOnlineService.getGame()).thenReturn(onlineGameSnapshot);
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
      'Is subclass of KeyBoardBloc and takes IDartUtils, IPlayOnlineService, AdvancedSettingsBloc and DartsDisplayerBloc as a param.',
      () {
    final underTest = KeyBoardBlocOnlineDetailedInputArea(
      dartUtils,
      playOnlineService,
      advancedSettingsBloc,
      dartsDisplayerBloc,
    );

    expect(underTest, isA<KeyBoardBloc>());
  });
}
