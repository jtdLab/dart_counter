import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/training/training_bloc.dart';
import 'package:dart_counter/domain/training/training_game_snapshot.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'post_training_event.dart';
part 'post_training_state.dart';
part 'post_training_bloc.freezed.dart';

// TODO is this bloc rly needed or can this just be provided in a simpler way
@lazySingleton
class PostTrainingBloc extends Bloc<PostTrainingEvent, PostTrainingState>
    with AutoResetLazySingleton {
  final TrainingBloc _trainingBloc;

  PostTrainingBloc(
    this._trainingBloc,
  ) : super(
          _trainingBloc.state.maybeMap(
            gameInProgress: (gameInProgress) => PostTrainingState.initial(
              gameSnapshot: gameInProgress.gameSnapshot,
            ),
            orElse: () => throw Error(), // TODO name better
          ),
        );

  @override
  Stream<PostTrainingState> mapEventToState(
    PostTrainingEvent event,
  ) async* {}

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<PostTrainingBloc>()) {
      getIt.resetLazySingleton<PostTrainingBloc>();
    }

    return super.close();
  }
}
