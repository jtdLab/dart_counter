import 'package:dart_counter/application/authenticated/play/online/in_game/in_online_game_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/in_game/detailed_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/authenticated/play/shared/in_game/detailed_input_area/key_board/key_board_bloc.dart';

// TODO name + doc

@injectable
class KeyBoardBlocOnlineDetailedInputArea extends KeyBoardBloc {
  KeyBoardBlocOnlineDetailedInputArea(
    IDartUtils dartUtils,
    AdvancedSettingsBloc advancedSettingsBloc,
    InOnlineGameBloc inOnlineGameBloc,
    DartsDisplayerBloc dartsDisplayerBloc,
  ) : super(
          dartUtils,
          advancedSettingsBloc,
          inOnlineGameBloc,
          dartsDisplayerBloc,
        );

  /// Returns instance registered inside getIt.
  factory KeyBoardBlocOnlineDetailedInputArea.getIt(
    AdvancedSettingsBloc advancedSettingsBloc,
    InOnlineGameBloc inOnlineGameBloc,
    DartsDisplayerBloc dartsDisplayerBloc,
  ) =>
      getIt<KeyBoardBlocOnlineDetailedInputArea>(
        param1: [advancedSettingsBloc, inOnlineGameBloc, dartsDisplayerBloc],
      );

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of `AdvancedSettingsBloc`
  ///
  /// 2. Instance of `InOnlineGameBloc`
  ///
  /// 3. Instance of `DartsDisplayerBloc`
  @factoryMethod
  factory KeyBoardBlocOnlineDetailedInputArea.injectable(
    IDartUtils dartUtils,
    @factoryParam List<Object> otherDependencies,
  ) =>
      KeyBoardBlocOnlineDetailedInputArea(
        dartUtils,
        otherDependencies[0] as AdvancedSettingsBloc,
        otherDependencies[1] as InOnlineGameBloc,
        otherDependencies[2] as DartsDisplayerBloc,
      );
}
