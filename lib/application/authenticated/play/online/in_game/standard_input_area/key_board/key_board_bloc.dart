import 'package:dart_counter/application/authenticated/play/online/in_game/in_online_game_bloc.dart';
import 'package:dart_counter/application/authenticated/play/online/in_game/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/in_game/standard_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/authenticated/play/shared/in_game/standard_input_area/key_board/key_board_bloc.dart';

// TODO name + doc
@injectable
class KeyBoardBlocOnlineStandardInputArea extends KeyBoardBloc {
  KeyBoardBlocOnlineStandardInputArea(
    IDartUtils dartUtils,
    AdvancedSettingsBloc advancedSettingsBloc,
    InOnlineGameBloc inOnlineGameBloc,
    InputRowBlocOnlineStandardInputArea inputRowBloc,
  ) : super(
          dartUtils,
          advancedSettingsBloc,
          inOnlineGameBloc,
          inputRowBloc,
        );

  /// Returns instance registered inside getIt.
  factory KeyBoardBlocOnlineStandardInputArea.getIt(
    AdvancedSettingsBloc advancedSettingsBloc,
    InOnlineGameBloc inOnlineGameBloc,
    InputRowBlocOnlineStandardInputArea inputRowBloc,
  ) =>
      getIt<KeyBoardBlocOnlineStandardInputArea>(
        param1: [advancedSettingsBloc, inOnlineGameBloc, inputRowBloc],
      );

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of `AdvancedSettingsBloc`
  ///
  /// 2. Instance of `InOnlineGameBloc`
  ///
  /// 3. Instance of `InputRowBlocOnlineStandardInputArea`
  @factoryMethod
  factory KeyBoardBlocOnlineStandardInputArea.injectable(
    IDartUtils dartUtils,
    @factoryParam List<Object> otherDependencies,
  ) =>
      KeyBoardBlocOnlineStandardInputArea(
        dartUtils,
        otherDependencies[0] as AdvancedSettingsBloc,
        otherDependencies[1] as InOnlineGameBloc,
        otherDependencies[2] as InputRowBlocOnlineStandardInputArea,
      );
}
