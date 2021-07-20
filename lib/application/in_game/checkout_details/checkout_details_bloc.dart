import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/in_game/in_game_bloc.dart';
import 'package:dart_counter/application/in_game/input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'checkout_details_bloc.freezed.dart';
part 'checkout_details_event.dart';
part 'checkout_details_state.dart';

@lazySingleton
class CheckoutDetailsBloc
    extends Bloc<CheckoutDetailsEvent, CheckoutDetailsState>
    with AutoResetLazySingleton {
  final IPlayFacade _playFacade;

  final InputRowBloc _inputRowBloc;
  final InGameBloc _inGameBloc;

  CheckoutDetailsBloc(
    this._playFacade,
    this._inputRowBloc,
    this._inGameBloc,
  ) : super(
          CheckoutDetailsState(
            minDartsThrown: _playFacade.minDartsThrown(
              points: _inputRowBloc.state.input,
              pointsLeft: _inGameBloc.state.game.currentTurn().pointsLeft,
            ),
            maxDartsThrown: _playFacade.maxDartsThrown(
              points: _inputRowBloc.state.input,
              pointsLeft: _inGameBloc.state.game.currentTurn().pointsLeft,
            ),
            minDartsOnDouble: _playFacade.minDartsOnDouble(
              points: _inputRowBloc.state.input,
              pointsLeft: _inGameBloc.state.game.currentTurn().pointsLeft,
            ),
            maxDartsOnDouble: min(
              _playFacade.maxDartsOnDouble(
                points: _inputRowBloc.state.input,
                pointsLeft: _inGameBloc.state.game.currentTurn().pointsLeft,
              ),
              _playFacade.minDartsThrown(
                points: _inputRowBloc.state.input,
                pointsLeft: _inGameBloc.state.game.currentTurn().pointsLeft,
              ),
            ),
            selectedDartsThrown: _playFacade.minDartsThrown(
              points: _inputRowBloc.state.input,
              pointsLeft: _inGameBloc.state.game.currentTurn().pointsLeft,
            ),
            selectedDartsOnDouble: _playFacade.minDartsOnDouble(
              points: _inputRowBloc.state.input,
              pointsLeft: _inGameBloc.state.game.currentTurn().pointsLeft,
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
        _playFacade.maxDartsOnDouble(
          points: _inputRowBloc.state.input,
          pointsLeft: _inGameBloc.state.game.currentTurn().pointsLeft,
        ),
        newSelectedDartsThrown);

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
    _playFacade.performThrow(
      t: Throw(
        points: _inputRowBloc.state.input,
        dartsThrown: state.selectedDartsThrown,
        dartsOnDouble: state.selectedDartsOnDouble,
        //darts: null // TODO
      ),
    );

    _inputRowBloc.add(const InputRowEvent.inputUpdated(newInput: 0));

    yield state.copyWith(
      confirmed: true,
    );
  }
}
