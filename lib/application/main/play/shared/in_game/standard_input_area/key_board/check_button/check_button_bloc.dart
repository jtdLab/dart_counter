import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/errors.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points/points_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/standard_input_area_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_button_bloc.freezed.dart';
part 'check_button_event.dart';
part 'check_button_state.dart';

class CheckButtonBloc extends Bloc<CheckButtonEvent, CheckButtonState> {
  final StandardInputAreaBloc _inputAreaBloc;
  final PointsLeftCubit _pointsLeftCubit;
  final PointsCubit _pointsCubit;
  final AdvancedSettingsBloc _advancedSettingsBloc;

  final IDartUtils _dartUtils;

  CheckButtonBloc(
    this._inputAreaBloc,
    this._pointsLeftCubit,
    this._pointsCubit,
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
                final pointsLeft = _pointsLeftCubit.state;

                // and pointsLeft are no finish
                if (!_dartUtils.isFinish(points: pointsLeft)) {
                  // initial state is disabled
                  return const CheckButtonState.disabled();
                }
              }
              // else initial state is enabled
              return const CheckButtonState.enabled();
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
    Emitter<CheckButtonState> emit,
  ) async {
    await Future.wait(
      [
        _pointsCubit.stream.forEach((_) => _refreshState(emit)),
        _pointsLeftCubit.stream.forEach((_) => _refreshState(emit)),
        _advancedSettingsBloc.stream.forEach((_) => _refreshState(emit)),
      ],
      eagerError: true,
    );
  }

  void _mapPressedToState(
    Emitter<CheckButtonState> emit,
  ) {
    state.map(
      enabled: (_) {
        _advancedSettingsBloc.state.map(
          createGame: (_) => throw advancedSettingsInGameExpectedError,
          inGame: (inGame) {
            final smartKeyBoardActivated =
                inGame.currentTurnAdvancedSettings.smartKeyBoardActivated;

            final pointsLeft = _pointsLeftCubit.state;

            // when smart keyboard is not active
            if (!smartKeyBoardActivated) {
              // and pointsLeft is no finish
              if (!_dartUtils.isFinish(points: pointsLeft)) {
                // do nothing
                return;
              }
            }

            // else set input to pointsLeft
            _pointsCubit.update(pointsLeft);

            // and perform the throw
            _inputAreaBloc
                .add(const StandardInputAreaEvent.performThrowPressed());
          },
        );
      },
      disabled: (_) => throw pressedWhileDisabledError,
    );
  }

  /// Recalculates and emits the state of this button.
  void _refreshState(
    Emitter<CheckButtonState> emit,
  ) {
    _advancedSettingsBloc.state.map(
      createGame: (_) => throw advancedSettingsInGameExpectedError,
      inGame: (inGame) {
        final smartKeyBoardActivated =
            inGame.currentTurnAdvancedSettings.smartKeyBoardActivated;

        // when smart keyboard is active
        if (smartKeyBoardActivated) {
          final pointsLeft = _pointsLeftCubit.state;

          // and pointsLeft are no finish
          if (!_dartUtils.isFinish(points: pointsLeft)) {
            // emit disabled
            emit(const CheckButtonState.disabled());
            return;
          }
        }

        // else emit enabled
        emit(const CheckButtonState.enabled());
      },
    );
  }
}
