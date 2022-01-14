import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/input_row/input_row_event.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/training/single/hit.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

export 'package:dart_counter/application/main/training/shared/in_game/input_area/input_row/input_row_event.dart';

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
    on<Started>(
      (_, emit) async => _mapStartedToState(emit),
      transformer: restartable(),
    );
    on<UndoPressed>((_, __) => _mapUndoPressedToState());
    on<CommitPressed>((_, emit) => _mapCommitPressedToState(emit));
    on<InputChanged>((event, emit) => _mapInputChangedToState(event, emit));
  }

  Future<void> _mapStartedToState(
    Emitter<int> emit,
  ) async {
    await emit.forEach<DartsDisplayerState>(
      _dartsDisplayerBloc.stream,
      onData: (dartsDisplayerState) => dartsDisplayerState.when(
        // when 0 darts emit 0
        initial: () => 0,
        // when > 0 darts emit sum of points calculated from darts
        // a single counts 1 point, a double counts 2 points, a triple counts 3 points
        darts: (darts) => darts.getOrCrash().fold(
              0,
              (acc, dart) =>
                  acc +
                  (dart.type == DartType.single
                      ? 1
                      : dart.type == DartType.double
                          ? 2
                          : 3),
            ),
      ),
    );
  }

  void _mapUndoPressedToState() {
    // undo hits
    _trainingService.undoHits();

    // reset darts displayer
    _dartsDisplayerBloc.add(const DartsDisplayerEvent.resetRequested());
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

    // reset darts displayer
    _dartsDisplayerBloc.add(const DartsDisplayerEvent.resetRequested());
  }

  void _mapInputChangedToState(
    InputChanged event,
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
