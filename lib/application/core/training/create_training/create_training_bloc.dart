import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/training/training_bloc.dart';
import 'package:dart_counter/domain/training/training_game_snapshot.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_training_event.dart';
part 'create_training_state.dart';
part 'create_training_bloc.freezed.dart';

@lazySingleton
class CreateTrainingBloc extends Bloc<CreateTrainingEvent, CreateTrainingState>
    with AutoResetLazySingleton {
  final TrainingBloc _trainingBloc;

  CreateTrainingBloc(
    this._trainingBloc,
  ) : super(
          CreateTrainingState.initial(
            gameSnapshot: _trainingBloc.state.map(
              initial: (_) => throw Error(),
              gameInProgress: (gameInProgress) => gameInProgress.gameSnapshot,
            ),
          ),
        ) {
    on<CreateTrainingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<CreateTrainingBloc>()) {
      getIt.resetLazySingleton<CreateTrainingBloc>();
    }

    return super.close();
  }
}
