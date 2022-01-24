import 'package:dart_counter/application/main/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:injectable/injectable.dart';

// TODO name

@injectable
class InputRowBlocOnlineDetailedInputArea extends InputRowBloc {
  InputRowBlocOnlineDetailedInputArea(
    IPlayOnlineService playOnlineService,
    DartsDisplayerBloc dartsDisplayerBloc,
  ) : super(
          playOnlineService,
          dartsDisplayerBloc,
        );
}
