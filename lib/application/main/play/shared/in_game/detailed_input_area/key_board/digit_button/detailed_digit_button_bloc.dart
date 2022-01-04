import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/darts/darts_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/detailed_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/errors.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'detailed_digit_button_bloc.freezed.dart';
part 'detailed_digit_button_event.dart';
part 'detailed_digit_button_state.dart';

// TODO double 0 gets displayed instead of normal 0

class DetailedDigitButtonBloc
    extends Bloc<DetailedDigitButtonEvent, DetailedDigitButtonState> {
  final int _digit;

  final DetailedInputAreaBloc _inputAreaBloc;
  final DartsCubit _dartsCubit;
  final PointsLeftCubit _pointsLeftCubit;
  final AdvancedSettingsBloc _advancedSettingsBloc;

  final IDartUtils _dartUtils;

  DetailedDigitButtonBloc(
    this._digit,
    this._inputAreaBloc,
    this._dartsCubit,
    this._pointsLeftCubit,
    this._advancedSettingsBloc,
    this._dartUtils,
  ) : super(
          _advancedSettingsBloc.state.map(
            createGame: (_) => throw advancedSettingsInGameExpectedError,
            inGame: (inGame) {
              return _inputAreaBloc.state.map(
                initial: (_) {
                  final smartKeyBoardActivated =
                      inGame.currentTurnAdvancedSettings.smartKeyBoardActivated;

                  if (smartKeyBoardActivated) {
                    // calulates the types that are valid in focused state for this button in current game state
                    // TODO duplicate is the same logic as _onRefresh
                    List<DartType> calcValidDartTypes(
                      int pointsLeft,
                      int digit,
                    ) {
                      final validTypes = <DartType>[];
                      for (final dartType in DartType.values) {
                        final newDarts = _dartsCubit.state.toMutableList()
                          ..add(Dart(type: dartType, value: _digit));

                        if (_dartUtils.validateDarts(
                          pointsLeft: pointsLeft,
                          darts: newDarts,
                        )) {
                          final newPoints = newDarts.fold<int>(
                            0,
                            (acc, dart) => acc + dart.points(),
                          );
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

                    final pointsLeft = _pointsLeftCubit.state;

                    final validTypes = calcValidDartTypes(pointsLeft, _digit);
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
        _dartsCubit.stream.forEach((_) => _refreshState(emit)),
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
        final darts = _dartsCubit.state.toMutableList();
        final dartTyp = focused.dartType;
        final focusedValue = focused.value;

        // reset inputArea
        _inputAreaBloc.add(const DetailedInputAreaEvent.unfocusRequested());
        // remove add dart represented by this button to darts
        final newDarts = darts..add(Dart(type: dartTyp, value: focusedValue));
        // set input to new darts

        final pointsLeft = _pointsLeftCubit.state;

        // if new darts are valid in current game state
        if (_dartUtils.validateDarts(
          darts: newDarts,
          pointsLeft: pointsLeft,
        )) {
          // set dart cubit to new darts
          _dartsCubit.update(newDarts);
        }
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

        // calcs the type of this button for given focused value. null if button is disabled
        DartType? calcType(int focusedValue) {
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

          if (leftSide.contains(focusedValue)) {
            if (_digit == focusedValue) {
              return DartType.single;
            } else if (_digit == focusedValue + 1) {
              return DartType.double;
            } else if (_digit == focusedValue + 2) {
              return DartType.triple;
            }
          } else if (rightSide.contains(focusedValue)) {
            if (focusedValue == 25) {
              if (_digit == 25) {
                return DartType.double;
              } else if (_digit == 20) {
                return DartType.single;
              }
            } else {
              if (_digit == focusedValue) {
                return DartType.triple;
              } else if (_digit == focusedValue - 1) {
                return DartType.double;
              } else if (_digit == focusedValue - 2) {
                return DartType.single;
              }
            }
          } else {
            if (focusedValue == 20) {
              if (_digit == 19) {
                return DartType.single;
              } else if (_digit == focusedValue) {
                return DartType.double;
              } else if (_digit == 25) {
                return DartType.triple;
              }
            } else {
              if (_digit == focusedValue - 1) {
                return DartType.single;
              } else if (_digit == focusedValue) {
                return DartType.double;
              } else if (_digit == focusedValue + 1) {
                return DartType.triple;
              }
            }
            return null;
          }
        }

        // calulates the types that are valid in focused state for this button in current game state
        List<DartType> calcAllowedTypes(int pointsLeft, int digit) {
          final validTypes = <DartType>[];
          for (final dartType in DartType.values) {
            final newDarts = _dartsCubit.state.toMutableList()
              ..add(Dart(type: dartType, value: digit));

            if (_dartUtils.validateDarts(
              pointsLeft: pointsLeft,
              darts: newDarts,
            )) {
              final newPoints =
                  newDarts.fold<int>(0, (acc, dart) => acc + dart.points());

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

        _inputAreaBloc.state.map(
          initial: (initial) {
            // when smart keyboard is active
            if (smartKeyBoardActivated) {
              final pointsLeft = _pointsLeftCubit.state;
              final allowedTypes = calcAllowedTypes(pointsLeft, _digit);

              // when only one dartType is possible
              if (allowedTypes.isEmpty) {
                // emit disabled
                emit(const DetailedDigitButtonState.disabled());
                // when exactly 1 dartType is possible
              } else if (allowedTypes.length == 1) {
                // emit focused
                emit(
                  DetailedDigitButtonState.focused(
                    dartType: allowedTypes.first,
                    value: _digit,
                  ),
                );
              } else {
                // emit disabled
                emit(const DetailedDigitButtonState.enabled());
              }
            } else {
              // emit enabled
              emit(const DetailedDigitButtonState.enabled());
            }
          },
          focused: (focused) {
            final focusedValue = focused.focusedValue;

            // Determine type of new state
            final type = calcType(focusedValue);

            // when smart keyboard is active
            if (smartKeyBoardActivated) {
              final pointsLeft = _pointsLeftCubit.state;
              final allowedTypes = calcAllowedTypes(pointsLeft, focusedValue);

              final maxAllowedType = allowedTypes.lastOrNull;

              // when only single is valid
              if (maxAllowedType == DartType.single) {
                if (_digit == 1) {
                  print(3333);
                }
                // emit enabled
                // TODO is this correct ?? doestn seems so
                emit(const DetailedDigitButtonState.enabled());
                return;
              }

              // when no type or
              // when no max allowed type or
              // when type is larger than max allowed type
              if (type == null ||
                  maxAllowedType == null ||
                  (maxAllowedType == DartType.single &&
                      type != DartType.single) ||
                  (maxAllowedType == DartType.double &&
                      type == DartType.triple)) {
                // emit disabled
                emit(const DetailedDigitButtonState.disabled());
                return;
              }
            } else {
              // when this button is not around the focused button
              if (type == null) {
                // emit disabled
                emit(const DetailedDigitButtonState.disabled());
                return;
              }
            }

            // else emit focused with dartType and focusedValue
            emit(
              DetailedDigitButtonState.focused(
                dartType: type,
                value: focusedValue,
              ),
            );
          },
        );
      },
    );
  }
}
