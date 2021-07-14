import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/in_game/input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
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

  CheckoutDetailsBloc(
    this._playFacade,
    this._inputRowBloc,
  ) : super(
          CheckoutDetailsState.initial(),
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
    // TODO implement
    /**
     * final newSelectedDartsOnDouble = state
        .selectedDartsOnDouble; // TODO calc depending on selectedDartsThrown

    yield state.copyWith(
      selectedDartsThrown: event.newSelectedDartsThrown,
      selectedDartsOnDouble: newSelectedDartsOnDouble,
    );
     */
  }

  Stream<CheckoutDetailsState> _mapSelectedDartsOnDoubleUpdatedToState(
    SelectedDartsOnDoubleUpdated event,
  ) async* {
    // TODO implement
    /**
     * yield state.copyWith(
      selectedDartsOnDouble: event.newSelectedDartsOnDouble,
    );
     */
  }

  Stream<CheckoutDetailsState> _mapConfirmPressedToState() async* {
    // TODO implement
    /**
     * _playFacade.performThrow(
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
     */
  }
}
