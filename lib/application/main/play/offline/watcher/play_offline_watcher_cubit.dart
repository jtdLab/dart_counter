import 'package:dart_counter/application/core/watcher/watcher_cubit.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/domain/play/offline/offline_game_snapshot.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class PlayOfflineWatcherCubit extends WatcherCubit<OfflineGameSnapshot> {
  PlayOfflineWatcherCubit(
    IPlayOfflineService playOfflineService,
    IUserService userService,
  ) : super(
          playOfflineService.createGame(
            owner: userService
                .getUser()
                // TODO better error
                .getOrElse(() => throw Error()),
          ), // TODO good practice ?? to pass here
          playOfflineService.watchGame(),
        );
}
