import 'package:dart_counter/application/core/watcher/watcher_cubit.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
import 'package:injectable/injectable.dart';

// TODO test correct param passing if possible

@injectable
class BobsTwentySevenWatcherCubit
    extends WatcherCubit<BobsTwentySevenGameSnapshot> {
  BobsTwentySevenWatcherCubit(
    IBobsTwentySevenService trainingService,
  ) : super(
          trainingService.getGame(), // TODO good practice ?? to pass here
          trainingService.watchGame(),
        );
}
