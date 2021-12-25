import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/errors.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'standard_digit_button_bloc.freezed.dart';
part 'standard_digit_button_event.dart';
part 'standard_digit_button_state.dart';

class StandardDigitButtonBloc
    extends Bloc<StandardDigitButtonEvent, StandardDigitButtonState> {
  final int _digit;
  final PointsLeftCubit _pointsLeftCubit;
  final InputCubit _inputCubit;
  final AdvancedSettingsBloc _advancedSettingsBloc;

  final IDartUtils _dartUtils;

  StandardDigitButtonBloc(
    this._digit,
    this._pointsLeftCubit,
    this._inputCubit,
    this._advancedSettingsBloc,
    this._dartUtils,
  ) : super(
          _advancedSettingsBloc.state.map(
            createGame: (_) => throw advancedSettingsInGameExpectedError,
            inGame: (inGame) {
              final smartKeyBoardActivated =
                  inGame.currentTurnAdvancedSettings.smartKeyBoardActivated;

              // when smart keyboard is active
              if (smartKeyBoardActivated) {
                // and this button represents 0 initial state is disabled
                if (_digit == 0) {
                  return const StandardDigitButtonState.disabled();
                }

                final pointsLeft = _pointsLeftCubit.state;
                // else if this button respresents points that are invalid
                // in current game state
                if (!_dartUtils.validatePoints(
                  pointsLeft: pointsLeft,
                  points: _digit,
                )) {
                  // initial state is disabled
                  return const StandardDigitButtonState.disabled();
                }
              }

              // else initial state is enabled
              return const StandardDigitButtonState.enabled();
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
    Emitter<StandardDigitButtonState> emit,
  ) async {
    await Future.wait(
      [
        _inputCubit.stream.forEach((_) => _refreshState(emit)),
        _pointsLeftCubit.stream.forEach((_) => _refreshState(emit)),
        _advancedSettingsBloc.stream.forEach((_) => _refreshState(emit)),
      ],
      eagerError: true,
    );
  }

  void _mapPressedToState(
    Emitter<StandardDigitButtonState> emit,
  ) {
    state.map(
      enabled: (_) {
        _advancedSettingsBloc.state.map(
          createGame: (_) => throw advancedSettingsInGameExpectedError,
          inGame: (inGame) {
            final smartKeyBoardActivated =
                inGame.currentTurnAdvancedSettings.smartKeyBoardActivated;

            final pointsLeft = _pointsLeftCubit.state;

            // calc newPoints
            final points = _inputCubit.state.when(
              points: (points) => points,
              darts: (darts) => throw pointsExpectedError,
            );

            final newPoints = int.parse(
              points.toString() + _digit.toString(),
            );

            // when smart keyboard is not active
            if (!smartKeyBoardActivated) {
              // and newPoints is no valid in current game state
              if (!_dartUtils.validatePoints(
                points: newPoints,
                pointsLeft: pointsLeft,
              )) {
                // do nothing
                return;
              }
            }

            // else set input to newPoints
            _inputCubit.update(newInput: left(newPoints));
          },
        );
      },
      disabled: (_) => throw pressedWhileDisabledError,
    );
  }

  /// Recalculates and emits the state of this button.
  void _refreshState(
    Emitter<StandardDigitButtonState> emit,
  ) {
    _advancedSettingsBloc.state.map(
      createGame: (_) => throw advancedSettingsInGameExpectedError,
      inGame: (inGame) {
        final smartKeyBoardActivated =
            inGame.currentTurnAdvancedSettings.smartKeyBoardActivated;

        // when smart keyboard is active
        if (smartKeyBoardActivated) {
          final points = _inputCubit.state.when(
            points: (points) => points,
            darts: (darts) => throw pointsExpectedError,
          );

          // and this button represents 0 and points are 0
          if (_digit == 0 && points == 0) {
            // emit disabled
            emit(const StandardDigitButtonState.disabled());
            return;
          }

          // else if newPoints (points after this button would be pressed)
          // are invalid in current game state
          final pointsLeft = _pointsLeftCubit.state;
          final newPoints = int.parse(
            points.toString() + _digit.toString(),
          );

          if (!_dartUtils.validatePoints(
            pointsLeft: pointsLeft,
            points: newPoints,
          )) {
            //emit disabled
            emit(const StandardDigitButtonState.disabled());
            return;
          }
        }

        // else emit enbled
        emit(const StandardDigitButtonState.enabled());
      },
    );
  }
}
