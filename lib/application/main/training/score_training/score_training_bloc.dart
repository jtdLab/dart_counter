import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'score_training_event.dart';
part 'score_training_state.dart';
part 'score_training_bloc.freezed.dart';

@lazySingleton
class ScoreTrainingBloc extends Bloc<ScoreTrainingEvent, ScoreTrainingState>
    with AutoResetLazySingleton {
  final IScoreTrainingService _trainingService;

  ScoreTrainingBloc(
    this._trainingService,
  ) : super(
          const ScoreTrainingState.initial(
            points: 0,
            numberOfTakes: 0,
          ),
        ) {
    on<_ScoreTrainingNumberOfTakesChanged>((event, emit) {
      emit(state.copyWith(numberOfTakes: event.newNumberOfTakes));
    });
    on<_ScoreTrainingPerformPressed>((event, emit) {
      final points = state.points;

      _trainingService.performThrow(
        t: Throw(points: points, dartsThrown: 0, dartsOnDouble: 0),
      );

      // TODO only to this if perform hits was succesful
      emit(state.copyWith(points: 0));
    });
    on<_ScoreTrainingUndoPressed>((event, emit) {
      _trainingService.undoThrow();
    });
    on<_ScoreTrainingDigitPressed>((event, emit) {
      final points = state.points;

      final newPoints = int.parse(
        points.toString() + event.digit.toString(),
      );

      final valid = _validatePoints(points: newPoints);
      if (valid) {
        emit(state.copyWith(points: newPoints));
      }
    });
    on<_ScoreTrainingEreasePressed>((event, emit) {
      final points = state.points;

      if (points < 10) {
        emit(state.copyWith(points: 0));
      } else {
        final inputString = points.toString();
        final newPoints = int.parse(
          inputString.substring(0, inputString.length - 1),
        );

        emit(state.copyWith(points: newPoints));
      }
    });
  }

  bool _validatePoints({
    required int points,
  }) {
    if (points < 0 || points > 180) {
      return false;
    }

    if ([163, 166, 169, 172, 173, 175, 176, 178, 179].contains(points)) {
      return false;
    }

    return true;
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<ScoreTrainingBloc>()) {
      getIt.resetLazySingleton<ScoreTrainingBloc>();
    }

    return super.close();
  }
}
