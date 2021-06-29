import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'input_area_event.dart';
part 'input_area_state.dart';
part 'input_area_bloc.freezed.dart';

@injectable
class InputAreaBloc extends Bloc<InputAreaEvent, InputAreaState> {
  final IPlayFacade _playFacade;

  InputAreaBloc(this._playFacade)
      : super(const InputAreaState(input: 0, showCheckoutDetails: false));

  @override
  Stream<InputAreaState> mapEventToState(
    InputAreaEvent event,
  ) async* {
    yield* event.map(
      undoThrowPressed: (_) => _mapUndoThrowPressedToState(),
      performThrowPressed: (_) => _mapPerformThrowPressedToState(),
      checkPressed: (_) => _mapCheckPressedToState(),
      erasePressed: (_) => _mapErasePressedToState(),
      digitPressed: (event) => _mapDigitPressedToState(event),
    );
  }

  Stream<InputAreaState> _mapUndoThrowPressedToState() async* {
    _playFacade.undoThrow();
  }

  Stream<InputAreaState> _mapErasePressedToState() async* {
    final input = state.input;

    if (input < 10) {
      yield const InputAreaState(input: 0, showCheckoutDetails: false);
    } else {
      final inputString = input.toString();
      final newInput =
          int.parse(inputString.substring(0, inputString.length - 1));
      yield InputAreaState(input: newInput, showCheckoutDetails: false);
    }
  }

  Stream<InputAreaState> _mapPerformThrowPressedToState() async* {
    final pointsLeftCurrentTurn = _playFacade.game!.currentTurn().pointsLeft;
    final pointsScored = state.input;

    // TODO if dart on double was possible considering pointsScored and currentTurnPointsLeft
    if (pointsLeftCurrentTurn <= 170) {
      yield state.copyWith(showCheckoutDetails: true);
    } else {
      _playFacade.performThrow(
        t: Throw(
          points: pointsScored,
          dartsThrown: 3,
          dartsOnDouble: 0,
        ),
      );
      yield const InputAreaState(input: 0, showCheckoutDetails: false);
    }
  }

  Stream<InputAreaState> _mapCheckPressedToState() async* {
    final pointsLeftCurrentTurn = _playFacade.game!.currentTurn().pointsLeft;

    // TODO if pointsLeftCurrentTurn is finish
    if (pointsLeftCurrentTurn <= 170) {
      yield state.copyWith(input: pointsLeftCurrentTurn);
      // TODO if not 3 dart finish
      if (pointsLeftCurrentTurn <= 110) {
        yield state.copyWith(showCheckoutDetails: true);
      } else {
        // 3 dart finish
        _playFacade.performThrow(
          t: Throw(
            points: pointsLeftCurrentTurn,
            dartsThrown: 3,
            dartsOnDouble: 1,
          ),
        );
        yield const InputAreaState(input: 0, showCheckoutDetails: false);
      }
    }
  }

  Stream<InputAreaState> _mapDigitPressedToState(DigitPressed event) async* {
    final digit = event.digit;
    final currentInput = state.input;
    final newInput = int.parse(currentInput.toString() + digit.toString());

    final valid = newInput <= 180;
    // TODO validate more

    if (valid) {
      yield InputAreaState(input: newInput, showCheckoutDetails: false);
    }
  }
}
