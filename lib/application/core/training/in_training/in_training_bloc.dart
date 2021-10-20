import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/training/training_bloc.dart';
import 'package:dart_counter/domain/training/training_game_snapshot.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'in_training_event.dart';
part 'in_training_state.dart';
part 'in_training_bloc.freezed.dart';

@lazySingleton
class InTrainingBloc extends Bloc<InTrainingEvent, InTrainingState>
    with AutoResetLazySingleton {
  // TODO maybe inject services

  final TrainingBloc _trainingBloc;

  StreamSubscription? _gameSnapshotsSubscription;

  InTrainingBloc(this._trainingBloc)
      : super(
          _trainingBloc.state.maybeMap(
            gameInProgress: (gameInProgress) => InTrainingState.initial(
              gameSnapshot: gameInProgress.gameSnapshot,
            ),
            orElse: () => throw Error(), // TODO name better
          ),
        ) {
    on<InTrainingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  @override
  Future<void> close() {
    _gameSnapshotsSubscription?.cancel();

    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<InTrainingBloc>()) {
      getIt.resetLazySingleton<InTrainingBloc>();
    }

    return super.close();
  }
}
