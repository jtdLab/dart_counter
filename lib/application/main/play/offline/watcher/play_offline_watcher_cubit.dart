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
    UserCubit userCubit,
  ) : super(
          playOfflineService.createGame(
            owner: userCubit.state.user,
          ), // TODO good practice ?? to pass here
          playOfflineService.watchGame(),
        );

  /// Returns instance registered inside getIt.
  factory PlayOfflineWatcherCubit.getIt(
    UserCubit userCubit,
  ) =>
      getIt<PlayOfflineWatcherCubit>(param1: [userCubit]);

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of `UserCubit`
  @factoryMethod
  factory PlayOfflineWatcherCubit.injectable(
    IPlayOfflineService playOfflineService,
    @factoryParam List<Object> otherDependencies,
  ) =>
      PlayOfflineWatcherCubit(
        playOfflineService,
        otherDependencies[0] as UserCubit,
      );
}

