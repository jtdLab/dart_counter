import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/double_bobs_twenty_seven/key_board_event.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/double_bobs_twenty_seven/key_board_state.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/training/shared/in_game/input_area/double_bobs_twenty_seven/key_board_event.dart';
export 'package:dart_counter/application/main/training/shared/in_game/input_area/double_bobs_twenty_seven/key_board_state.dart';

@injectable
class KeyBoardBloc extends Bloc<KeyBoardEvent, KeyBoardState> {
  final IBobsTwentySevenService _trainingService;

  final DartsDisplayerBloc _dartsDisplayerBloc;

  KeyBoardBloc(
    this._trainingService,
    @factoryParam DartsDisplayerBloc? dartsDisplayerBloc,
  )   : _dartsDisplayerBloc = dartsDisplayerBloc!,
        super(
          // set initial state
          const KeyBoardState.initial(),
        ) {
    // register event handlers
    on<DoubleHitPressed>((_, __) => _mapDoubleHitPressedToState());
    on<MissHitPressed>((_, __) => _mapMissHitPressedToState());
    on<EreasePressed>((_, __) => _mapEreasePressedToState());
  }

  void _mapDoubleHitPressedToState() {
    // add dart to darts displayer
    _dartsDisplayerBloc.add(
      DartsDisplayerEvent.dartAdded(
        dart: Dart(value: _getCurrentTurnTargetValue(), type: DartType.double),
      ),
    );
  }

  void _mapMissHitPressedToState() {
    /**
     * // add dart to darts displayer
    _dartsDisplayerBloc.add(
      DartsDisplayerEvent.dartAdded(
        dart: Dart(value: _getCurrentTurnTargetValue(), type: DartType.single),
      ),
    );
     */

    // TODO implement
    throw UnimplementedError();
  }

  void _mapEreasePressedToState() {
    // remove dart from darts displayer
    _dartsDisplayerBloc.add(const DartsDisplayerEvent.dartRemoved());
  }

  /// Returns the target value of the current turn of the currently running game.
  int _getCurrentTurnTargetValue() {
    return _trainingService.getGame().currentTurn().targetValue;
  }
}
