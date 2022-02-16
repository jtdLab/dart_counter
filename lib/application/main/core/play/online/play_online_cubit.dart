import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/core/shared/play/play_state.dart';
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:dart_counter/injection.dart';

export 'package:dart_counter/application/main/core/shared/play/play_state.dart';

class PlayOnlineCubit extends Cubit<PlayState<OnlineGameSnapshot>> {
  PlayOnlineCubit()
      : super(
          // Set initial state
          const PlayState.inactive(),
        );

  /// Returns instance registered inside getIt.
  factory PlayOnlineCubit.getIt() => getIt<PlayOnlineCubit>();
}
