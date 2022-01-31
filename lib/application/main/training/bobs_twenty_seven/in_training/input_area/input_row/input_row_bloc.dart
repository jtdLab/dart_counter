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

// TODO add test case for not exisiting input changed

// TODO bobs_twenty_seven_training_input_row_bloc real doc this is just a blueprint
/// {@template bobs_twenty_seven_training_input_row_bloc}
/// [otherDependencies] must contain in follwoing order:
///
/// 1. Instance of [DartsDisplayerBloc]
///
/// A [InTrainingBloc] is an actor bloc that performs actions on a [AbstractITrainingService].
///
/// Supported actions:
///
/// 1. Cancel training.
///
/// {@endtemplate}
@injectable
class InputRowBloc extends Bloc<InputRowEvent, int> {
  final IBobsTwentySevenService _trainingService;

  final DartsDisplayerBloc _dartsDisplayerBloc;

  /// {@macro bobs_twenty_seven_training_input_row_bloc}
  InputRowBloc(
    this._trainingService,
    @factoryParam List<Object>? otherDependencies,
  )   : _dartsDisplayerBloc = otherDependencies![0] as DartsDisplayerBloc,
        // Set inital state
        super(-2 * _trainingService.getGame().currentTurn().targetValue) {
    // Register event handlers
    on<Started>(
      (_, emit) async => _handleStarted(emit),
      transformer: restartable(), // TODO test restartability
    );
    on<UndoPressed>((_, emit) => _handleUndoPressed(emit));
    on<CommitPressed>((_, emit) => _handleCommitPressed(emit));
  }

  /// Handle incoming [Started] event.
  Future<void> _handleStarted(
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
          empty: () => -2 * targetValue,
          // when more than 0 darts
          notEmpty: (darts) {
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

  /// Handle incoming [UndoPressed] event.
  void _handleUndoPressed(
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

  /// Handle incoming [CommitPressed] event.
  void _handleCommitPressed(
    Emitter<int> emit,
  ) {
    _dartsDisplayerBloc.state.when(
      // when the user did not input any darts
      empty: () {
        // perform throw with 3 missed darts
        _trainingService.performThrow(t: Throw.fromDarts(List.empty(), 3));
      },
      // when the user did at least input 1 dart
      notEmpty: (darts) {
        // perform throw
        _trainingService.performThrow(
          t: Throw.fromDarts(darts.getOrCrash().asList(), 3),
        );
      },
    );
    // reset darts displayer
    _dartsDisplayerBloc.add(const DartsDisplayerEvent.resetRequested());
  }
}
