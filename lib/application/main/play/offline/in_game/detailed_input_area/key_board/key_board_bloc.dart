import 'package:dart_counter/application/main/play/offline/in_game/in_offline_game_bloc.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/key_board/key_board_bloc.dart';

// TODO name + doc

@injectable
class KeyBoardBlocOfflineDetailedInputArea extends KeyBoardBloc {
  KeyBoardBlocOfflineDetailedInputArea(
    IDartUtils dartUtils,
    AdvancedSettingsBloc advancedSettingsBloc,
    InOfflineGameBloc inOfflineGameBloc,
    DartsDisplayerBloc dartsDisplayerBloc,
  ) : super(
          dartUtils,
          advancedSettingsBloc,
          inOfflineGameBloc,
          dartsDisplayerBloc,
        );

  /// Returns instance registered inside getIt.
  factory KeyBoardBlocOfflineDetailedInputArea.getIt(
    AdvancedSettingsBloc advancedSettingsBloc,
    InOfflineGameBloc inOfflineGameBloc,
    DartsDisplayerBloc dartsDisplayerBloc,
  ) =>
      getIt<KeyBoardBlocOfflineDetailedInputArea>(
        param1: [advancedSettingsBloc, inOfflineGameBloc, dartsDisplayerBloc],
      );

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of `AdvancedSettingsBloc`
  ///
  /// 2. Instance of `InOfflineGameBloc`
  ///
  /// 3. Instance of `DartsDisplayerBloc`
  @factoryMethod
  factory KeyBoardBlocOfflineDetailedInputArea.injectable(
    IDartUtils dartUtils,
    @factoryParam List<Object> otherDependencies,
  ) =>
      KeyBoardBlocOfflineDetailedInputArea(
        dartUtils,
        otherDependencies[0] as AdvancedSettingsBloc,
        otherDependencies[1] as InOfflineGameBloc,
        otherDependencies[2] as DartsDisplayerBloc,
      );
}
