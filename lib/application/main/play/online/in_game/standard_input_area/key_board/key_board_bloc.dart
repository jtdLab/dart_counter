import 'package:dart_counter/application/main/core/play/online/play_online_cubit.dart';
import 'package:dart_counter/application/main/play/online/in_game/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/key_board/key_board_bloc.dart';

// TODO name + doc
@injectable
class KeyBoardBlocOnlineStandardInputArea extends KeyBoardBloc {
  KeyBoardBlocOnlineStandardInputArea(
    IDartUtils dartUtils,
    PlayOnlineCubit playOnlineCubit,
    AdvancedSettingsBloc advancedSettingsBloc,
    InputRowBlocOnlineStandardInputArea inputRowBloc,
  ) : super(
          dartUtils,
          playOnlineCubit,
          advancedSettingsBloc,
          inputRowBloc,
        );

  /// Returns instance registered inside getIt.
  factory KeyBoardBlocOnlineStandardInputArea.getIt(
    PlayOnlineCubit playOnlineCubit,
    AdvancedSettingsBloc advancedSettingsBloc,
    InputRowBlocOnlineStandardInputArea inputRowBloc,
  ) =>
      getIt<KeyBoardBlocOnlineStandardInputArea>(
        param1: [playOnlineCubit, advancedSettingsBloc, inputRowBloc],
      );

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of [PlayOnlineCubit]
  ///
  /// 2. Instance of [AdvancedSettingsBloc]
  ///
  /// 3. Instance of [InputRowBlocOnlineStandardInputArea]
  @factoryMethod
  factory KeyBoardBlocOnlineStandardInputArea.injectable(
    IDartUtils dartUtils,
    @factoryParam List<Object>? otherDependencies,
  ) =>
      KeyBoardBlocOnlineStandardInputArea(
        dartUtils,
        otherDependencies![0] as PlayOnlineCubit,
        otherDependencies[1] as AdvancedSettingsBloc,
        otherDependencies[2] as InputRowBlocOnlineStandardInputArea,
      );
}
