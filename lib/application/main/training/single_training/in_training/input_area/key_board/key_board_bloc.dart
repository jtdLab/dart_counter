import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'key_board_bloc.freezed.dart';
part 'key_board_event.dart';
part 'key_board_state.dart';

@injectable
class KeyBoardBloc extends Bloc<KeyBoardEvent, KeyBoardState> {
  final ISingleTrainingService _trainingService;

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
    on<_SingleHitPressed>((_, __) => _mapSingleHitPressedToState());
    on<_DoubleHitPressed>((_, __) => _mapDoubleHitPressedToState());
    on<_TripleHitPressed>((_, __) => _mapTripleHitPressedToState());
    on<_MissHitPressed>((_, __) => _mapMissHitPressedToState());
    on<_EreasePressed>((_, __) => _mapEreasePressedToState());
  }

  /// handle incoming [_SingleHitPressed] event.
  void _mapSingleHitPressedToState() {
    // add single to dart displayer
    _dartsDisplayerBloc.add(
      DartsDisplayerEvent.dartAdded(
        dart: Dart(value: _getCurrentTurnTargetValue(), type: DartType.single),
      ),
    );
  }

  /// handle incoming [_DoubleHitPressed] event.
  void _mapDoubleHitPressedToState() {
    // add double to dart displayer
    _dartsDisplayerBloc.add(
      DartsDisplayerEvent.dartAdded(
        dart: Dart(value: _getCurrentTurnTargetValue(), type: DartType.double),
      ),
    );
  }

  /// handle incoming [_TripleHitPressed] event.
  void _mapTripleHitPressedToState() {
    // add triple to dart displayer
    _dartsDisplayerBloc.add(
      DartsDisplayerEvent.dartAdded(
        dart: Dart(value: _getCurrentTurnTargetValue(), type: DartType.triple),
      ),
    );
  }

  /// handle incoming [_MissHitPressed] event.
  void _mapMissHitPressedToState() {
    // add missed dart to dart displayer
    _dartsDisplayerBloc.add(
      const DartsDisplayerEvent.dartAdded(dart: Dart.missed),
    );
  }

  /// handle incoming [_EreasePressed] event.
  void _mapEreasePressedToState() {
    // remove dart from darts displayer
    _dartsDisplayerBloc.add(const DartsDisplayerEvent.dartRemoved());
  }

  /// returns the target value of the current turn of the currently running game.
  int _getCurrentTurnTargetValue() {
    return _trainingService.getGame().currentTurn().targetValue;
  }
}
