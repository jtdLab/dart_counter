import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/in_game/input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'checkout_details_event.dart';
part 'checkout_details_state.dart';
part 'checkout_details_bloc.freezed.dart';

@injectable
class CheckoutDetailsBloc
    extends Bloc<CheckoutDetailsEvent, CheckoutDetailsState> {
  final IPlayFacade _playFacade;

  final InputRowBloc _inputRowBloc;

  CheckoutDetailsBloc(this._playFacade, this._inputRowBloc)
      : super(
          CheckoutDetailsState(
            minDartsThrown: _playFacade.minDartsThrown(
              points: _inputRowBloc.state.input,
              pointsLeft: _playFacade
                  .watchGame()
                  .valueWrapper! // TODO
                  .value
                  .currentTurn()
                  .pointsLeft,
            ),
            maxDartsThrown: _playFacade.maxDartsThrown(
              points: _inputRowBloc.state.input,
              pointsLeft: _playFacade
                  .watchGame()
                  .valueWrapper! // TODO
                  .value
                  .currentTurn()
                  .pointsLeft,
            ),
            minDartsOnDouble: _playFacade.minDartsOnDouble(
              points: _inputRowBloc.state.input,
              pointsLeft: _playFacade
                  .watchGame()
                  .valueWrapper! // TODO
                  .value
                  .currentTurn()
                  .pointsLeft,
            ),
            maxDartsOnDouble: _playFacade.maxDartsOnDouble(
              points: _inputRowBloc.state.input,
              pointsLeft: _playFacade
                  .watchGame()
                  .valueWrapper! // TODO
                  .value
                  .currentTurn()
                  .pointsLeft,
            ),
            selectedDartsThrown: _playFacade.minDartsThrown(
              points: _inputRowBloc.state.input,
              pointsLeft: _playFacade
                  .watchGame()
                  .valueWrapper! // TODO
                  .value
                  .currentTurn()
                  .pointsLeft,
            ),
            selectedDartsOnDouble: _playFacade.minDartsOnDouble(
              points: _inputRowBloc.state.input,
              pointsLeft: _playFacade
                  .watchGame()
                  .valueWrapper! // TODO
                  .value
                  .currentTurn()
                  .pointsLeft,
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
      SelectedDartsThrownUpdated event) async* {
    final newSelectedDartsOnDouble = state
        .selectedDartsOnDouble; // TODO calc depending on selectedDartsThrown

    yield state.copyWith(
      selectedDartsThrown: event.newSelectedDartsThrown,
      selectedDartsOnDouble: newSelectedDartsOnDouble,
    );
  }

  Stream<CheckoutDetailsState> _mapSelectedDartsOnDoubleUpdatedToState(
      SelectedDartsOnDoubleUpdated event) async* {
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
