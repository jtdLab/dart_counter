import 'dart:async';

import 'package:bloc/bloc.dart';
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
      : super(const InputAreaState(
          input: 0,
          showCheckoutDetails: false,
          minDartsThrown: 0,
          maxDartsThrown: 0,
          minDartsOnDouble: 0,
          maxDartsOnDouble: 0,
        ));

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
      yield const InputAreaState(
        input: 0,
        showCheckoutDetails: false,
        minDartsThrown: 0,
        maxDartsThrown: 0,
        minDartsOnDouble: 0,
        maxDartsOnDouble: 0,
      );
    } else {
      final inputString = input.toString();
      final newInput =
          int.parse(inputString.substring(0, inputString.length - 1));
      yield InputAreaState(
        input: newInput,
        showCheckoutDetails: false,
        minDartsThrown: 0,
        maxDartsThrown: 0,
        minDartsOnDouble: 0,
        maxDartsOnDouble: 0,
      );
    }
  }

  Stream<InputAreaState> _mapPerformThrowPressedToState() async* {
    final pointsLeftCurrentTurn = _playFacade.game!.currentTurn().pointsLeft;
    final pointsScored = state.input;

    final minDartsThrown = _playFacade.minDartsThrown(
      points: pointsScored,
      pointsLeft: pointsLeftCurrentTurn,
    );
    final maxDartsThrown = _playFacade.maxDartsThrown(
      points: pointsScored,
      pointsLeft: pointsLeftCurrentTurn,
    );

    final minDartsOnDouble = _playFacade.minDartsOnDouble(
      points: pointsScored,
      pointsLeft: pointsLeftCurrentTurn,
    );
    final maxDartsOnDouble = _playFacade.maxDartsOnDouble(
      points: pointsScored,
      pointsLeft: pointsLeftCurrentTurn,
    );

    if (minDartsThrown == maxDartsThrown &&
        minDartsOnDouble == maxDartsOnDouble) {
      _playFacade.performThrow(
        t: Throw(points: pointsScored, dartsThrown: 3, dartsOnDouble: 0),
      );
      yield const InputAreaState(
        input: 0,
        showCheckoutDetails: false,
        minDartsThrown: 0,
        maxDartsThrown: 0,
        minDartsOnDouble: 0,
        maxDartsOnDouble: 0,
      );
    } else {
      yield InputAreaState(
        input: pointsScored,
        showCheckoutDetails: true,
        minDartsThrown: minDartsThrown,
        maxDartsThrown: maxDartsThrown,
        minDartsOnDouble: minDartsOnDouble,
        maxDartsOnDouble: maxDartsOnDouble,
      );
      // TODO get return from ckd
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
        yield const InputAreaState(
          input: 0,
          showCheckoutDetails: false,
          minDartsThrown: 0,
          maxDartsThrown: 0,
          minDartsOnDouble: 0,
          maxDartsOnDouble: 0,
        );
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
      yield InputAreaState(
        input: newInput,
        showCheckoutDetails: false,
        minDartsThrown: 0,
        maxDartsThrown: 0,
        minDartsOnDouble: 0,
        maxDartsOnDouble: 0,
      );
    }
  }
}
