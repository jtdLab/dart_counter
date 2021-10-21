import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
import 'package:dart_counter/domain/training/double/i_double_training_service.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:dart_counter/domain/training/single/game_snapshot.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:dart_counter/domain/training/training_game_snapshot.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'training_event.dart';
part 'training_state.dart';
part 'training_bloc.freezed.dart';

@lazySingleton
class TrainingBloc extends Bloc<TrainingEvent, TrainingState>
    with AutoResetLazySingleton {
  final ISingleTrainingService _singleTrainingService;
  final IDoubleTrainingService _doubleTrainingService;
  final IScoreTrainingService _scoreTrainingService;
  final IBobsTwentySevenService _bobsTwentySevenService;

  StreamSubscription? _gameSnapshotsSubscription;

  TrainingBloc(
    this._singleTrainingService,
    this._doubleTrainingService,
    this._scoreTrainingService,
    this._bobsTwentySevenService,
  ) : super(const TrainingState.initial()) {
    on<TrainingGameSnapshotReceived>((event, emit) {
      final gameSnapshot = event.gameSnapshot;
      emit(TrainingState.gameInProgress(gameSnapshot: gameSnapshot));
    });
  }

  @override
  Future<void> close() {
    _gameSnapshotsSubscription?.cancel();

    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<TrainingBloc>()) {
      getIt.resetLazySingleton<TrainingBloc>();
    }

    return super.close();
  }
}
