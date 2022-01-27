import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_training/input_area/double_bobs_twenty_seven/key_board_event.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/training/shared/in_training/input_area/double_bobs_twenty_seven/key_board_event.dart';

// TODO bobs_twenty_seven_training_key_board_bloc real doc this is just a blueprint
/// {@template bobs_twenty_seven_training_key_board_bloc}
/// A [InTrainingBloc] is an actor bloc that performs actions on a [AbstractITrainingService].
///
/// Supported actions:
///
/// 1. Cancel training.
///
/// {@endtemplate}
@injectable
class KeyBoardBloc extends Bloc<KeyBoardEvent, void> {
  final IBobsTwentySevenService _trainingService;

  final DartsDisplayerBloc _dartsDisplayerBloc;

  /// {@macro bobs_twenty_seven_training_key_board_bloc}
  KeyBoardBloc(
    this._trainingService,
    @factoryParam DartsDisplayerBloc? dartsDisplayerBloc,
  )   : _dartsDisplayerBloc = dartsDisplayerBloc!,
        super(
          // Set initial state
          null,
        ) {
    // Register event handlers
    on<DoublePressed>((_, __) => _handleDoublePressed());
    on<MissedPressed>((_, __) => _handleMissedPressed());
    on<EreasePressed>((_, __) => _handleEreasePressed());
  }

  /// Handle incoming [DoublePressed] event.
  void _handleDoublePressed() {
    // add double to darts displayer
    _dartsDisplayerBloc.add(
      DartsDisplayerEvent.dartAdded(
        dart: Dart(value: _getCurrentTurnTargetValue(), type: DartType.double),
      ),
    );
  }

  /// Handle incoming [MissedPressed] event.
  void _handleMissedPressed() {
    // add missed dart to dart displayer
    _dartsDisplayerBloc.add(
      const DartsDisplayerEvent.dartAdded(dart: Dart.missed),
    );
  }

  /// Handle incoming [EreasePressed] event.
  void _handleEreasePressed() {
    // remove dart from darts displayer
    _dartsDisplayerBloc.add(const DartsDisplayerEvent.dartRemoved());
  }

  /// Returns the target value of the current turn of the currently running game.
  int _getCurrentTurnTargetValue() {
    return _trainingService.getGame().currentTurn().targetValue;
  }
}
