import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/training/mode.dart';
import 'package:dart_counter/domain/training/single/hit.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'single_training_bloc.freezed.dart';
part 'single_training_event.dart';
part 'single_training_state.dart';

@lazySingleton
class SingleTrainingBloc extends Bloc<SingleTrainingEvent, SingleTrainingState>
    with AutoResetLazySingleton {
  final ISingleTrainingService _trainingService;

  SingleTrainingBloc(
    this._trainingService,
  ) : super(
          const SingleTrainingState.initial(
            hits: KtList.empty(),
            mode: Mode.ascending,
          ),
        ) {
    on<_SingleTrainingModeChanged>((event, emit) {
      _trainingService.updateMode(newMode: event.newMode);
    });
    on<_SingleTrainingPerformPressed>((event, emit) {
      final hits = state.hits;

      _trainingService.performHits(
        hit1: hits.get(0),
        hit2: hits.get(1),
        hit3: hits.get(2),
      );

      // TODO only to this if perform hits was succesful
      emit(state.copyWith(hits: const KtList.empty()));
    });
    on<_SingleTrainingUndoPressed>((event, emit) {
      _trainingService.undoHits();
    });
    on<_SingleTrainingSingleHitPressed>((event, emit) {
      _addNewHit(emit, hit: Hit.single);
    });
    on<_SingleTrainingDoubleHitPressed>((event, emit) {
      _addNewHit(emit, hit: Hit.double);
    });
    on<_SingleTrainingTripleHitPressed>((event, emit) {
      _addNewHit(emit, hit: Hit.triple);
    });
    on<_SingleTrainingMissHitPressed>((event, emit) {
      _addNewHit(emit, hit: Hit.missed);
    });
  }

  void _addNewHit(
    Emitter<SingleTrainingState> emit, {
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
    if (getIt.isRegistered<SingleTrainingBloc>()) {
      getIt.resetLazySingleton<SingleTrainingBloc>();
    }

    return super.close();
  }
}
