import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/main/shared/input_row/input_row_event.dart';
import 'package:dart_counter/application/main/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

export 'package:dart_counter/application/main/shared/input_row/input_row_event.dart';

@injectable
class InputRowBloc extends Bloc<InputRowEvent, int> {
  final IBobsTwentySevenService _trainingService;

  final DartsDisplayerBloc _dartsDisplayerBloc;

  InputRowBloc(
    this._trainingService,
    @factoryParam DartsDisplayerBloc? dartsDisplayerBloc,
  )   : _dartsDisplayerBloc = dartsDisplayerBloc!,
        // set inital state
        super(-2 * _trainingService.getGame().currentTurn().targetValue) {
    // register event handlers
    on<Started>(
      (_, emit) async => _mapStartedToState(emit),
      transformer: restartable(),
    );
    on<UndoPressed>((_, emit) => _mapUndoPressedToState(emit));
    on<CommitPressed>((_, emit) => _mapCommitPressedToState(emit));
    // TODO remove this  handler
    on<InputChanged>((event, emit) => _mapInputChangedToState(event, emit));
  }

  Future<void> _mapStartedToState(
    Emitter<int> emit,
  ) async {
    // for each incoming darts
    await emit.forEach<DartsDisplayerState>(
      _dartsDisplayerBloc.stream,
      onData: (dartsDisplayerState) {
        // read target value of current turn
        final targetValue =
            _trainingService.getGame().currentTurn().targetValue;

        return dartsDisplayerState.when(
          // when 0 darts emit 2 times negative current target value
          initial: () => -2 * targetValue,
          // when more than 0 darts
          darts: (darts) {
            // calculate points from darts
            final int points = darts
                .getOrCrash()
                // every dart hit one the current target value double
                .filter((dart) => dart.type == DartType.double)
                // counts 2 times current target value
                .fold(0, (acc, dart) => acc + 2 * targetValue);

            // when calculated points is 0
            if (points == 0) {
              // emit 2 times negative current target value
              return -2 * targetValue;
            }

            // else emit calculated points
            return points;
          },
        );
      },
    );
  }

  void _mapUndoPressedToState(
    Emitter<int> emit,
  ) {
    // undo throw
    _trainingService.undoThrow();

    // read target value of new (after undo) current turn
    final targetValue = _trainingService.getGame().currentTurn().targetValue;

    // emit 2 times negative new (after undo) current target value
    emit(-2 * targetValue);

    // reset darts displayer
    _dartsDisplayerBloc.add(const DartsDisplayerEvent.resetRequested());
  }

  void _mapCommitPressedToState(
    Emitter<int> emit,
  ) {
    _dartsDisplayerBloc.state.when(
      // when the user did not input any darts
      initial: () {
        // perform throw with 3 missed darts
        _trainingService.performThrow(
          t: Throw.fromDarts(List.generate(3, (index) => Dart.missed), 3),
        );
      },
      // when the user did at least input 1 dart
      darts: (darts) {
        // when incoming darts has less than 3 elements
        // add dart with 0 points for each missing dart
        // so the resulting list contains 3 elements
        // TODO filling should be done in service/modal
        final filledDarts = darts.getOrCrash().toMutableList().asList()
          ..addAll(
            List.generate(
              3 - darts.length,
              (index) => Dart.missed,
            ),
          );

        // perform throw
        _trainingService.performThrow(
          t: Throw.fromDarts(filledDarts, filledDarts.length),
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
}
