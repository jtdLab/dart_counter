import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/training/single_training/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/training/single/hit.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'input_row_bloc.freezed.dart';
part 'input_row_event.dart';

@injectable
class InputRowBloc extends Bloc<InputRowEvent, int> {
  final ISingleTrainingService _trainingService;

  final DartsDisplayerBloc _dartsDisplayerBloc;

  InputRowBloc(
    this._trainingService,
    @factoryParam DartsDisplayerBloc? dartsDisplayerBloc,
  )   : _dartsDisplayerBloc = dartsDisplayerBloc!,
        // set inital state
        super(0) {
    // register event handlers
    on<_UndoPressed>((_, __) => _mapUndoPressedToState());
    on<_CommitPressed>((_, emit) => _mapCommitPressedToState(emit));
    on<_InputChanged>((event, emit) => _mapInputChangedToState(event, emit));
  }

  void _mapUndoPressedToState() {
    // undo hits
    _trainingService.undoHits();
  }

  void _mapCommitPressedToState(
    Emitter<int> emit,
  ) {
    _dartsDisplayerBloc.state.when(
      // when the user did not input any darts
      initial: () {
        // commit 3 missed hits
        _trainingService.performHits(
          hit1: Hit.missed,
          hit2: Hit.missed,
          hit3: Hit.missed,
        );
      },
      // when the user did at least input 1 dart
      darts: (darts) {
        // convert incoming darts to hits
        // when incoming darts has less than 3 elements
        // add missed for each missing dart
        // so the resulting list contains 3 elements
        final hits = darts
            .getOrCrash()
            .map<Hit>((dart) => _fromDart(dart))
            .toMutableList()
          ..addAll(
            List.generate(
              3 - darts.length,
              (index) => Hit.missed,
            ).toImmutableList(),
          );

        // commit converted hits
        _trainingService.performHits(
          hit1: hits[0],
          hit2: hits[1],
          hit3: hits[2],
        );
      },
    );
  }

  void _mapInputChangedToState(
    _InputChanged event,
    Emitter<int> emit,
  ) {
    // incoming new input
    final newInput = event.newInput;

    // emit new input
    emit(newInput);
  }

  // TODO share??
  Hit _fromDart(Dart dart) {
    switch (dart.type) {
      case DartType.triple:
        return Hit.triple;
      case DartType.double:
        return Hit.double;
      case DartType.single:
        return Hit.single;
    }
  }
}
