import 'package:dart_counter/application/main/play/online/in_game/in_online_game_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/input_row/input_row_bloc.dart';

// TODO name + doc

@injectable
class InputRowBlocOnlineStandardInputArea extends InputRowBloc {
  InputRowBlocOnlineStandardInputArea(
    IDartUtils dartUtils,
    IPlayOnlineService playOnlineService,
    InOnlineGameBloc inOnlineGameBloc,
  ) : super(
          dartUtils,
          playOnlineService,
          inOnlineGameBloc,
        );
}
