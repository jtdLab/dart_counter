import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/main/shared/input_row/input_row_event.dart';
import 'package:dart_counter/application/main/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/training/double/i_double_training_service.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

export 'package:dart_counter/application/main/shared/input_row/input_row_event.dart';

@injectable
class InputRowBloc extends Bloc<InputRowEvent, int> {
  final IDoubleTrainingService _trainingService;

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
        return dartsDisplayerState.when(
          // when 0 darts emit 0
          empty: () => 0,
          // when more than 0 darts
          notEmpty: (darts) {
            // emit points calculateed from darts
            return darts
                .getOrCrash()
                .fold(0, (acc, dart) => acc + dart.points());
          },
        );
      },
    );
  }

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
        // perform throw with 3 missed darts
        _trainingService.performThrow(
          t: Throw.fromDarts(List.generate(3, (index) => Dart.missed), 3),
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
