import 'package:dart_counter/application/core/watcher/watcher_cubit.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

@injectable
class PlayOnlineWatcherCubit extends WatcherCubit<OnlineGameSnapshot> {
  PlayOnlineWatcherCubit(
    IPlayOnlineService playOnlineService,
    OnlineGameSnapshot initialState,
  ) : super(
          initialState,
          playOnlineService.watchGame(),
        );

  /// Returns instance registered inside getIt.
  factory PlayOnlineWatcherCubit.getIt(
    OnlineGameSnapshot initialState,
  ) =>
      getIt<PlayOnlineWatcherCubit>(param1: [initialState]);

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of `OnlineGameSnapshot`
  @factoryMethod
  factory PlayOnlineWatcherCubit.injectable(
    IPlayOnlineService playOnlineService,
    @factoryParam List<Object> otherDependencies,
  ) =>
      PlayOnlineWatcherCubit(
        playOnlineService,
        otherDependencies[0] as OnlineGameSnapshot,
      );
}
