import 'package:dart_counter/application/authenticated/play/offline/in_game/in_offline_game_bloc.dart';
import 'package:dart_counter/application/authenticated/play/offline/in_game/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/in_game/standard_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/authenticated/play/shared/in_game/standard_input_area/key_board/key_board_bloc.dart';

@injectable
class KeyBoardBlocOfflineStandardInputArea extends KeyBoardBloc {
  KeyBoardBlocOfflineStandardInputArea(
    IDartUtils dartUtils,
    AdvancedSettingsBloc advancedSettingsBloc,
    InOfflineGameBloc inOfflineGameBloc,
    InputRowBlocOfflineStandardInputArea inputRowBloc,
  ) : super(
          dartUtils,
          advancedSettingsBloc,
          inOfflineGameBloc,
          inputRowBloc,
        );

  /// Returns instance registered inside getIt.
  factory KeyBoardBlocOfflineStandardInputArea.getIt(
    AdvancedSettingsBloc advancedSettingsBloc,
    InOfflineGameBloc inOfflineGameBloc,
    InputRowBlocOfflineStandardInputArea inputRowBloc,
  ) =>
      getIt<KeyBoardBlocOfflineStandardInputArea>(
        param1: [advancedSettingsBloc, inOfflineGameBloc, inputRowBloc],
      );

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///

  ///
  /// 1. Instance of `AdvancedSettingsBloc`
  ///
  /// 2. Instance of `InOfflineGameBloc`
  ///
  /// 3. Instance of `InputRowBlocOfflineStandardInputArea`
  @factoryMethod
  factory KeyBoardBlocOfflineStandardInputArea.injectable(
    IDartUtils dartUtils,
    @factoryParam List<Object> otherDependencies,
  ) =>
      KeyBoardBlocOfflineStandardInputArea(
        dartUtils,
        otherDependencies[0] as AdvancedSettingsBloc,
        otherDependencies[1] as InOfflineGameBloc,
        otherDependencies[2] as InputRowBlocOfflineStandardInputArea,
      );
}
