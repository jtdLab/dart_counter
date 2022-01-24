import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'key_board_bloc.freezed.dart';
part 'key_board_event.dart';
part 'key_board_state.dart';

// TODO single_training_key_board_bloc real doc this is just a blueprint
/// {@template single_training_key_board_bloc}
/// A [InTrainingBloc] is an actor bloc that performs actions on a [AbstractITrainingService].
///
/// Supported actions:
///
/// 1. Cancel training.
///
/// {@endtemplate}
@injectable
class KeyBoardBloc extends Bloc<KeyBoardEvent, KeyBoardState> {
  final ISingleTrainingService _trainingService;

  final DartsDisplayerBloc _dartsDisplayerBloc;

  /// {@macro single_training_key_board_bloc}
  KeyBoardBloc(
    this._trainingService,
    @factoryParam DartsDisplayerBloc? dartsDisplayerBloc,
  )   : _dartsDisplayerBloc = dartsDisplayerBloc!,
        super(
          // Set initial state
          const KeyBoardState.initial(),
        ) {
    // Register event handlers
    on<_SingleHitPressed>((_, __) => _handleSingleHitPressed());
    on<_DoubleHitPressed>((_, __) => _handleDoubleHitPressed());
    on<_TripleHitPressed>((_, __) => _handleTripleHitPressed());
    on<_MissHitPressed>((_, __) => _handleMissHitPressed());
    on<_EreasePressed>((_, __) => _handleEreasePressed());
  }

  /// Handle incoming [_SingleHitPressed] event.
  void _handleSingleHitPressed() {
    // add single to dart displayer
    _dartsDisplayerBloc.add(
      DartsDisplayerEvent.dartAdded(
        dart: Dart(value: _getCurrentTurnTargetValue(), type: DartType.single),
      ),
    );
  }

  /// Handle incoming [_DoubleHitPressed] event.
  void _handleDoubleHitPressed() {
    // add double to dart displayer
    _dartsDisplayerBloc.add(
      DartsDisplayerEvent.dartAdded(
        dart: Dart(value: _getCurrentTurnTargetValue(), type: DartType.double),
      ),
    );
  }

  /// Handle incoming [_TripleHitPressed] event.
  void _handleTripleHitPressed() {
    // add triple to dart displayer
    _dartsDisplayerBloc.add(
      DartsDisplayerEvent.dartAdded(
        dart: Dart(value: _getCurrentTurnTargetValue(), type: DartType.triple),
      ),
    );
  }

  /// Handle incoming [_MissHitPressed] event.
  void _handleMissHitPressed() {
    // add missed dart to dart displayer
    _dartsDisplayerBloc.add(
      const DartsDisplayerEvent.dartAdded(dart: Dart.missed),
    );
  }

  /// Handle incoming [_EreasePressed] event.
  void _handleEreasePressed() {
    // remove dart from darts displayer
    _dartsDisplayerBloc.add(const DartsDisplayerEvent.dartRemoved());
  }

  /// Returns the target value of the current turn of the currently running game.
  int _getCurrentTurnTargetValue() {
    return _trainingService.getGame().currentTurn().targetValue;
  }
}
