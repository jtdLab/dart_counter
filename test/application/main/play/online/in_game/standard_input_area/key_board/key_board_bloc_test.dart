import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/core/play/online/play_online_cubit.dart';
import 'package:dart_counter/application/main/play/online/in_game/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/main/play/online/in_game/standard_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/advanced_settings.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:dart_counter/domain/play/online/online_player_snapshot.dart';
import 'package:dart_counter/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockOnlinePlayerSnapshot extends Mock implements OnlinePlayerSnapshot {}

class MockOnlineGameSnapshot extends Mock implements OnlineGameSnapshot {}

class MockDartUtils extends Mock implements IDartUtils {}

class MockPlayOnlineCubit extends MockCubit<PlayState<OnlineGameSnapshot>>
    implements PlayOnlineCubit {}

class MockAdvancedSettingsBloc
    extends MockBloc<AdvancedSettingsEvent, AdvancedSettingsState>
    implements AdvancedSettingsBloc {}

class MockInputRowBlocOnlineStandardInputArea
    extends MockBloc<InputRowEvent, int>
    implements InputRowBlocOnlineStandardInputArea {}

void main() {
  late MockOnlinePlayerSnapshot onlinePlayerSnapshot;
  late MockOnlineGameSnapshot onlineGameSnapshot;
  late MockDartUtils dartUtils;
  late MockPlayOnlineCubit playOnlineCubit;
  late AdvancedSettingsBloc advancedSettingsBloc;
  late MockInputRowBlocOnlineStandardInputArea inputRowBloc;

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
    playOnlineCubit = MockPlayOnlineCubit();
    whenListen(
      playOnlineCubit,
      Stream.value(PlayState.active(snapshot: onlineGameSnapshot)),
      initialState: PlayState.active(snapshot: onlineGameSnapshot),
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
    inputRowBloc = MockInputRowBlocOnlineStandardInputArea();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test(
          'Is subclass of KeyBoardBloc and takes IDartUtils, PlayOnlineCubit, AdvancedSettingsBloc and InputRowBlocOnlineStandardInputArea as a param.',
          () {
        final underTest = KeyBoardBlocOnlineStandardInputArea(
          dartUtils,
          playOnlineCubit,
          advancedSettingsBloc,
          inputRowBloc,
        );

        expect(underTest, isA<KeyBoardBloc>());
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN KeyBoardBlocOnlineStandardInputArea is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => KeyBoardBlocOnlineStandardInputArea.getIt(
            playOnlineCubit,
            advancedSettingsBloc,
            inputRowBloc,
          ),
          throwsA(anything),
        );
      });

      test(
          'GIVEN KeyBoardBlocOnlineStandardInputArea is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance =
            KeyBoardBlocOnlineStandardInputArea.injectable(
          dartUtils,
          [
            playOnlineCubit,
            advancedSettingsBloc,
            inputRowBloc,
          ],
        );
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = KeyBoardBlocOnlineStandardInputArea.getIt(
          playOnlineCubit,
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
          'GIVEN otherDependencies is not [PlayOnlineCubit, AdvancedSettingsBloc, InputRowBlocOfflineStandardInputArea] '
          'THEN throw error.', () {
        // Arrange
        final otherDependencies = [true, '1', 44];

        // Act & Assert
        expect(
          () => KeyBoardBlocOnlineStandardInputArea.injectable(
            dartUtils,
            otherDependencies,
          ),
          throwsA(anything),
        );
      });

      test(
          'GIVEN otherDependencies is [PlayOnlineCubit, AdvancedSettingsBloc, InputRowBlocOfflineStandardInputArea] '
          'THEN is subclass of InputRowBloc.', () {
        // Arrange
        final otherDependencies = [
          playOnlineCubit,
          advancedSettingsBloc,
          inputRowBloc,
        ];

        // Act
        final underTest = KeyBoardBlocOnlineStandardInputArea.injectable(
          dartUtils,
          otherDependencies,
        );

        // Assert
        expect(underTest, isA<KeyBoardBloc>());
      });
    });
  });
}
