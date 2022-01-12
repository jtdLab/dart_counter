import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:dart_counter/domain/training/score/score_training_game_snapshot.dart';
import 'package:injectable/injectable.dart';

@injectable
class ScoreTrainingWatcherCubit extends Cubit<ScoreTrainingGameSnapshot> {
  final IScoreTrainingService _trainingService;

  late final StreamSubscription _snapshotStreamSubscription;

  ScoreTrainingWatcherCubit(
    this._trainingService,
  ) : super(_trainingService.getGame()) {
    _snapshotStreamSubscription =
        _trainingService.watchGame().listen((snapshot) => emit(snapshot));
  }

  @override
  Future<void> close() {
    _snapshotStreamSubscription.cancel();

    return super.close();
  }
}
