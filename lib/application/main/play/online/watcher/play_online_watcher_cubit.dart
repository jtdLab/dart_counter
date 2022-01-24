import 'package:dart_counter/application/core/watcher/watcher_cubit.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:injectable/injectable.dart';

@injectable
class PlayOnlineWatcherCubit extends WatcherCubit<OnlineGameSnapshot> {
  PlayOnlineWatcherCubit(
    IPlayOnlineService playOnlineService,
  ) : super(
          playOnlineService.getGame(), // TODO good practice ?? to pass here
          playOnlineService.watchGame(),
        );
}
