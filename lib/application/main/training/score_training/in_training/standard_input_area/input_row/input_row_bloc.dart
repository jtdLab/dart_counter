import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/shared/input_row/input_row_event.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/shared/input_row/input_row_event.dart';

@injectable
class InputRowBloc extends Bloc<InputRowEvent, int> {
  final IScoreTrainingService _trainingService;

  InputRowBloc(
    this._trainingService,
  ) : super(
          // Set inital state
          0,
        ) {
    // Register event handlers
    on<UndoPressed>((_, emit) => _handleUndoPressed(emit));
    on<CommitPressed>((_, emit) => _handleCommitPressed(emit));
    on<InputChanged>((event, emit) => _handleInputChanged(event, emit));
  }

  /// Returns instance registered inside getIt.
  factory InputRowBloc.getIt() => getIt<InputRowBloc>();

  /// Handle incoming [UndoPressed] event.
  void _handleUndoPressed(
    Emitter<int> emit,
  ) {
    // undo throw
    _trainingService.undoThrow();

    // reset input
    emit(0);
  }

  /// Handle incoming [CommitPressed] event.
  void _handleCommitPressed(
    Emitter<int> emit,
  ) {
    // perform throw with current input
    _trainingService.performThrow(
      t: Throw(points: state, dartsThrown: 3, dartsOnDouble: 0),
    );

    // reset input
    emit(0);
  }

  /// Handle incoming [InputChanged] event.
  void _handleInputChanged(
    InputChanged event,
    Emitter<int> emit,
  ) {
    // incoming new input
    final newInput = event.newInput;

    // emit new input
    emit(newInput);
  }
}
