import 'package:dart_counter/application/main/core/play/offline/play_offline_cubit.dart';
import 'package:dart_counter/application/main/play/offline/in_game/in_offline_game_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/input_row/input_row_bloc.dart';

// TODO name + doc

@injectable
class InputRowBlocOfflineStandardInputArea extends InputRowBloc {
  InputRowBlocOfflineStandardInputArea(
    IDartUtils dartUtils,
    IPlayOfflineService playOfflineService,
    PlayOfflineCubit playOfflineCubit,
    InOfflineGameBloc inOfflineGameBloc,
  ) : super(
          dartUtils,
          playOfflineService,
          playOfflineCubit,
          inOfflineGameBloc,
        );

  /// Returns instance registered inside getIt.
  factory InputRowBlocOfflineStandardInputArea.getIt(
    PlayOfflineCubit playOfflineCubit,
    InOfflineGameBloc inOfflineGameBloc,
  ) =>
      getIt<InputRowBlocOfflineStandardInputArea>(
        param1: [playOfflineCubit, inOfflineGameBloc],
      );

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of `PlayOfflineCubit`
  ///
  /// 2. Instance of `InOfflineGameBloc`
  @factoryMethod
  factory InputRowBlocOfflineStandardInputArea.injectable(
    IDartUtils dartUtils,
    IPlayOfflineService playOfflineService,
    @factoryParam List<Object> otherDependencies,
  ) =>
      InputRowBlocOfflineStandardInputArea(
        dartUtils,
        playOfflineService,
        otherDependencies[0] as PlayOfflineCubit,
        otherDependencies[1] as InOfflineGameBloc,
      );
}
