import 'package:dart_counter/application/main/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:injectable/injectable.dart';

// TODO name

@injectable
class InputRowBlocOfflineDetailedInputArea extends InputRowBloc {
  InputRowBlocOfflineDetailedInputArea(
    IPlayOfflineService playOfflineService,
    DartsDisplayerBloc dartsDisplayerBloc,
  ) : super(
          playOfflineService,
          dartsDisplayerBloc,
        );
}
