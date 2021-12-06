import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/show_checkout_details/show_checkout_details_cubit.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../in_game_event.dart';
import '../in_game_state.dart';

part 'standard_input_area_bloc.freezed.dart';
part 'standard_input_area_event.dart';
part 'standard_input_area_state.dart';

class StandardInputAreaBloc
    extends Bloc<StandardInputAreaEvent, StandardInputAreaState>
    with AutoResetLazySingleton {
  final PointsLeftCubit _pointsLeftCubit;
  final Bloc<InGameEvent, InGameState> _inGameBloc;
  final InputCubit _inputCubit;
  final ShowCheckoutDetailsCubit _showCheckoutDetailsCubit;

  final IDartUtils _dartUtils;

  StandardInputAreaBloc(
    this._pointsLeftCubit,
    this._inGameBloc,
    this._inputCubit,
    this._showCheckoutDetailsCubit,
    this._dartUtils,
  ) : super(const StandardInputAreaState.initial()) {
    on<_UndoThrowPressed>((_, __) => _mapUndoThrowPressedToState());
    on<_PerformThrowPressed>((_, __) => _mapPerformThrowPressedToState());
    on<_CheckPressed>((_, emit) => _mapCheckPressedToState(emit));
    on<_ErasePressed>((_, emit) => _mapErasePressedToState(emit));
    on<_DigitPressed>(_mapDigitPressedToState);
  }

  void _mapUndoThrowPressedToState() =>
      _inGameBloc.add(const InGameEvent.undoThrowPressed());

  void _mapPerformThrowPressedToState() => _showCheckoutDetailsOrPerformThrow();

  void _mapCheckPressedToState(
    Emitter<StandardInputAreaState> emit,
  ) {
    final pointsLeft = _pointsLeftCubit.state;

    final isFinish = _dartUtils.isFinish(points: pointsLeft);

    if (isFinish) {
      _inputCubit.update(newInput: left(pointsLeft));
      _showCheckoutDetailsOrPerformThrow();
    }
  }

  void _mapErasePressedToState(
    Emitter<StandardInputAreaState> emit,
  ) {
    final currentInput = _inputCubit.state.when(
      points: (input) => input,
      darts: (darts) => throw Error(), // TODO better error
    );

    if (currentInput < 10) {
      _inputCubit.update(newInput: left(0));
    } else {
      final inputString = currentInput.toString();
      final newInput = int.parse(
        inputString.substring(0, inputString.length - 1),
      );

      _inputCubit.update(newInput: left(newInput));
    }
  }

  void _mapDigitPressedToState(
    _DigitPressed event,
    Emitter<StandardInputAreaState> emit,
  ) {
    final currentInput = _inputCubit.state.when(
      points: (points) => points,
      darts: (darts) => throw Error(), // TODO better error
    );

    final pointsLeft = _pointsLeftCubit.state;

    final newInput = int.parse(
      currentInput.toString() + event.digit.toString(),
    );

    final valid = _dartUtils.validatePoints(
      pointsLeft: pointsLeft,
      points: newInput,
    );

    if (valid) {
      _inputCubit.update(newInput: left(newInput));
    }
  }

  /// Decides wheter show checkoutDetails becaus more user input is needed or perform throw instantly.
  void _showCheckoutDetailsOrPerformThrow() {
    final points = _inputCubit.state.when(
      points: (points) => points,
      darts: (darts) => throw Error(), // TODO better error
    );

    final pointsLeft = _pointsLeftCubit.state;

    final minDartsThrown = _dartUtils.minDartsThrown(
      pointsLeft: pointsLeft,
      points: points,
    );

    final maxDartsThrown = _dartUtils.maxDartsThrown(
      points: points,
      pointsLeft: pointsLeft,
    );

    final minDartsOnDouble = _dartUtils.minDartsOnDouble(
      points: points,
      pointsLeft: pointsLeft,
    );
    final maxDartsOnDouble = _dartUtils.maxDartsOnDouble(
      points: points,
      pointsLeft: pointsLeft,
    );

    final showCheckoutDetails = !(minDartsThrown == maxDartsThrown &&
        minDartsOnDouble == maxDartsOnDouble);

    if (showCheckoutDetails) {
      _showCheckoutDetailsCubit.showCheckoutDetails();
    } else {
      _inGameBloc.add(
        InGameEvent.performThrowPressed(
          t: Throw(
            points: points,
            dartsThrown: minDartsThrown,
            dartsOnDouble: minDartsOnDouble,
          ),
        ),
      );

      _inputCubit.update(newInput: left(0));
    }
  }
}
