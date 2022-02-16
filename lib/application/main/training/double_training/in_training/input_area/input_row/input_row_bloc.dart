import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/main/shared/input_row/input_row_event.dart';
import 'package:dart_counter/application/main/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/training/double/i_double_training_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

export 'package:dart_counter/application/main/shared/input_row/input_row_event.dart';

// TODO add test case for not exisiting input changed

// TODO double_training_input_row_bloc real doc this is just a blueprint
/// {@template double_training_input_row_bloc}
/// {@endtemplate}
@injectable
class InputRowBloc extends Bloc<InputRowEvent, int> {
  final IDoubleTrainingService _trainingService;

  final DartsDisplayerBloc _dartsDisplayerBloc;

  /// {@macro double_training_input_row_bloc}
  InputRowBloc(
    this._trainingService,
    this._dartsDisplayerBloc,
  ) : super(
          // Set inital state
          0,
        ) {
    // Register event handlers
    on<Started>(
      (_, emit) async => _handleStarted(emit),
      transformer: restartable(), // TODO restartabled test case
    );
    on<UndoPressed>((_, __) => _handleUndoPressed());
    on<CommitPressed>((_, emit) => _handleCommitPressed(emit));
  }

  /// Returns instance registered inside getIt.
  factory InputRowBloc.getIt(
    DartsDisplayerBloc dartsDisplayerBloc,
  ) =>
      getIt<InputRowBloc>(
        param1: [dartsDisplayerBloc],
      );

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of [DartsDisplayerBloc].
  @factoryMethod
  factory InputRowBloc.injectable(
    IDoubleTrainingService doubleTrainingService,
    @factoryParam List<Object>? otherDependencies,
  ) =>
      InputRowBloc(
        doubleTrainingService,
        otherDependencies![0] as DartsDisplayerBloc,
      );

  /// Handle incoming [Started] event.
  Future<void> _handleStarted(
    Emitter<int> emit,
  ) async {
    // for each incoming darts
    await emit.forEach<DartsDisplayerState>(
      _dartsDisplayerBloc.stream,
      onData: (dartsDisplayerState) {
        return dartsDisplayerState.when(
          // when empty emit 0
          empty: () => 0,
          // when not empty
          notEmpty: (darts) {
            // emit points calculated from darts
            return darts
                .getOrCrash()
                .fold(0, (acc, dart) => acc + dart.points());
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
        // perform throw with 3 missed darts
        _trainingService.performThrow(
          t: Throw.fromDarts(List.empty(), 3),
        );
      },
      // when the user did at least input 1 dart
      notEmpty: (darts) {
        // perform throw with darts put in by the user
        _trainingService.performThrow(
          t: Throw.fromDarts(darts.getOrCrash().asList(), darts.length),
        );
      },
    );

    // reset darts displayer
    _dartsDisplayerBloc.add(const DartsDisplayerEvent.resetRequested());
  }
}
