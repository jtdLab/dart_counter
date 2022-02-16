import 'package:dart_counter/application/main/core/play/offline/play_offline_cubit.dart';
import 'package:dart_counter/application/main/play/offline/in_game/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/key_board/key_board_bloc.dart';

@injectable
class KeyBoardBlocOfflineStandardInputArea extends KeyBoardBloc {
  KeyBoardBlocOfflineStandardInputArea(
    IDartUtils dartUtils,
    PlayOfflineCubit playOfflineCubit,
    AdvancedSettingsBloc advancedSettingsBloc,
    InputRowBlocOfflineStandardInputArea inputRowBloc,
  ) : super(
          dartUtils,
          playOfflineCubit,
          advancedSettingsBloc,
          inputRowBloc,
        );

  /// Returns instance registered inside getIt.
  factory KeyBoardBlocOfflineStandardInputArea.getIt(
    PlayOfflineCubit playOfflineCubit,
    AdvancedSettingsBloc advancedSettingsBloc,
    InputRowBlocOfflineStandardInputArea inputRowBloc,
  ) =>
      getIt<KeyBoardBlocOfflineStandardInputArea>(
        param1: [playOfflineCubit, advancedSettingsBloc, inputRowBloc],
      );

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of [PlayOfflineCubit]
  ///
  /// 2. Instance of [AdvancedSettingsBloc]
  ///
  /// 3. Instance of [InputRowBlocOfflineStandardInputArea]
  @factoryMethod
  factory KeyBoardBlocOfflineStandardInputArea.injectable(
    IDartUtils dartUtils,
    @factoryParam List<Object>? otherDependencies,
  ) =>
      KeyBoardBlocOfflineStandardInputArea(
        dartUtils,
        otherDependencies![0] as PlayOfflineCubit,
        otherDependencies[1] as AdvancedSettingsBloc,
        otherDependencies[2] as InputRowBlocOfflineStandardInputArea,
      );
}
