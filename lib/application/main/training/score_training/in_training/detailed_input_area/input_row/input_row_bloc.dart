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
      (_, emit) async => _mapStartedToState(emit),
      transformer: restartable(), // TODO test restarability
    );
    on<UndoPressed>((_, __) => _mapUndoPressedToState());
    on<CommitPressed>((_, emit) => _mapCommitPressedToState(emit));
    // TODO remove this  handler
    on<InputChanged>((event, emit) => _mapInputChangedToState(event, emit));
  }

  /// Handle incoming [Started] event.
  Future<void> _mapStartedToState(
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
            final int points = darts.getOrCrash().fold(
              0,
              (acc, dart) {
                final multiplier = dart.type == DartType.missed
                    ? 0
                    : dart.type == DartType.single
                        ? 1
                        : dart.type == DartType.double
                            ? 2
                            : 3;

                return acc + multiplier * dart.value;
              },
            );

            //  emit calculated points
            return points;
          },
        );
      },
    );
  }

  /// Handle incoming [UndoPressed] event.
  void _mapUndoPressedToState() {
    // undo throw
    _trainingService.undoThrow();

    // reset darts displayer
    _dartsDisplayerBloc.add(const DartsDisplayerEvent.resetRequested());
  }

  void _mapCommitPressedToState(
    Emitter<int> emit,
  ) {
    _dartsDisplayerBloc.state.when(
      // when the user did not input any darts
      empty: () {
        // perform throw with 3 darts with 0 points
        // TODO filling should be done in service/modal
        _trainingService.performThrow(
          t: Throw.fromDarts(
            List.generate(
              3,
              (_) => Dart.missed,
            ),
            0,
          ),
        );
      },
      // when the user did at least input 1 dart
      notEmpty: (darts) {
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

        // commit converted hits
        _trainingService.performThrow(
          t: Throw.fromDarts(filledDarts, 0),
        );
      },
    );

    // reset darts displayer
    _dartsDisplayerBloc.add(const DartsDisplayerEvent.resetRequested());
  }

  /// Handle incoming [InputChanged] event.
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
