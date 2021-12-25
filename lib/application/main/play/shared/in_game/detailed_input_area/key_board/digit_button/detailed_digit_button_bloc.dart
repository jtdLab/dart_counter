import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/detailed_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/errors.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'detailed_digit_button_bloc.freezed.dart';
part 'detailed_digit_button_event.dart';
part 'detailed_digit_button_state.dart';

class DetailedDigitButtonBloc
    extends Bloc<DetailedDigitButtonEvent, DetailedDigitButtonState> {
  final int _digit;

  final DetailedInputAreaBloc _inputAreaBloc;
  final InputCubit _inputCubit;
  final PointsLeftCubit _pointsLeftCubit;
  final AdvancedSettingsBloc _advancedSettingsBloc;

  final IDartUtils _dartUtils;

  DetailedDigitButtonBloc(
    this._digit,
    this._inputAreaBloc,
    this._inputCubit,
    this._pointsLeftCubit,
    this._advancedSettingsBloc,
    this._dartUtils,
  ) : super(
          _advancedSettingsBloc.state.map(
            createGame: (_) => throw advancedSettingsInGameExpectedError,
            inGame: (inGame) {
              return _inputAreaBloc.state.map(
                initial: (_) {
                  final pointsLeft = _pointsLeftCubit.state;

                  final smartKeyBoardActivated =
                      inGame.currentTurnAdvancedSettings.smartKeyBoardActivated;

                  if (smartKeyBoardActivated) {
                    // calulates the types that are valid in focused state for this button in current game state
                    List<DartType> calcValidDartTypes() {
                      final validTypes = <DartType>[];
                      for (final dartType in DartType.values) {
                        final multiplier = dartType == DartType.single
                            ? 1
                            : dartType == DartType.double
                                ? 2
                                : 3;

                        final newPoints = multiplier * _digit;

                        if (_dartUtils.validatePoints(
                          pointsLeft: pointsLeft,
                          points: newPoints,
                        )) {
                          if (newPoints == pointsLeft) {
                            if (dartType == DartType.double) {
                              validTypes.add(dartType);
                            }
                          } else {
                            validTypes.add(dartType);
                          }
                        }
                      }
                      return validTypes;
                    }

                    final validTypes = calcValidDartTypes();
                    // when only one dartType is possible
                    if (validTypes.isEmpty) {
                      // initial state is disabled
                      return const DetailedDigitButtonState.disabled();
                      // when exactly 1 dartType is possible
                    } else if (validTypes.length == 1) {
                      // initial state is focused
                      return DetailedDigitButtonState.focused(
                        dartType: validTypes.first,
                        value: _digit,
                      );
                    }
                  }
                  // else initial state is enabled
                  return const DetailedDigitButtonState.enabled();
                },
                focused: (_) => throw detailedInputAreaInitialExpectedError,
              );
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
    Emitter<DetailedDigitButtonState> emit,
  ) async {
    await Future.wait(
      [
        _inputAreaBloc.stream.forEach((_) => _refreshState(emit)),
        _inputCubit.stream.forEach((_) => _refreshState(emit)),
        _pointsLeftCubit.stream.forEach((_) => _refreshState(emit)),
        _advancedSettingsBloc.stream.forEach((_) => _refreshState(emit)),
      ],
      eagerError: true,
    );
  }

  void _mapPressedToState(
    Emitter<DetailedDigitButtonState> emit,
  ) {
    state.map(
      enabled: (_) {
        // focus the value this button represents
        _inputAreaBloc.add(
          DetailedInputAreaEvent.dartFocused(focusedValue: _digit),
        );
      },
      disabled: (_) => throw pressedWhileDisabledError,
      focused: (focused) {
        final darts = _inputCubit.state
            .when(
              points: (input) => throw dartsExpectedError,
              darts: (darts) => darts,
            )
            .toMutableList();
        final dartTyp = focused.dartType;
        final focusedValue = focused.value;

        // reset inputArea
        _inputAreaBloc.add(const DetailedInputAreaEvent.unfocusRequested());
        // remove add dart represented by this button to darts
        final newDarts = darts..add(Dart(type: dartTyp, value: focusedValue));
        // set input to new darts
        _inputCubit.update(newInput: right(newDarts));
      },
    );
  }

  /// Recalculates and emits the state of this button.
  void _refreshState(
    Emitter<DetailedDigitButtonState> emit,
  ) {
    _advancedSettingsBloc.state.map(
      createGame: (_) => throw advancedSettingsInGameExpectedError,
      inGame: (inGame) {
        final smartKeyBoardActivated =
            inGame.currentTurnAdvancedSettings.smartKeyBoardActivated;

        final points = _inputCubit.state.when(
          points: (points) => throw dartsExpectedError,
          darts: (darts) =>
              darts.fold<int>(0, (acc, dart) => acc + dart.points()),
        );

        // when smart keyboard is active
        if (smartKeyBoardActivated) {
          _inputAreaBloc.state.map(
            initial: (initial) {
              final pointsLeft = _pointsLeftCubit.state;

              // calulates the types that are valid in focused state for this button in current game state
              List<DartType> calcValidDartTypes() {
                final validTypes = <DartType>[];
                for (final dartType in DartType.values) {
                  final multiplier = dartType == DartType.single
                      ? 1
                      : dartType == DartType.double
                          ? 2
                          : 3;

                  final newPoints = points + (multiplier * _digit);

                  if (_dartUtils.validatePoints(
                    pointsLeft: pointsLeft,
                    points: newPoints,
                  )) {
                    if (newPoints == pointsLeft) {
                      if (dartType == DartType.double) {
                        validTypes.add(dartType);
                      }
                    } else {
                      validTypes.add(dartType);
                    }
                  }
                }
                return validTypes;
              }

              final validTypes = calcValidDartTypes();
              // when only one dartType is possible
              if (validTypes.isEmpty) {
                // emit disabled
                emit(const DetailedDigitButtonState.disabled());
                // when exactly 1 dartType is possible
              } else if (validTypes.length == 1) {
                // emit focused
                emit(
                  DetailedDigitButtonState.focused(
                    dartType: validTypes.first,
                    value: _digit,
                  ),
                );
              } else {
                // emit disabled
                emit(const DetailedDigitButtonState.enabled());
              }
            },
            focused: (focused) {
              final focusedValue = focused.focusedValue;

              // calc maxAllowedType it has to be the max type so the possible new points satisfy
              // pointsLeft - new points (aka. remaining points) >= 0 but not 1.
              final pointsLeft = _pointsLeftCubit.state;

              DartType? maxAllowedType;
              for (final type in DartType.values) {
                final multiplier = type == DartType.single
                    ? 1
                    : type == DartType.double
                        ? 2
                        : 3;

                final newPoints = points + (multiplier * focusedValue);
                final newRemainingPoints = pointsLeft - newPoints;
                if (newRemainingPoints >= 0 && newRemainingPoints != 1) {
                  maxAllowedType = type;
                }
              }

              if (maxAllowedType == DartType.single) {
                emit(const DetailedDigitButtonState.enabled());
                return;
              }

              final leftSide = [
                0,
                4,
                10,
                16
              ]; // Buttons with values 0,4,10,16 are on the left side of the keyboard.
              final rightSide = [
                3,
                9,
                15,
                25
              ]; // Buttons with values 3,9,15,25 are on the left side of the keyboard.

              // Determine type of new state
              final DartType type;
              if (leftSide.contains(focusedValue)) {
                if (_digit == focusedValue) {
                  type = DartType.single;
                } else if (_digit == focusedValue + 1) {
                  type = DartType.double;
                } else if (_digit == focusedValue + 2) {
                  type = DartType.triple;
                } else {
                  emit(const DetailedDigitButtonState.disabled());
                  return;
                }
              } else if (rightSide.contains(focusedValue)) {
                if (focusedValue == 25) {
                  if (_digit == 25) {
                    type = DartType.double;
                  } else if (_digit == 20) {
                    type = DartType.single;
                  } else {
                    emit(const DetailedDigitButtonState.disabled());
                    return;
                  }
                } else {
                  if (_digit == focusedValue) {
                    type = DartType.triple;
                  } else if (_digit == focusedValue - 1) {
                    type = DartType.double;
                  } else if (_digit == focusedValue - 2) {
                    type = DartType.single;
                  } else {
                    emit(const DetailedDigitButtonState.disabled());
                    return;
                  }
                }
              } else {
                if (focusedValue == 20) {
                  if (_digit == 19) {
                    type = DartType.single;
                  } else if (_digit == focusedValue) {
                    type = DartType.double;
                  } else if (_digit == 25) {
                    type = DartType.triple;
                  } else {
                    emit(const DetailedDigitButtonState.disabled());
                    return;
                  }
                } else {
                  if (_digit == focusedValue - 1) {
                    type = DartType.single;
                  } else if (_digit == focusedValue) {
                    type = DartType.double;
                  } else if (_digit == focusedValue + 1) {
                    type = DartType.triple;
                  } else {
                    emit(const DetailedDigitButtonState.disabled());
                    return;
                  }
                }
              }

              // disable when no max allowed type
              if (maxAllowedType == null) {
                emit(const DetailedDigitButtonState.disabled());
                return;
              }

              // disable when type is larger than max allowed type
              if (maxAllowedType == DartType.single &&
                  type != DartType.single) {
                emit(const DetailedDigitButtonState.disabled());
                return;
              }

              if (maxAllowedType == DartType.double &&
                  type == DartType.triple) {
                emit(const DetailedDigitButtonState.disabled());
                return;
              }

              emit(
                DetailedDigitButtonState.focused(
                  dartType: type,
                  value: focusedValue,
                ),
              );
            },
          );
        } else {
          // when smart key board is not active
          _inputAreaBloc.state.map(
            initial: (initial) {
              // emit enabled
              emit(const DetailedDigitButtonState.enabled());
            },
            focused: (focused) {
              // calculate focused value
              final focusedValue = focused.focusedValue;

              final leftSide = [
                0,
                4,
                10,
                16
              ]; // Buttons with values 0,4,10,16 are on the left side of the keyboard.
              final rightSide = [
                3,
                9,
                15,
                25
              ]; // Buttons with values 3,9,15,25 are on the left side of the keyboard.

              // calculate dartType
              final DartType type;
              if (leftSide.contains(focusedValue)) {
                if (_digit == focusedValue) {
                  type = DartType.single;
                } else if (_digit == focusedValue + 1) {
                  type = DartType.double;
                } else if (_digit == focusedValue + 2) {
                  type = DartType.triple;
                } else {
                  emit(const DetailedDigitButtonState.disabled());
                  return;
                }
              } else if (rightSide.contains(focusedValue)) {
                if (focusedValue == 25) {
                  if (_digit == 25) {
                    type = DartType.double;
                  } else if (_digit == 20) {
                    type = DartType.single;
                  } else {
                    emit(const DetailedDigitButtonState.disabled());
                    return;
                  }
                } else {
                  if (_digit == focusedValue) {
                    type = DartType.triple;
                  } else if (_digit == focusedValue - 1) {
                    type = DartType.double;
                  } else if (_digit == focusedValue - 2) {
                    type = DartType.single;
                  } else {
                    emit(const DetailedDigitButtonState.disabled());
                    return;
                  }
                }
              } else {
                if (focusedValue == 20) {
                  if (_digit == 19) {
                    type = DartType.single;
                  } else if (_digit == focusedValue) {
                    type = DartType.double;
                  } else if (_digit == 25) {
                    type = DartType.triple;
                  } else {
                    emit(const DetailedDigitButtonState.disabled());
                    return;
                  }
                } else {
                  if (_digit == focusedValue - 1) {
                    type = DartType.single;
                  } else if (_digit == focusedValue) {
                    type = DartType.double;
                  } else if (_digit == focusedValue + 1) {
                    type = DartType.triple;
                  } else {
                    emit(const DetailedDigitButtonState.disabled());
                    return;
                  }
                }

                // emit focused with dartType and focusedValue
                emit(
                  DetailedDigitButtonState.focused(
                    dartType: type,
                    value: focusedValue,
                  ),
                );
              }
            },
          );
        }
      },
    );
  }
}
