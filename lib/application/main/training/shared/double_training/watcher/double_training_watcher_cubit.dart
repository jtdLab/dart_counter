import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/training/double/double_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/double/i_double_training_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class DoubleTrainingWatcherCubit extends Cubit<DoubleTrainingGameSnapshot> {
  final IDoubleTrainingService _trainingService;

  late final StreamSubscription _snapshotStreamSubscription;

  DoubleTrainingWatcherCubit(
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
