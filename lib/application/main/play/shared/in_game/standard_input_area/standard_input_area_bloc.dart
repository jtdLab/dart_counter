import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/main/play/shared/in_game/errors.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/show_checkout_details/show_checkout_details_cubit.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../in_game_event.dart';
import '../in_game_state.dart';

part 'standard_input_area_bloc.freezed.dart';
part 'standard_input_area_event.dart';
part 'standard_input_area_state.dart';

class StandardInputAreaBloc
    extends Bloc<StandardInputAreaEvent, StandardInputAreaState>
    with AutoResetLazySingleton {
  final Bloc<InGameEvent, InGameState> _inGameBloc;
  final PointsLeftCubit _pointsLeftCubit;
  final InputCubit _inputCubit;
  final ShowCheckoutDetailsCubit _showCheckoutDetailsCubit;

  final IDartUtils _dartUtils;

  StandardInputAreaBloc(
    this._inGameBloc,
    this._pointsLeftCubit,
    this._inputCubit,
    this._showCheckoutDetailsCubit,
    this._dartUtils,
  ) : super(const StandardInputAreaState.initial()) {
    on<_UndoThrowPressed>((_, __) => _mapUndoThrowPressedToState());
    on<_PerformThrowPressed>((_, __) => _mapPerformThrowPressedToState());
  }

  void _mapUndoThrowPressedToState() =>
      _inGameBloc.add(const InGameEvent.undoThrowPressed());

  void _mapPerformThrowPressedToState() {
    final points = _inputCubit.state.when(
      points: (points) => points,
      darts: (darts) => throw pointsExpectedError,
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

// when dartsThrown and dartsOnDouble can not be implied from points and pointsLeft
    if (showCheckoutDetails) {
      // request show checkout details dialog
      _showCheckoutDetailsCubit.showCheckoutDetails();
    } else {
      // else perform throw with the implied dartsThrown and dartsOnDouble
      _inGameBloc.add(
        InGameEvent.performThrowPressed(
          t: Throw(
            points: points,
            dartsThrown: minDartsThrown,
            dartsOnDouble: minDartsOnDouble,
          ),
        ),
      );

      // reset input to 0
      _inputCubit.update(newInput: left(0));
    }
  }
}
