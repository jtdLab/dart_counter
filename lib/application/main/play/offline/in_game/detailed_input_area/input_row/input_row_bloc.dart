import 'package:dart_counter/application/main/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/input_row/input_row_bloc.dart';

// TODO name + doc

@injectable
class InputRowBlocOfflineDetailedInputArea extends InputRowBloc {
  // Constructor for testing
  InputRowBlocOfflineDetailedInputArea(
    IPlayOfflineService playOfflineService,
    DartsDisplayerBloc dartsDisplayerBloc,
  ) : super(
          playOfflineService,
          dartsDisplayerBloc,
        );

  /// Returns instance registered inside getIt.
  factory InputRowBlocOfflineDetailedInputArea.getIt(
    DartsDisplayerBloc dartsDisplayerBloc,
  ) =>
      getIt<InputRowBlocOfflineDetailedInputArea>(
        param1: [dartsDisplayerBloc],
      );

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of [DartsDisplayerBloc]
  @factoryMethod
  factory InputRowBlocOfflineDetailedInputArea.injectable(
    IPlayOfflineService playOfflineService,
    @factoryParam List<Object>? otherDependencies,
  ) =>
      InputRowBlocOfflineDetailedInputArea(
        playOfflineService,
        otherDependencies![0] as DartsDisplayerBloc,
      );
}
