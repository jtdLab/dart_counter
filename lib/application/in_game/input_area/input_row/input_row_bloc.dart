import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/in_game/in_game_bloc.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'input_row_bloc.freezed.dart';
part 'input_row_event.dart';
part 'input_row_state.dart';

@lazySingleton
class InputRowBloc extends Bloc<InputRowEvent, InputRowState>
    with AutoResetLazySingleton {
  final IPlayFacade _playFacade;
  
  final InGameBloc _inGameBloc;

  InputRowBloc(
    this._playFacade,
    this._inGameBloc,
  ) : super(InputRowState.initial());

  @override
  Stream<InputRowState> mapEventToState(
    InputRowEvent event,
  ) async* {
    yield* event.map(
      undoThrowPressed: (_) => _mapUndoThrowPressedToState(),
      performThrowPressed: (_) => _mapPerformThrowPressedToState(),
      inputUpdated: (event) => _mapInputUpdatedToState(event),
    );
  }

  Stream<InputRowState> _mapUndoThrowPressedToState() async* {
    await _playFacade.undoThrow();
  }

  Stream<InputRowState> _mapPerformThrowPressedToState() async* {
    final pointsLeftCurrentTurn =
        _inGameBloc.state.game.currentTurn().pointsLeft;

    final minDartsThrown = _playFacade.minDartsThrown(
      points: state.input,
      pointsLeft: pointsLeftCurrentTurn,
    );
    final maxDartsThrown = _playFacade.maxDartsThrown(
      points: state.input,
      pointsLeft: pointsLeftCurrentTurn,
    );

    final minDartsOnDouble = _playFacade.minDartsOnDouble(
      points: state.input,
      pointsLeft: pointsLeftCurrentTurn,
    );
    final maxDartsOnDouble = _playFacade.maxDartsOnDouble(
      points: state.input,
      pointsLeft: pointsLeftCurrentTurn,
    );

    final showCheckoutDetails = !(minDartsThrown == maxDartsThrown &&
        minDartsOnDouble == maxDartsOnDouble);

    if (showCheckoutDetails) {
      _inGameBloc.add(const InGameEvent.showCheckoutDetailsRequested());
    } else {
      _playFacade.performThrow(
        t: Throw(
          points: state.input,
          dartsThrown: minDartsThrown,
          dartsOnDouble: minDartsOnDouble,
        ),
      );
      yield const InputRowState(input: 0);
    }
  }

  Stream<InputRowState> _mapInputUpdatedToState(
    InputUpdated event,
  ) async* {
    yield InputRowState(input: event.newInput);
  }
}
