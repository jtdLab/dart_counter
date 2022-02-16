import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/main/shared/input_row/input_row_event.dart';
import 'package:dart_counter/application/main/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

export 'package:dart_counter/application/main/shared/input_row/input_row_event.dart';

// TODO add test case for not exisiting input changed

// TODO single_training_input_row_bloc real doc this is just a blueprint
/// {@template single_training_input_row_bloc}
/// {@endtemplate}
@injectable
class InputRowBloc extends Bloc<InputRowEvent, int> {
  final ISingleTrainingService _trainingService;

  final DartsDisplayerBloc _dartsDisplayerBloc;

  /// {@macro single_training_input_row_bloc}
  InputRowBloc(this._trainingService, this._dartsDisplayerBloc)
      : super(
          // Set inital state
          0,
        ) {
    // Register event handlers
    on<Started>(
      (_, emit) async => _handleStarted(emit),
      transformer: restartable(), // TODO test restartability
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
    ISingleTrainingService singleTrainingService,
    @factoryParam List<Object>? otherDependencies,
  ) =>
      InputRowBloc(
        singleTrainingService,
        otherDependencies![0] as DartsDisplayerBloc,
      );

  /// Handle incoming [Started] event.
  Future<void> _handleStarted(
    Emitter<int> emit,
  ) async {
    // for each incoming darts displayer state
    await emit.forEach<DartsDisplayerState>(
      _dartsDisplayerBloc.stream,
      onData: (dartsDisplayerState) => dartsDisplayerState.when(
        // when is empty emit 0
        empty: () => 0,
        // when is not empty emit sum of points calculated from darts
        // a single counts 1 point, a double counts 2 points, a triple counts 3 points
        notEmpty: (darts) => darts.getOrCrash().fold(
              0,
              (acc, dart) =>
                  acc +
                  (dart.type == DartType.missed
                      ? 0
                      : dart.type == DartType.single
                          ? 1
                          : dart.type == DartType.double
                              ? 2
                              : 3),
            ),
      ),
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
        _trainingService.performThrow(t: Throw.fromDarts(List.empty(), 0));
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
