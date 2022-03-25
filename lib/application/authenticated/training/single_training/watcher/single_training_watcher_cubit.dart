import 'package:dart_counter/application/core/watcher/watcher_cubit.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:dart_counter/domain/training/single/single_training_game_snapshot.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:injectable/injectable.dart';

// TODO doc
@injectable
class SingleTrainingWatcherCubit
    extends WatcherCubit<SingleTrainingGameSnapshot> {
  SingleTrainingWatcherCubit(
    ISingleTrainingService trainingService,
  ) : super(
          trainingService.getGame(),
          trainingService.watchGame(),
        );

  /// Returns instance registered inside getIt.
  factory SingleTrainingWatcherCubit.getIt() =>
      getIt<SingleTrainingWatcherCubit>();
}
