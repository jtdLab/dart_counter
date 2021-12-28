import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/errors.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points/points_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'standard_erease_button_bloc.freezed.dart';
part 'standard_erease_button_event.dart';
part 'standard_erease_button_state.dart';

class StandardEreaseButtonBloc
    extends Bloc<StandardEreaseButtonEvent, StandardEreaseButtonState> {
  final PointsCubit _pointsCubit;
  final AdvancedSettingsBloc _advancedSettingsBloc;

  StandardEreaseButtonBloc(
    this._pointsCubit,
    this._advancedSettingsBloc,
  ) : super(
          _advancedSettingsBloc.state.map(
            createGame: (_) => throw advancedSettingsInGameExpectedError,
            inGame: (inGame) {
              return inGame.currentTurnAdvancedSettings.smartKeyBoardActivated
                  ? const StandardEreaseButtonState.disabled()
                  : const StandardEreaseButtonState.enabled();
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
    Emitter<StandardEreaseButtonState> emit,
  ) async {
    await _pointsCubit.stream.forEach((_) => _refreshState(emit));
    await _advancedSettingsBloc.stream.forEach((_) => _refreshState(emit));
  }

  void _mapPressedToState(
    Emitter<StandardEreaseButtonState> emit,
  ) {
    state.map(
      enabled: (_) {
        _advancedSettingsBloc.state.map(
          createGame: (_) => throw advancedSettingsInGameExpectedError,
          inGame: (inGame) {
            final smartKeyBoardActivated =
                inGame.currentTurnAdvancedSettings.smartKeyBoardActivated;

            final points = _pointsCubit.state;

            // when smart keyboard is not active
            if (!smartKeyBoardActivated) {
              // and points = 0
              if (points == 0) {
                // do nothing
                return;
              }
            }

            // else calc newPoints
            int newPoints;
            if (points < 10) {
              newPoints = 0;
            } else {
              final pointsString = points.toString();
              newPoints = int.parse(
                pointsString.substring(0, pointsString.length - 1),
              );
            }

            // set input to newPoints
            _pointsCubit.update(newPoints);
          },
        );
      },
      disabled: (_) => throw pressedWhileDisabledError,
    );
  }

  /// Recalculates and emits the state of this button.
  void _refreshState(
    Emitter<StandardEreaseButtonState> emit,
  ) {
    _advancedSettingsBloc.state.map(
      createGame: (_) => throw advancedSettingsInGameExpectedError,
      inGame: (inGame) {
        final smartKeyBoardActivated =
            inGame.currentTurnAdvancedSettings.smartKeyBoardActivated;

        // when smart keyboard is active
        if (smartKeyBoardActivated) {
          final points = _pointsCubit.state;

          // and points = 0
          if (points == 0) {
            // emit disabled
            emit(const StandardEreaseButtonState.disabled());
            return;
          }
        }

        // else emit enabled
        emit(const StandardEreaseButtonState.enabled());
      },
    );
  }
}
