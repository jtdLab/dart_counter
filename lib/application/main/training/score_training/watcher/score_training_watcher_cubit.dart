import 'package:dart_counter/application/core/watcher/watcher_cubit.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:dart_counter/domain/training/score/score_training_game_snapshot.dart';
import 'package:injectable/injectable.dart';

// TODO test correct param passing if possible

@injectable
class ScoreTrainingWatcherCubit
    extends WatcherCubit<ScoreTrainingGameSnapshot> {
  ScoreTrainingWatcherCubit(
    IScoreTrainingService trainingService,
  ) : super(
          trainingService.getGame(), // TODO good practice ?? to pass here
          trainingService.watchGame(),
        );
}
