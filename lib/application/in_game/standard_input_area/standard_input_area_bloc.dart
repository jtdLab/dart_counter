import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/in_game/in_game_bloc.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'standard_input_area_event.dart';
part 'standard_input_area_state.dart';
part 'standard_input_area_bloc.freezed.dart';

@lazySingleton
class StandardInputAreaBloc
    extends Bloc<StandardInputAreaEvent, StandardInputAreaState>
    with AutoResetLazySingleton {
  final IPlayFacade _playFacade;

  final InGameBloc _inGameBloc;

  StandardInputAreaBloc(
    this._playFacade,
    this._inGameBloc,
  ) : super(
          StandardInputAreaState.initial(),
        );

  @override
  Stream<StandardInputAreaState> mapEventToState(
    StandardInputAreaEvent event,
  ) async* {
    yield* event.map(
      undoThrowPressed: (_) => _mapUndoThrowPressedToState(),
      performThrowPressed: (_) => _mapPerformThrowPressedToState(),
      checkPressed: (_) => _mapcheckPressedToState(),
      erasePressed: (_) => _mapErasePressedToState(),
      digitPressed: (event) => _mapDigitPressedToState(event),
    );
  }

  Stream<StandardInputAreaState> _mapUndoThrowPressedToState() async* {
    await _playFacade.undoThrow();
  }

  Stream<StandardInputAreaState> _mapPerformThrowPressedToState() async* {
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
      yield state.copyWith(
        input: 0,
      );
    }
  }

  Stream<StandardInputAreaState> _mapcheckPressedToState() async* {
    final pointsLeftCurrentTurn =
        _inGameBloc.state.game.currentTurn().pointsLeft;

    final isFinish = pointsLeftCurrentTurn <= 170; // TODO real finish check
    if (isFinish) {
      yield state.copyWith(
        input: pointsLeftCurrentTurn,
      );

      final minDartsThrown = _playFacade.minDartsThrown(
        points: pointsLeftCurrentTurn,
        pointsLeft: pointsLeftCurrentTurn,
      );
      final maxDartsThrown = _playFacade.maxDartsThrown(
        points: pointsLeftCurrentTurn,
        pointsLeft: pointsLeftCurrentTurn,
      );

      final minDartsOnDouble = _playFacade.minDartsOnDouble(
        points: pointsLeftCurrentTurn,
        pointsLeft: pointsLeftCurrentTurn,
      );
      final maxDartsOnDouble = _playFacade.maxDartsOnDouble(
        points: pointsLeftCurrentTurn,
        pointsLeft: pointsLeftCurrentTurn,
      );

      final showCheckoutDetails = !(minDartsThrown == maxDartsThrown &&
          minDartsOnDouble == maxDartsOnDouble);

      if (showCheckoutDetails) {
        _inGameBloc.add(const InGameEvent.showCheckoutDetailsRequested());
      } else {
        _playFacade.performThrow(
          t: Throw(
            points: pointsLeftCurrentTurn,
            dartsThrown: 3,
            dartsOnDouble: 1,
          ),
        );
        yield state.copyWith(
          input: 0,
        );
      }
    }
  }

  Stream<StandardInputAreaState> _mapErasePressedToState() async* {
    final currentInput = state.input;

    if (currentInput < 10) {
      yield state.copyWith(
        input: 0,
      );
    } else {
      final inputString = currentInput.toString();
      final newInput = int.parse(
        inputString.substring(0, inputString.length - 1),
      );
      yield state.copyWith(
        input: newInput,
      );
    }
  }

  Stream<StandardInputAreaState> _mapDigitPressedToState(
    DigitPressed event,
  ) async* {
    final currentInput = state.input;
    final newInput = int.parse(
      currentInput.toString() + event.digit.toString(),
    );

    final valid = newInput <= 180;
    // TODO validate more

    if (valid) {
      yield state.copyWith(
        input: newInput,
      );
    }
  }
}
