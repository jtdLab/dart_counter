import 'package:dart_counter/application/core/watcher/watcher_cubit.dart';
import 'package:dart_counter/domain/training/double/double_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/double/i_double_training_service.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:injectable/injectable.dart';

// TODO test
@injectable
class DoubleTrainingWatcherCubit
    extends WatcherCubit<DoubleTrainingGameSnapshot> {
  DoubleTrainingWatcherCubit(
    IDoubleTrainingService trainingService,
  ) : super(
          trainingService.getGame(),
          trainingService.watchGame(),
        );

  /// Returns instance registered inside getIt.
  factory DoubleTrainingWatcherCubit.getIt() =>
      getIt<DoubleTrainingWatcherCubit>();
}
