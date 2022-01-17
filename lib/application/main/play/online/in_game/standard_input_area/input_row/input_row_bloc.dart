import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/play/online/in_game/in_online_game_bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/input_row/input_row_event.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/training/shared/in_game/input_area/input_row/input_row_event.dart';

@injectable
class InputRowBloc extends Bloc<InputRowEvent, int> {
  final IPlayOnlineService _playService;

  final IDartUtils _dartUtils;

  final InOnlineGameBloc _inOnlineGameBloc;

  InputRowBloc(
    this._playService,
    this._dartUtils,
    @factoryParam InOnlineGameBloc? inOnlineGameBloc,
  )   : _inOnlineGameBloc = inOnlineGameBloc!,
        // set inital state
        super(0) {
    // register event handlers
    on<UndoPressed>((_, emit) => _mapUndoPressedToState(emit));
    on<CommitPressed>((_, emit) => _mapCommitPressedToState(emit));
    on<InputChanged>((event, emit) => _mapInputChangedToState(event, emit));
  }

  void _mapUndoPressedToState(
    Emitter<int> emit,
  ) {
    // undo throw
    _playService.undoThrow();

    // reset input
    emit(0);
  }

  void _mapCommitPressedToState(
    Emitter<int> emit,
  ) {
    // read points
    final points = state;

    // read points left of current turn
    final pointsLeft = _playService.getGame().currentTurn().pointsLeft;

    final minDartsThrown =
        _dartUtils.minDartsThrown(pointsLeft: pointsLeft, points: points);

    final maxDartsThrown =
        _dartUtils.maxDartsThrown(points: points, pointsLeft: pointsLeft);

    final minDartsOnDouble =
        _dartUtils.minDartsOnDouble(points: points, pointsLeft: pointsLeft);

    final maxDartsOnDouble =
        _dartUtils.maxDartsOnDouble(points: points, pointsLeft: pointsLeft);

    final showCheckoutDetails = !(minDartsThrown == maxDartsThrown &&
        minDartsOnDouble == maxDartsOnDouble);

    // when dartsThrown and dartsOnDouble can not be implied from points and pointsLeft
    if (showCheckoutDetails) {
      // request show checkout details dialog
      _inOnlineGameBloc.add(
        const InGameEvent.showCheckoutDetailsChanged(
          newShowCheckoutDetails: true,
        ),
      );
      // else perform throw with the implied dartsThrown and dartsOnDouble
    } else {
      // perform throw with current input
      _playService.performThrow(
        t: Throw(
          points: points,
          dartsThrown: minDartsThrown,
          dartsOnDouble: minDartsOnDouble,
        ),
      );

      // reset input
      emit(0);
    }
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
