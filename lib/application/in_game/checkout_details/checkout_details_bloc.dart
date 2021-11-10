import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/in_game/in_game_bloc.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:dart_counter/domain/play/helpers.dart' as helpers;

part 'checkout_details_bloc.freezed.dart';
part 'checkout_details_event.dart';
part 'checkout_details_state.dart';

@lazySingleton
class CheckoutDetailsBloc
    extends Bloc<CheckoutDetailsEvent, CheckoutDetailsState>
    with AutoResetLazySingleton {
  final InGameBloc _inGameBloc;

  CheckoutDetailsBloc(
    this._inGameBloc,
  ) : super(
          CheckoutDetailsState(
            minDartsThrown: helpers.minDartsThrown(
              points: _inGameBloc.state.inputOrDarts.fold(
                (input) => input,
                (darts) => darts.iter.fold(
                  0,
                  (acc, dart) => acc + dart.points(),
                ),
              ),
              pointsLeft:
                  _inGameBloc.state.gameSnapshot.currentTurn().pointsLeft,
            ),
            maxDartsThrown: helpers.maxDartsThrown(
              points: _inGameBloc.state.inputOrDarts.fold(
                (input) => input,
                (darts) => darts.iter.fold(
                  0,
                  (acc, dart) => acc + dart.points(),
                ),
              ),
              pointsLeft:
                  _inGameBloc.state.gameSnapshot.currentTurn().pointsLeft,
            ),
            minDartsOnDouble: helpers.minDartsOnDouble(
              points: _inGameBloc.state.inputOrDarts.fold(
                (input) => input,
                (darts) => darts.iter.fold(
                  0,
                  (acc, dart) => acc + dart.points(),
                ),
              ),
              pointsLeft:
                  _inGameBloc.state.gameSnapshot.currentTurn().pointsLeft,
            ),
            maxDartsOnDouble: min(
              helpers.maxDartsOnDouble(
                points: _inGameBloc.state.inputOrDarts.fold(
                  (input) => input,
                  (darts) => darts.iter.fold(
                    0,
                    (acc, dart) => acc + dart.points(),
                  ),
                ),
                pointsLeft:
                    _inGameBloc.state.gameSnapshot.currentTurn().pointsLeft,
              ),
              helpers.minDartsThrown(
                points: _inGameBloc.state.inputOrDarts.fold(
                  (input) => input,
                  (darts) => darts.iter.fold(
                    0,
                    (acc, dart) => acc + dart.points(),
                  ),
                ),
                pointsLeft:
                    _inGameBloc.state.gameSnapshot.currentTurn().pointsLeft,
              ),
            ),
            selectedDartsThrown: helpers.minDartsThrown(
              points: _inGameBloc.state.inputOrDarts.fold(
                (input) => input,
                (darts) => darts.iter.fold(
                  0,
                  (acc, dart) => acc + dart.points(),
                ),
              ),
              pointsLeft:
                  _inGameBloc.state.gameSnapshot.currentTurn().pointsLeft,
            ),
            selectedDartsOnDouble: helpers.minDartsOnDouble(
              points: _inGameBloc.state.inputOrDarts.fold(
                (input) => input,
                (darts) => darts.iter.fold(
                  0,
                  (acc, dart) => acc + dart.points(),
                ),
              ),
              pointsLeft:
                  _inGameBloc.state.gameSnapshot.currentTurn().pointsLeft,
            ),
            confirmed: false,
          ),
        );

  @override
  Stream<CheckoutDetailsState> mapEventToState(
    CheckoutDetailsEvent event,
  ) async* {
    yield* event.map(
      selectedDartsThrownUpdated: (event) =>
          _mapSelectedDartsThrownUpdatedToState(event),
      selectedDartsOnDoubleUpdated: (event) =>
          _mapSelectedDartsOnDoubleUpdatedToState(event),
      confirmPressed: (_) => _mapConfirmPressedToState(),
    );
  }

  Stream<CheckoutDetailsState> _mapSelectedDartsThrownUpdatedToState(
    SelectedDartsThrownUpdated event,
  ) async* {
    final newSelectedDartsThrown = event.newSelectedDartsThrown;
    int newSelectedDartsOnDouble = state.selectedDartsOnDouble;
    if (newSelectedDartsOnDouble > newSelectedDartsThrown) {
      newSelectedDartsOnDouble = newSelectedDartsThrown;
    }

    final newMaxDartsOnDouble = min(
      helpers.maxDartsOnDouble(
        points: _inGameBloc.state.inputOrDarts.fold(
          (input) => input,
          (darts) => darts.iter.fold(
            0,
            (acc, dart) => acc + dart.points(),
          ),
        ),
        pointsLeft: _inGameBloc.state.gameSnapshot.currentTurn().pointsLeft,
      ),
      newSelectedDartsThrown,
    );

    yield state.copyWith(
      selectedDartsThrown: newSelectedDartsThrown,
      selectedDartsOnDouble: newSelectedDartsOnDouble,
      maxDartsOnDouble: newMaxDartsOnDouble,
    );
  }

  Stream<CheckoutDetailsState> _mapSelectedDartsOnDoubleUpdatedToState(
    SelectedDartsOnDoubleUpdated event,
  ) async* {
    yield state.copyWith(
      selectedDartsOnDouble: event.newSelectedDartsOnDouble,
    );
  }

  Stream<CheckoutDetailsState> _mapConfirmPressedToState() async* {
    _inGameBloc.add(
      InGameEvent.performThrowPressed(
        t: Throw(
          points: _inGameBloc.state.inputOrDarts.fold(
            (input) => input,
            (darts) => darts.iter.fold(
              0,
              (acc, dart) => acc + dart.points(),
            ),
          ),
          dartsThrown: state.selectedDartsThrown,
          dartsOnDouble: state.selectedDartsOnDouble,
          darts: _inGameBloc.state.inputOrDarts.fold(
            (input) => null,
            (darts) => darts,
          ),
        ),
      ),
    );
    

    yield state.copyWith(
      confirmed: true,
    );
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<CheckoutDetailsBloc>()) {
      getIt.resetLazySingleton<CheckoutDetailsBloc>();
    }

    return super.close();
  }
}
