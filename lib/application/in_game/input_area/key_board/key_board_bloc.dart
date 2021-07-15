import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/in_game/in_game_bloc.dart';
import 'package:dart_counter/application/in_game/input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'key_board_bloc.freezed.dart';
part 'key_board_event.dart';
part 'key_board_state.dart';

@lazySingleton
class KeyBoardBloc extends Bloc<KeyBoardEvent, KeyBoardState>
    with AutoResetLazySingleton {
  final IPlayFacade _playFacade;

  final InGameBloc _inGameBloc;
  final InputRowBloc _inputRowBloc;

  KeyBoardBloc(
    this._playFacade,
    this._inGameBloc,
    this._inputRowBloc,
  ) : super(const KeyBoardState.initial());

  @override
  Stream<KeyBoardState> mapEventToState(
    KeyBoardEvent event,
  ) async* {
    yield* event.map(
      checkPressed: (_) => _mapCheckPressedToState(),
      erasePressed: (_) => _mapErasePressedToState(),
      digitPressed: (event) => _mapDigitPressedToState(event),
    );
  }

  Stream<KeyBoardState> _mapCheckPressedToState() async* {
    final pointsLeftCurrentTurn =
        _inGameBloc.state.game.currentTurn().pointsLeft;

    final isFinish = pointsLeftCurrentTurn <= 170; // TODO real finish check
    if (isFinish) {
      _inputRowBloc.add(
        InputRowEvent.inputUpdated(newInput: pointsLeftCurrentTurn),
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
        _inputRowBloc.add(
          const InputRowEvent.inputUpdated(newInput: 0),
        );
      }
    }
  }

  Stream<KeyBoardState> _mapErasePressedToState() async* {
    final currentInput = _inputRowBloc.state.input;

    if (currentInput < 10) {
      _inputRowBloc.add(const InputRowEvent.inputUpdated(newInput: 0));
    } else {
      final inputString = currentInput.toString();
      final newInput = int.parse(
        inputString.substring(0, inputString.length - 1),
      );
      _inputRowBloc.add(InputRowEvent.inputUpdated(newInput: newInput));
    }
  }

  Stream<KeyBoardState> _mapDigitPressedToState(
    DigitPressed event,
  ) async* {
    final currentInput = _inputRowBloc.state.input;
    final newInput = int.parse(
      currentInput.toString() + event.digit.toString(),
    );

    final valid = newInput <= 180;
    // TODO validate more

    if (valid) {
      _inputRowBloc.add(InputRowEvent.inputUpdated(newInput: newInput));
    }
  }
}
