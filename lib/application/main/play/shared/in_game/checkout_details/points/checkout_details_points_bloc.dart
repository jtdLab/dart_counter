/**
 * import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/checkout_details/checkout_details_event.dart';
import 'package:dart_counter/application/main/play/shared/in_game/checkout_details/checkout_details_state.dart';
import 'package:dart_counter/application/main/play/shared/in_game/in_game_event.dart';
import 'package:dart_counter/application/main/play/shared/in_game/in_game_state.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points/points_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';

export 'package:dart_counter/application/main/play/shared/in_game/checkout_details/checkout_details_event.dart';
export 'package:dart_counter/application/main/play/shared/in_game/checkout_details/checkout_details_state.dart';

class CheckoutDetailsPointsBloc
    extends Bloc<CheckoutDetailsEvent, CheckoutDetailsState> {
  final Bloc<InGameEvent, InGameState> _inGameBloc;
  final PointsLeftCubit _pointsLeftCubit;

  final PointsCubit _pointsCubit;
  final IDartUtils _dartUtils;

  CheckoutDetailsPointsBloc(
    this._inGameBloc,
    this._pointsLeftCubit,
    this._pointsCubit,
    this._dartUtils,
  ) : super(
          CheckoutDetailsState.initial(
            minDartsThrown: _dartUtils.minDartsThrown(
              points: _pointsCubit.state,
              pointsLeft: _pointsLeftCubit.state,
            ),
            maxDartsThrown: _dartUtils.maxDartsThrown(
              points: _pointsCubit.state,
              pointsLeft: _pointsLeftCubit.state,
            ),
            minDartsOnDouble: _dartUtils.minDartsOnDouble(
              points: _pointsCubit.state,
              pointsLeft: _pointsLeftCubit.state,
            ),
            maxDartsOnDouble: min(
              _dartUtils.maxDartsOnDouble(
                points: _pointsCubit.state,
                pointsLeft: _pointsLeftCubit.state,
              ),
              _dartUtils.minDartsThrown(
                points: _pointsCubit.state,
                pointsLeft: _pointsLeftCubit.state,
              ),
            ),
            selectedDartsThrown: _dartUtils.minDartsThrown(
              points: _pointsCubit.state,
              pointsLeft: _pointsLeftCubit.state,
            ),
            selectedDartsOnDouble: _dartUtils.minDartsOnDouble(
              points: _pointsCubit.state,
              pointsLeft: _pointsLeftCubit.state,
            ),
          ),
        ) {
    on<SelectedDartsThrownUpdated>(_mapSelectedDartsThrownUpdatedToState);
    on<SelectedDartsOnDoubleUpdated>(_mapSelectedDartsOnDoubleUpdatedToState);
    on<ConfirmPressed>((_, __) => _mapConfirmPressedToState());
  }

  void _mapSelectedDartsThrownUpdatedToState(
    SelectedDartsThrownUpdated event,
    Emitter<CheckoutDetailsState> emit,
  ) {
    final newSelectedDartsThrown = event.newSelectedDartsThrown;

    int selectedDartsOnDouble = state.selectedDartsOnDouble;
    if (selectedDartsOnDouble > newSelectedDartsThrown) {
      selectedDartsOnDouble = newSelectedDartsThrown;
    }

    final newMaxDartsOnDouble = min(
      _dartUtils.maxDartsOnDouble(
        points: _pointsCubit.state,
        pointsLeft: _pointsLeftCubit.state,
      ),
      newSelectedDartsThrown,
    );

    emit(
      state.copyWith(
        selectedDartsThrown: newSelectedDartsThrown,
        selectedDartsOnDouble: selectedDartsOnDouble,
        maxDartsOnDouble: newMaxDartsOnDouble,
      ),
    );
  }

  void _mapSelectedDartsOnDoubleUpdatedToState(
    SelectedDartsOnDoubleUpdated event,
    Emitter<CheckoutDetailsState> emit,
  ) {
    emit(
      state.copyWith(
        selectedDartsOnDouble: event.newSelectedDartsOnDouble,
      ),
    );
  }

  void _mapConfirmPressedToState() {
    _inGameBloc.add(
      InGameEvent.performThrowPressed(
        t: Throw(
          points: _pointsCubit.state,
          dartsThrown: state.selectedDartsThrown,
          dartsOnDouble: state.selectedDartsOnDouble,
        ),
      ),
    );

    _pointsCubit.update(0);
  }
}

 */