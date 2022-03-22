import 'package:dart_counter/application/core/watcher/watcher_cubit.dart';
import 'package:dart_counter/application/main/core/user/user_cubit.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/domain/play/offline/offline_game_snapshot.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

@injectable
class PlayOfflineWatcherCubit extends WatcherCubit<OfflineGameSnapshot> {
  PlayOfflineWatcherCubit(
    IPlayOfflineService playOfflineService,
    OfflineGameSnapshot initialState,
  ) : super(
          initialState,
          playOfflineService.watchGame(),
        );

  /// Returns instance registered inside getIt.
  factory PlayOfflineWatcherCubit.getIt(
    OfflineGameSnapshot initialState,
  ) =>
      getIt<PlayOfflineWatcherCubit>(param1: [initialState]);

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of `OfflineGameSnapshot`
  @factoryMethod
  factory PlayOfflineWatcherCubit.injectable(
    IPlayOfflineService playOfflineService,
    @factoryParam List<Object> otherDependencies,
  ) =>
      PlayOfflineWatcherCubit(
        playOfflineService,
        otherDependencies[0] as OfflineGameSnapshot,
      );
}
