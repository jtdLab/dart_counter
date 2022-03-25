import 'package:dart_counter/application/authenticated/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/in_game/detailed_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/authenticated/play/shared/in_game/detailed_input_area/input_row/input_row_bloc.dart';

// TODO name + doc

@injectable
class InputRowBlocOnlineDetailedInputArea extends InputRowBloc {
  InputRowBlocOnlineDetailedInputArea(
    IPlayOnlineService playOnlineService,
    DartsDisplayerBloc dartsDisplayerBloc,
  ) : super(
          playOnlineService,
          dartsDisplayerBloc,
        );

  /// Returns instance registered inside getIt.
  factory InputRowBlocOnlineDetailedInputArea.getIt(
    DartsDisplayerBloc dartsDisplayerBloc,
  ) =>
      getIt<InputRowBlocOnlineDetailedInputArea>(
        param1: [dartsDisplayerBloc],
      );

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of `DartsDisplayerBloc`
  @factoryMethod
  factory InputRowBlocOnlineDetailedInputArea.injectable(
    IPlayOnlineService playOnlineService,
    @factoryParam List<Object> otherDependencies,
  ) =>
      InputRowBlocOnlineDetailedInputArea(
        playOnlineService,
        otherDependencies[0] as DartsDisplayerBloc,
      );
}
