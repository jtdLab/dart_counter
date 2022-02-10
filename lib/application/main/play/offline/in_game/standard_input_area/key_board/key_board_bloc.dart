import 'package:dart_counter/application/main/play/offline/in_game/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/key_board/key_board_bloc.dart';

@injectable
class KeyBoardBlocOfflineStandardInputArea extends KeyBoardBloc {
  KeyBoardBlocOfflineStandardInputArea(
    IDartUtils dartUtils,
    IPlayOfflineService playOfflineService,
    AdvancedSettingsBloc advancedSettingsBloc,
    InputRowBlocOfflineStandardInputArea inputRowBloc,
  ) : super(
          dartUtils,
          playOfflineService,
          advancedSettingsBloc,
          inputRowBloc,
        );
}
