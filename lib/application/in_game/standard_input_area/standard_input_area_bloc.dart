import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/in_game/in_game_bloc.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:dart_counter/domain/play/helpers.dart' as helpers;

part 'standard_input_area_event.dart';
part 'standard_input_area_state.dart';
part 'standard_input_area_bloc.freezed.dart';

@lazySingleton
class StandardInputAreaBloc
    extends Bloc<StandardInputAreaEvent, StandardInputAreaState>
    with AutoResetLazySingleton {
  final InGameBloc _inGameBloc;

  StandardInputAreaBloc(
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
    _inGameBloc.add(const InGameEvent.undoThrowPressed());
  }

  Stream<StandardInputAreaState> _mapPerformThrowPressedToState() async* {
    final pointsLeftCurrentTurn =
        _inGameBloc.state.gameSnapshot.currentTurn().pointsLeft;

    final minDartsThrown = helpers.minDartsThrown(
      points: _inGameBloc.state.inputOrDarts.swap().toOption().toNullable()!,
      pointsLeft: pointsLeftCurrentTurn,
    );
    final maxDartsThrown = helpers.maxDartsThrown(
      points: _inGameBloc.state.inputOrDarts.swap().toOption().toNullable()!,
      pointsLeft: pointsLeftCurrentTurn,
    );

    final minDartsOnDouble = helpers.minDartsOnDouble(
      points: _inGameBloc.state.inputOrDarts.swap().toOption().toNullable()!,
      pointsLeft: pointsLeftCurrentTurn,
    );
    final maxDartsOnDouble = helpers.maxDartsOnDouble(
      points: _inGameBloc.state.inputOrDarts.swap().toOption().toNullable()!,
      pointsLeft: pointsLeftCurrentTurn,
    );

    final showCheckoutDetails = !(minDartsThrown == maxDartsThrown &&
        minDartsOnDouble == maxDartsOnDouble);

    if (showCheckoutDetails) {
      yield state.copyWith(showCheckoutDetails: true);
      yield state.copyWith(showCheckoutDetails: false);
    } else {
      _inGameBloc.add(
        InGameEvent.performThrowPressed(
          t: Throw(
            points:
                _inGameBloc.state.inputOrDarts.swap().toOption().toNullable()!,
            dartsThrown: minDartsThrown,
            dartsOnDouble: minDartsOnDouble,
          ),
        ),
      );
    }
  }

  Stream<StandardInputAreaState> _mapcheckPressedToState() async* {
    final pointsLeftCurrentTurn =
        _inGameBloc.state.gameSnapshot.currentTurn().pointsLeft;

    final isFinish = helpers.isFinish(points: pointsLeftCurrentTurn);
    if (isFinish) {
      _inGameBloc.add(
        InGameEvent.inputOrDartsChanged(
          newInputOrDarts: left(pointsLeftCurrentTurn),
        ),
      );

      final minDartsThrown = helpers.minDartsThrown(
        points: pointsLeftCurrentTurn,
        pointsLeft: pointsLeftCurrentTurn,
      );
      final maxDartsThrown = helpers.maxDartsThrown(
        points: pointsLeftCurrentTurn,
        pointsLeft: pointsLeftCurrentTurn,
      );

      final minDartsOnDouble = helpers.minDartsOnDouble(
        points: pointsLeftCurrentTurn,
        pointsLeft: pointsLeftCurrentTurn,
      );
      final maxDartsOnDouble = helpers.maxDartsOnDouble(
        points: pointsLeftCurrentTurn,
        pointsLeft: pointsLeftCurrentTurn,
      );

      final showCheckoutDetails = !(minDartsThrown == maxDartsThrown &&
          minDartsOnDouble == maxDartsOnDouble);

      if (showCheckoutDetails) {
        yield state.copyWith(showCheckoutDetails: true);
        yield state.copyWith(showCheckoutDetails: false);
      } else {
        _inGameBloc.add(
          InGameEvent.performThrowPressed(
            t: Throw(
              points: pointsLeftCurrentTurn,
              dartsThrown: 3,
              dartsOnDouble: 1,
            ),
          ),
        );
      }
    }
  }

  Stream<StandardInputAreaState> _mapErasePressedToState() async* {
    final currentInput =
        _inGameBloc.state.inputOrDarts.swap().toOption().toNullable()!;

    if (currentInput < 10) {
      _inGameBloc.add(
        InGameEvent.inputOrDartsChanged(
          newInputOrDarts: left(0),
        ),
      );
    } else {
      final inputString = currentInput.toString();
      final newInput = int.parse(
        inputString.substring(0, inputString.length - 1),
      );

      _inGameBloc.add(
        InGameEvent.inputOrDartsChanged(
          newInputOrDarts: left(newInput),
        ),
      );
    }
  }

  Stream<StandardInputAreaState> _mapDigitPressedToState(
    DigitPressed event,
  ) async* {
    final pointsLeftCurrentTurn =
        _inGameBloc.state.gameSnapshot.currentTurn().pointsLeft;

    final currentInput =
        _inGameBloc.state.inputOrDarts.swap().toOption().toNullable()!;
    final newInput = int.parse(
      currentInput.toString() + event.digit.toString(),
    );

    final valid = helpers.validatePoints(
      pointsLeft: pointsLeftCurrentTurn,
      points: newInput,
    );

    if (valid) {
      _inGameBloc.add(
        InGameEvent.inputOrDartsChanged(
          newInputOrDarts: left(newInput),
        ),
      );
    }
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<StandardInputAreaBloc>()) {
      getIt.resetLazySingleton<StandardInputAreaBloc>();
    }

    return super.close();
  }
}
