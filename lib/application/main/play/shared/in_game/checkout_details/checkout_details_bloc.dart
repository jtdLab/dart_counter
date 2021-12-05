import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../in_game_event.dart';
import '../in_game_state.dart';

part 'checkout_details_bloc.freezed.dart';
part 'checkout_details_event.dart';
part 'checkout_details_state.dart';

// TODO test + impl

@injectable
class CheckoutDetailsBloc
    extends Bloc<CheckoutDetailsEvent, CheckoutDetailsState>
    with AutoResetLazySingleton {
  final PointsLeftCubit _pointsLeftCubit;
  final Bloc<InGameEvent, InGameState> _inGameBloc;
  final InputCubit _inputCubit;

  final IDartUtils _dartUtils;

  CheckoutDetailsBloc(
    // TODO has to be nullable because of getIt maybe find better solutation
    @factoryParam PointsLeftCubit? pointsLeftCubit,
    @factoryParam Bloc<InGameEvent, InGameState>? inGameBloc,
    this._inputCubit,
    this._dartUtils,
  )   : _pointsLeftCubit = pointsLeftCubit!,
        _inGameBloc = inGameBloc!,
        super(
          CheckoutDetailsState.initial(
            minDartsThrown: _dartUtils.minDartsThrown(
              points: _inputCubit.state.when(
                points: (input) => input,
                darts: (darts) => darts.fold(
                  0,
                  (acc, dart) => acc + dart.points(),
                ),
              ),
              pointsLeft: pointsLeftCubit.state,
            ),
            maxDartsThrown: _dartUtils.maxDartsThrown(
              points: _inputCubit.state.when(
                points: (input) => input,
                darts: (darts) => darts.fold(
                  0,
                  (acc, dart) => acc + dart.points(),
                ),
              ),
              pointsLeft: pointsLeftCubit.state,
            ),
            minDartsOnDouble: _dartUtils.minDartsOnDouble(
              points: _inputCubit.state.when(
                points: (input) => input,
                darts: (darts) => darts.fold(
                  0,
                  (acc, dart) => acc + dart.points(),
                ),
              ),
              pointsLeft: pointsLeftCubit.state,
            ),
            maxDartsOnDouble: min(
              _dartUtils.maxDartsOnDouble(
                points: _inputCubit.state.when(
                  points: (input) => input,
                  darts: (darts) => darts.fold(
                    0,
                    (acc, dart) => acc + dart.points(),
                  ),
                ),
                pointsLeft: pointsLeftCubit.state,
              ),
              _dartUtils.minDartsThrown(
                points: _inputCubit.state.when(
                  points: (input) => input,
                  darts: (darts) => darts.fold(
                    0,
                    (acc, dart) => acc + dart.points(),
                  ),
                ),
                pointsLeft: pointsLeftCubit.state,
              ),
            ),
            selectedDartsThrown: _dartUtils.minDartsThrown(
              points: _inputCubit.state.when(
                points: (input) => input,
                darts: (darts) => darts.fold(
                  0,
                  (acc, dart) => acc + dart.points(),
                ),
              ),
              pointsLeft: pointsLeftCubit.state,
            ),
            selectedDartsOnDouble: _dartUtils.minDartsOnDouble(
              points: _inputCubit.state.when(
                points: (input) => input,
                darts: (darts) => darts.fold(
                  0,
                  (acc, dart) => acc + dart.points(),
                ),
              ),
              pointsLeft: pointsLeftCubit.state,
            ),
          ),
        ) {
    on<_SelectedDartsThrownUpdated>(_mapSelectedDartsThrownUpdatedToState);
    on<_SelectedDartsOnDoubleUpdated>(_mapSelectedDartsOnDoubleUpdatedToState);
    on<_ConfirmPressed>((_, __) => _mapConfirmPressedToState());
  }

  void _mapSelectedDartsThrownUpdatedToState(
    _SelectedDartsThrownUpdated event,
    Emitter<CheckoutDetailsState> emit,
  ) {
    final newSelectedDartsThrown = event.newSelectedDartsThrown;

    int newSelectedDartsOnDouble = state.selectedDartsOnDouble;
    if (newSelectedDartsOnDouble > newSelectedDartsThrown) {
      newSelectedDartsOnDouble = newSelectedDartsThrown;
    }

    final newMaxDartsOnDouble = min(
      _dartUtils.maxDartsOnDouble(
        points: _inputCubit.state.when(
          points: (input) => input,
          darts: (darts) => darts.fold(
            0,
            (acc, dart) => acc + dart.points(),
          ),
        ),
        pointsLeft: _pointsLeftCubit.state,
      ),
      newSelectedDartsThrown,
    );

    emit(
      state.copyWith(
        selectedDartsThrown: newSelectedDartsThrown,
        selectedDartsOnDouble: newSelectedDartsOnDouble,
        maxDartsOnDouble: newMaxDartsOnDouble,
      ),
    );
  }

  void _mapSelectedDartsOnDoubleUpdatedToState(
    _SelectedDartsOnDoubleUpdated event,
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
          points: _inputCubit.state.when(
            points: (input) => input,
            darts: (darts) => darts.fold(
              0,
              (acc, dart) => acc + dart.points(),
            ),
          ),
          dartsThrown: state.selectedDartsThrown,
          dartsOnDouble: state.selectedDartsOnDouble,
          darts: _inputCubit.state.when(
            points: (input) => null,
            darts: (darts) => darts,
          ),
        ),
      ),
    );
  }
}
