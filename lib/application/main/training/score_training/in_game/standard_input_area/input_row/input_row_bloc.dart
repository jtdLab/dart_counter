import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/input_row/input_row_event.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/training/shared/in_game/input_area/input_row/input_row_event.dart';

@injectable
class InputRowBloc extends Bloc<InputRowEvent, int> {
  final IScoreTrainingService _trainingService;

  InputRowBloc(
    this._trainingService,
    // set inital state
  ) : super(0) {
    // register event handlers
    on<UndoPressed>((_, __) => _mapUndoPressedToState());
    on<CommitPressed>((_, emit) => _mapCommitPressedToState(emit));
    on<InputChanged>((event, emit) => _mapInputChangedToState(event, emit));
  }

  void _mapUndoPressedToState() {
    // undo throw
    _trainingService.undoThrow();
  }

  void _mapCommitPressedToState(
    Emitter<int> emit,
  ) {
    // perform throw with current input
    _trainingService.performThrow(
      t: Throw(points: state, dartsThrown: 3, dartsOnDouble: 0),
    );
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
