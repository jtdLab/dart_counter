import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class KeyBoardBlocOnlineDetailedInputArea extends KeyBoardBloc {
  KeyBoardBlocOnlineDetailedInputArea(
    IDartUtils dartUtils,
    IPlayOnlineService playOnlineService,
    AdvancedSettingsBloc advancedSettingsBloc,
    DartsDisplayerBloc dartsDisplayerBloc,
  ) : super(
          dartUtils,
          playOnlineService,
          advancedSettingsBloc,
          dartsDisplayerBloc,
        );
}
