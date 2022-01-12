import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:dart_counter/domain/training/single/single_training_game_snapshot.dart';
import 'package:injectable/injectable.dart';

@injectable
class SingleTrainingWatcherCubit extends Cubit<SingleTrainingGameSnapshot> {
  final ISingleTrainingService _trainingService;

  late final StreamSubscription _snapshotStreamSubscription;

  SingleTrainingWatcherCubit(
    this._trainingService,
  ) : super(_trainingService.getGame()) {
    _snapshotStreamSubscription = _trainingService
        .watchGame()
        .listen((snapshot) => emit(snapshot));
  }

  @override
  Future<void> close() {
    _snapshotStreamSubscription.cancel();

    return super.close();
  }
}
