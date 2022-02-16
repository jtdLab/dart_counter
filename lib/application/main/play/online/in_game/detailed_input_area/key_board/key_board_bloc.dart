import 'package:dart_counter/application/main/core/play/online/play_online_cubit.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/key_board/key_board_bloc.dart';

// TODO name + doc

@injectable
class KeyBoardBlocOnlineDetailedInputArea extends KeyBoardBloc {
  KeyBoardBlocOnlineDetailedInputArea(
    IDartUtils dartUtils,
    PlayOnlineCubit playOnlineCubit,
    AdvancedSettingsBloc advancedSettingsBloc,
    DartsDisplayerBloc dartsDisplayerBloc,
  ) : super(
          dartUtils,
          playOnlineCubit,
          advancedSettingsBloc,
          dartsDisplayerBloc,
        );

  /// Returns instance registered inside getIt.
  factory KeyBoardBlocOnlineDetailedInputArea.getIt(
    PlayOnlineCubit playOnlineCubit,
    AdvancedSettingsBloc advancedSettingsBloc,
    DartsDisplayerBloc dartsDisplayerBloc,
  ) =>
      getIt<KeyBoardBlocOnlineDetailedInputArea>(
        param1: [playOnlineCubit, advancedSettingsBloc, dartsDisplayerBloc],
      );

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of [PlayOnlineCubit]
  ///
  /// 2. Instance of [AdvancedSettingsBloc]
  ///
  /// 3. Instance of [DartsDisplayerBloc]
  @factoryMethod
  factory KeyBoardBlocOnlineDetailedInputArea.injectable(
    IDartUtils dartUtils,
    @factoryParam List<Object>? otherDependencies,
  ) =>
      KeyBoardBlocOnlineDetailedInputArea(
        dartUtils,
        otherDependencies![0] as PlayOnlineCubit,
        otherDependencies[1] as AdvancedSettingsBloc,
        otherDependencies[2] as DartsDisplayerBloc,
      );
}
