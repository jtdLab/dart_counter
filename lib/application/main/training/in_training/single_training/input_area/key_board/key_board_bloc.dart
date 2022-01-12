import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/training/in_training/single_training/darts_displayer/darts_displayer_bloc.dart';
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

  void _mapSingleHitPressedToState() {
    // notify darts displayer bloc
    _dartsDisplayerBloc.add(
      DartsDisplayerEvent.dartAdded(
        dart: Dart(value: _getCurrentTurnTargetValue(), type: DartType.single),
      ),
    );
  }

  void _mapDoubleHitPressedToState() {
    // notify darts displayer bloc
    _dartsDisplayerBloc.add(
      DartsDisplayerEvent.dartAdded(
        dart: Dart(value: _getCurrentTurnTargetValue(), type: DartType.single),
      ),
    );
  }

  void _mapTripleHitPressedToState() {
    // notify darts displayer bloc
    _dartsDisplayerBloc.add(
      DartsDisplayerEvent.dartAdded(
        dart: Dart(value: _getCurrentTurnTargetValue(), type: DartType.single),
      ),
    );
  }

  void _mapMissHitPressedToState() {
    // notify darts displayer bloc
    _dartsDisplayerBloc.add(
      DartsDisplayerEvent.dartAdded(
        dart: Dart(value: _getCurrentTurnTargetValue(), type: DartType.single),
      ),
    );
  }

  void _mapEreasePressedToState() {
    // notify darts displayer bloc
    _dartsDisplayerBloc.add(const DartsDisplayerEvent.dartRemoved());
  }

  /// returns the target value of the current turn of the currently running game.
  int _getCurrentTurnTargetValue() {
    return _trainingService.getGame().currentTurn().targetValue;
  }
}
