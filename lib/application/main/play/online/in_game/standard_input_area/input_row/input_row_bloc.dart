import 'package:dart_counter/application/main/core/play/online/play_online_cubit.dart';
import 'package:dart_counter/application/main/play/online/in_game/in_online_game_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/input_row/input_row_bloc.dart';

// TODO name + doc

@injectable
class InputRowBlocOnlineStandardInputArea extends InputRowBloc {
  InputRowBlocOnlineStandardInputArea(
    IDartUtils dartUtils,
    IPlayOnlineService playOnlineService,
    PlayOnlineCubit playOnlineCubit,
    InOnlineGameBloc inOnlineGameBloc,
  ) : super(
          dartUtils,
          playOnlineService,
          playOnlineCubit,
          inOnlineGameBloc,
        );

  /// Returns instance registered inside getIt.
  factory InputRowBlocOnlineStandardInputArea.getIt(
    PlayOnlineCubit playOnlineCubit,
    InOnlineGameBloc inOnlineGameBloc,
  ) =>
      getIt<InputRowBlocOnlineStandardInputArea>(
        param1: [playOnlineCubit, inOnlineGameBloc],
      );

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of [PlayOnlineCubit]
  ///
  /// 2. Instance of [InOnlineGameBloc]
  @factoryMethod
  factory InputRowBlocOnlineStandardInputArea.injectable(
    IDartUtils dartUtils,
    IPlayOnlineService playOnlineService,
    @factoryParam List<Object>? otherDependencies,
  ) =>
      InputRowBlocOnlineStandardInputArea(
        dartUtils,
        playOnlineService,
        otherDependencies![0] as PlayOnlineCubit,
        otherDependencies[1] as InOnlineGameBloc,
      );
}
