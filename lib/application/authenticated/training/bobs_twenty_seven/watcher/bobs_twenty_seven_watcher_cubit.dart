import 'package:dart_counter/application/core/watcher/watcher_cubit.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

// TODO doc
@injectable
class BobsTwentySevenWatcherCubit
    extends WatcherCubit<BobsTwentySevenGameSnapshot> {
  BobsTwentySevenWatcherCubit(
    IBobsTwentySevenService trainingService,
  ) : super(
          trainingService.getGame(),
          trainingService.watchGame(),
        );

  /// Returns instance registered inside getIt.
  factory BobsTwentySevenWatcherCubit.getIt() =>
      getIt<BobsTwentySevenWatcherCubit>();
}
