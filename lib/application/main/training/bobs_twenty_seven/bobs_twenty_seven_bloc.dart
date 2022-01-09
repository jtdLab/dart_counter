import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/hit.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/mode.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'bobs_twenty_seven_event.dart';
part 'bobs_twenty_seven_state.dart';
part 'bobs_twenty_seven_bloc.freezed.dart';
// TODO rename to bobstwentyseven tarining bloc ?ß
@lazySingleton
class BobsTwentySevenBloc
    extends Bloc<BobsTwentySevenEvent, BobsTwentySevenState>
    with AutoResetLazySingleton {
  final IBobsTwentySevenService _trainingService;

  BobsTwentySevenBloc(
    this._trainingService,
  ) : super(
          const BobsTwentySevenState.initial(
            hits: KtList.empty(),
          ),
        ) {
    on<_BobsTwentySevenTrainingModeChanged>((event, emit) {
      _trainingService.updateMode(newMode: event.newMode);
    });
    on<_BobsTwentySevenTrainingPerformPressed>((event, emit) {
      final hits = state.hits;

      _trainingService.performHits(
        hit1: hits.get(0),
        hit2: hits.get(1),
        hit3: hits.get(2),
      );

      // TODO only to this if perform hits was succesful
      emit(const BobsTwentySevenState.initial(hits: KtList.empty()));
    });
    on<_BobsTwentySevenTrainingUndoPressed>((event, emit) {
      _trainingService.undoHits();
    });
    on<_BobsTwentySevenTrainingDoubleHitPressed>((event, emit) {
      _addNewHit(emit, hit: Hit.double);
    });
    on<_BobsTwentySevenTrainingMissHitPressed>((event, emit) {
      _addNewHit(emit, hit: Hit.missed);
    });
  }

  void _addNewHit(
    Emitter<BobsTwentySevenState> emit, {
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
    if (getIt.isRegistered<BobsTwentySevenBloc>()) {
      getIt.resetLazySingleton<BobsTwentySevenBloc>();
    }

    return super.close();
  }
}
