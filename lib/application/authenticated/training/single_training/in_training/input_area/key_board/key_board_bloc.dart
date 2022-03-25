import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/authenticated/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'key_board_bloc.freezed.dart';
part 'key_board_event.dart';

// TODO single_training_key_board_bloc real doc this is just a blueprint
/// {@template single_training_key_board_bloc}
/// {@endtemplate}
@injectable
class KeyBoardBloc extends Bloc<KeyBoardEvent, void> {
  final ISingleTrainingService _trainingService;

  final DartsDisplayerBloc _dartsDisplayerBloc;

  /// {@macro single_training_key_board_bloc}
  KeyBoardBloc(
    this._trainingService,
    this._dartsDisplayerBloc,
  ) : super(
          // Set initial state
          null,
        ) {
    // Register event handlers
    on<_SinglePressed>((_, __) => _handleSinglePressed());
    on<_DoublePressed>((_, __) => _handleDoublePressed());
    on<_TriplePressed>((_, __) => _handleTriplePressed());
    on<_MissedPressed>((_, __) => _handleMissedPressed());
    on<_EreasePressed>((_, __) => _handleEreasePressed());
  }

  /// Returns instance registered inside getIt.
  factory KeyBoardBloc.getIt(
    DartsDisplayerBloc dartsDisplayerBloc,
  ) =>
      getIt<KeyBoardBloc>(
        param1: [dartsDisplayerBloc],
      );

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of `DartsDisplayerBloc`
  @factoryMethod
  factory KeyBoardBloc.injectable(
    ISingleTrainingService singleTrainingService,
    @factoryParam List<Object> otherDependencies,
  ) =>
      KeyBoardBloc(
        singleTrainingService,
        otherDependencies[0] as DartsDisplayerBloc,
      );

  /// Handle incoming [_SinglePressed] event.
  void _handleSinglePressed() {
    // add single to dart displayer
    _dartsDisplayerBloc.add(
      DartsDisplayerEvent.dartAdded(
        dart: Dart(value: _getCurrentTurnTargetValue(), type: DartType.single),
      ),
    );
  }

  /// Handle incoming [_DoublePressed] event.
  void _handleDoublePressed() {
    // add double to dart displayer
    _dartsDisplayerBloc.add(
      DartsDisplayerEvent.dartAdded(
        dart: Dart(value: _getCurrentTurnTargetValue(), type: DartType.double),
      ),
    );
  }

  /// Handle incoming [_TriplePressed] event.
  void _handleTriplePressed() {
    // add triple to dart displayer
    _dartsDisplayerBloc.add(
      DartsDisplayerEvent.dartAdded(
        dart: Dart(value: _getCurrentTurnTargetValue(), type: DartType.triple),
      ),
    );
  }

  /// Handle incoming [_MissedPressed] event.
  void _handleMissedPressed() {
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
