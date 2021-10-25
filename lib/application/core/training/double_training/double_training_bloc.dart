import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/training/double/game_snapshot.dart';
import 'package:dart_counter/domain/training/double/hit.dart';
import 'package:dart_counter/domain/training/double/i_double_training_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'double_training_event.dart';
part 'double_training_state.dart';
part 'double_training_bloc.freezed.dart';

@lazySingleton
class DoubleTrainingBloc extends Bloc<DoubleTrainingEvent, DoubleTrainingState>
    with AutoResetLazySingleton {
  final IDoubleTrainingService _trainingService;

  DoubleTrainingBloc(
    this._trainingService,
  ) : super(
          const DoubleTrainingState.initial(
            hits: KtList.empty(),
            mode: Mode.ascending,
          ),
        ) {
    on<_DoubleTrainingModeChanged>((event, emit) {
      emit(state.copyWith(mode: event.newMode));
    });
    on<_DoubleTrainingPerformPressed>((event, emit) {
      final hits = state.hits;

      _trainingService.performHits(
        hit1: hits.get(0),
        hit2: hits.get(1),
        hit3: hits.get(2),
      );

      // TODO only to this if perform hits was succesful
      emit(state.copyWith(hits: const KtList.empty()));
    });
    on<_DoubleTrainingUndoPressed>((event, emit) {
      _trainingService.undoHits();
    });
    on<_DoubleTrainingDoubleHitPressed>((event, emit) {
      _addNewHit(emit, hit: Hit.double);
    });
    on<_DoubleTrainingMissHitPressed>((event, emit) {
      _addNewHit(emit, hit: Hit.missed);
    });
  }

  void _addNewHit(
    Emitter<DoubleTrainingState> emit, {
    required Hit hit,
  }) {
    final hits = state.hits;

    if (hits.size < 3) {
      emit(
        state.copyWith(
          hits: hits.toMutableList()..add(hit),
        ),
      );
    }
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<DoubleTrainingBloc>()) {
      getIt.resetLazySingleton<DoubleTrainingBloc>();
    }

    return super.close();
  }
}
