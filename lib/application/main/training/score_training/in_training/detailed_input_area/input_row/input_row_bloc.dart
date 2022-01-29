import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/main/shared/input_row/input_row_event.dart';
import 'package:dart_counter/application/main/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

export 'package:dart_counter/application/main/shared/input_row/input_row_event.dart';

@injectable
class InputRowBloc extends Bloc<InputRowEvent, int> {
  final IScoreTrainingService _trainingService;

  final DartsDisplayerBloc _dartsDisplayerBloc;

  InputRowBloc(
    this._trainingService,
    @factoryParam DartsDisplayerBloc? dartsDisplayerBloc,
  )   : _dartsDisplayerBloc = dartsDisplayerBloc!,
        super(
          // Set inital state
          0,
        ) {
    // Register event handlers
    on<Started>(
      (_, emit) async => _handleStarted(emit),
      transformer: restartable(), // TODO test restarability
    );
    on<UndoPressed>((_, __) => _handleUndoPressed());
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
        return dartsDisplayerState.when(
          // when 0 darts emit 0
          empty: () => 0,
          // when more than 0 darts
          notEmpty: (darts) {
            // calculate points as the sum of all darts' points
            final int points =
                darts.getOrCrash().fold(0, (acc, dart) => acc + dart.points());

            //  emit calculated points
            return points;
          },
        );
      },
    );
  }

  /// Handle incoming [UndoPressed] event.
  void _handleUndoPressed() {
    // undo throw
    _trainingService.undoThrow();

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
        // perform throw with 3 darts with 0 points
        _trainingService.performThrow(
          t: Throw.fromDarts(List.empty(), 0),
        );
      },
      // when the user did at least input 1 dart
      notEmpty: (darts) {
        // perform throw
        _trainingService.performThrow(
          t: Throw.fromDarts(darts.getOrCrash().asList(), 0),
        );
      },
    );

    // reset darts displayer
    _dartsDisplayerBloc.add(const DartsDisplayerEvent.resetRequested());
  }
}
