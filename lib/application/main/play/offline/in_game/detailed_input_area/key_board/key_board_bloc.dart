import 'package:dart_counter/application/main/core/play/offline/play_offline_cubit.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/key_board/key_board_bloc.dart';

// TODO name + doc


@injectable
class KeyBoardBlocOfflineDetailedInputArea extends KeyBoardBloc {
  KeyBoardBlocOfflineDetailedInputArea(
    IDartUtils dartUtils,
    PlayOfflineCubit playOfflineCubit,
    AdvancedSettingsBloc advancedSettingsBloc,
    DartsDisplayerBloc dartsDisplayerBloc,
  ) : super(
          dartUtils,
          playOfflineCubit,
          advancedSettingsBloc,
          dartsDisplayerBloc,
        );

  /// Returns instance registered inside getIt.
  factory KeyBoardBlocOfflineDetailedInputArea.getIt(
    PlayOfflineCubit playOfflineCubit,
    AdvancedSettingsBloc advancedSettingsBloc,
    DartsDisplayerBloc dartsDisplayerBloc,
  ) =>
      getIt<KeyBoardBlocOfflineDetailedInputArea>(
        param1: [playOfflineCubit, advancedSettingsBloc, dartsDisplayerBloc],
      );

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of `PlayOfflineCubit`
  ///
  /// 2. Instance of `AdvancedSettingsBloc`
  ///
  /// 3. Instance of `DartsDisplayerBloc`
  @factoryMethod
  factory KeyBoardBlocOfflineDetailedInputArea.injectable(
    IDartUtils dartUtils,
    @factoryParam List<Object> otherDependencies,
  ) =>
      KeyBoardBlocOfflineDetailedInputArea(
        dartUtils,
        otherDependencies[0] as PlayOfflineCubit,
        otherDependencies[1] as AdvancedSettingsBloc,
        otherDependencies[2] as DartsDisplayerBloc,
      );
}
