import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/darts/darts_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/detailed_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'detailed_erease_button_bloc.freezed.dart';
part 'detailed_erease_button_event.dart';
part 'detailed_erease_button_state.dart';

class DetailedEreaseButtonBloc
    extends Bloc<DetailedEreaseButtonEvent, DetailedEreaseButtonState> {
  final DetailedInputAreaBloc _inputAreaBloc;
  final DartsCubit _dartsCubit;
  final AdvancedSettingsBloc _advancedSettingsBloc;

  DetailedEreaseButtonBloc(
    this._inputAreaBloc,
    this._dartsCubit,
    this._advancedSettingsBloc,
  ) : super(
          _advancedSettingsBloc.state.map(
            createGame: (_) => throw advancedSettingsInGameExpectedError,
            inGame: (inGame) {
              return inGame.currentTurnAdvancedSettings.smartKeyBoardActivated
                  ? const DetailedEreaseButtonState.disabled()
                  : const DetailedEreaseButtonState.enabled();
            },
          ),
        ) {
    on<_Started>(
      (_, emit) async => _mapStartedToState(emit),
      transformer: restartable(),
    );
    on<_Pressed>((_, emit) => _mapPressedToState(emit));
  }

  Future<void> _mapStartedToState(
    Emitter<DetailedEreaseButtonState> emit,
  ) async {
    await _dartsCubit.stream.forEach((_) => _refreshState(emit));
  }

  void _mapPressedToState(
    Emitter<DetailedEreaseButtonState> emit,
  ) {
    state.map(
      enabled: (_) {
        _advancedSettingsBloc.state.map(
          createGame: (_) => throw advancedSettingsInGameExpectedError,
          inGame: (inGame) {
            final smartKeyBoardActivated =
                inGame.currentTurnAdvancedSettings.smartKeyBoardActivated;

            final darts = _dartsCubit.state.toMutableList();

            // when smart keyboard is not active
            if (!smartKeyBoardActivated) {
              // and darts are empty
              if (darts.isEmpty()) {
                // do nothing
                return;
              }
            }

            // else reset inputArea
            _inputAreaBloc.add(const DetailedInputAreaEvent.unfocusRequested());
            // remove last dart from darts
            final newDarts = darts..removeLast();
            // set input to newDarts
            _dartsCubit.update(newDarts);
          },
        );
      },
      disabled: (_) => throw pressedWhileDisabledError,
    );
  }

  /// Recalculates and emits the state of this button.
  void _refreshState(
    Emitter<DetailedEreaseButtonState> emit,
  ) {
    _advancedSettingsBloc.state.map(
      createGame: (_) => throw advancedSettingsInGameExpectedError,
      inGame: (inGame) {
        final smartKeyBoardActivated =
            inGame.currentTurnAdvancedSettings.smartKeyBoardActivated;

        // when smart keyboard is active
        if (smartKeyBoardActivated) {
          final darts = _dartsCubit.state;

          // and darts is empty
          if (darts.isEmpty()) {
            // emit disabled
            emit(const DetailedEreaseButtonState.disabled());
            return;
          }
        }

        // else emit enabled
        emit(const DetailedEreaseButtonState.enabled());
      },
    );
  }
}
