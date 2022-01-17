/**
 * import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';

// TODO needed ? and test
class PointsLeftCubit extends Cubit<int> {
  final Cubit<AbstractGameSnapshot> _playWatcherCubit;

  late final StreamSubscription _playWatcherSubscription;

  PointsLeftCubit(
    this._playWatcherCubit,
  ) : super(_playWatcherCubit.state.currentTurn().pointsLeft) {
    _playWatcherSubscription = _playWatcherCubit.stream.listen((gameSnapshot) {
      emit(gameSnapshot.currentTurn().pointsLeft);
    });
  }

  @override
  Future<void> close() {
    _playWatcherSubscription.cancel();

    return super.close();
  }
}

 */