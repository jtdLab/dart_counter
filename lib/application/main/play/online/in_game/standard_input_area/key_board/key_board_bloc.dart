import 'package:dart_counter/application/main/play/online/in_game/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class KeyBoardBlocOnlineStandardInputArea extends KeyBoardBloc {
  KeyBoardBlocOnlineStandardInputArea(
    IDartUtils dartUtils,
    IPlayOnlineService playOnlineService,
    AdvancedSettingsBloc advancedSettingsBloc,
    InputRowBlocOnlineStandardInputArea inputRowBloc,
  ) : super(
          dartUtils,
          playOnlineService,
          advancedSettingsBloc,
          inputRowBloc,
        );
}
