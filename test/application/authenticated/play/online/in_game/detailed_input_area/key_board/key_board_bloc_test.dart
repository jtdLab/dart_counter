import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/core/play/online/play_online_cubit.dart';
import 'package:dart_counter/application/authenticated/play/online/in_game/detailed_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/advanced_settings.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:dart_counter/domain/play/online/online_player_snapshot.dart';
import 'package:dart_counter/core/injection.dart';
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

class MockDartsDisplayerBloc
    extends MockBloc<DartsDisplayerEvent, DartsDisplayerState>
    implements DartsDisplayerBloc {}

void main() {
  late MockOnlinePlayerSnapshot onlinePlayerSnapshot;
  late MockOnlineGameSnapshot onlineGameSnapshot;
  late MockDartUtils dartUtils;
  late MockPlayOnlineCubit playOnlineCubit;
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
    dartsDisplayerBloc = MockDartsDisplayerBloc();
    whenListen(
      dartsDisplayerBloc,
      Stream.value(const DartsDisplayerState.empty()),
      initialState: const DartsDisplayerState.empty(),
    );
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test(
          'Is subclass of KeyBoardBloc and takes IDartUtils, PlayOnlineCubit, AdvancedSettingsBloc and DartsDisplayerBloc as a param.',
          () {
        final underTest = KeyBoardBlocOnlineDetailedInputArea(
          dartUtils,
          playOnlineCubit,
          advancedSettingsBloc,
          dartsDisplayerBloc,
        );

        expect(underTest, isA<KeyBoardBloc>());
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN KeyBoardBlocOnlineDetailedInputArea is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => KeyBoardBlocOnlineDetailedInputArea.getIt(
            playOnlineCubit,
            advancedSettingsBloc,
            dartsDisplayerBloc,
          ),
          throwsA(anything),
        );
      });

      test(
          'GIVEN KeyBoardBlocOnlineDetailedInputArea is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance =
            KeyBoardBlocOnlineDetailedInputArea.injectable(
          dartUtils,
          [
            playOnlineCubit,
            advancedSettingsBloc,
            dartsDisplayerBloc,
          ],
        );
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = KeyBoardBlocOnlineDetailedInputArea.getIt(
          playOnlineCubit,
          advancedSettingsBloc,
          dartsDisplayerBloc,
        );

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        // Reset DI-container
        await getIt.reset();
      });
    });

    group('#Injectable#', () {
      test(
          'GIVEN otherDependencies is not [PlayOnlineCubit, AdvancedSettingsBloc, DartsDisplayerBloc] '
          'THEN throw error.', () {
        // Arrange
        final otherDependencies = [true, 88, 'gjf'];

        // Act & Assert
        expect(
          () => KeyBoardBlocOnlineDetailedInputArea.injectable(
            dartUtils,
            otherDependencies,
          ),
          throwsA(anything),
        );
      });

      test(
          'GIVEN otherDependencies is [PlayOnlineCubit, AdvancedSettingsBloc, DartsDisplayerBloc] '
          'THEN is subclass of InputRowBloc.', () {
        // Arrange
        final otherDependencies = [
          playOnlineCubit,
          advancedSettingsBloc,
          dartsDisplayerBloc,
        ];

        // Act
        final underTest = KeyBoardBlocOnlineDetailedInputArea.injectable(
          dartUtils,
          otherDependencies,
        );

        // Assert
        expect(underTest, isA<KeyBoardBloc>());
      });
    });
  });
}
