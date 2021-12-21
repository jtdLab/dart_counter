import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../detailed_input_area_bloc.dart';

part 'detailed_key_board_button_cubit.freezed.dart';
part 'detailed_key_board_button_state.dart';
part 'detailed_key_board_button_type.dart';

// TODO transform to bloc
class DetailedKeyBoardButtonCubit extends Cubit<DetailedKeyBoardButtonState> {
  // The value the button shows in initial state
  final DetailedKeyBoardButtonType _type;
  final DetailedInputAreaBloc _inputAreaBloc;
  final InputCubit _inputCubit;
  final PointsLeftCubit _pointsLeftCubit;

  final IDartUtils _dartUtils;

  late final StreamSubscription _inputAreaSubscription;
  late final StreamSubscription _inputSubscription;
  late final StreamSubscription _pointsLeftSubscription;

  DetailedKeyBoardButtonCubit(
    this._type,
    this._inputAreaBloc,
    this._inputCubit,
    this._pointsLeftCubit,
    this._dartUtils,
  ) : super(
          _type == DetailedKeyBoardButtonType.erease
              ? DetailedKeyBoardButtonState.initial(
                  type: _type,
                  disabled: true,
                )
              : DetailedKeyBoardButtonState.initial(
                  type: _type,
                  disabled: !_dartUtils.validatePoints(
                    pointsLeft: _pointsLeftCubit.state,
                    points: _type.toDigit(),
                  ),
                ),
        ) {
    _inputAreaSubscription = _inputAreaBloc.stream
        .listen((inputAreaState) => inputAreaStateReceived());
    _inputSubscription =
        _inputCubit.stream.listen((inputState) => inputStateReceived());
    _pointsLeftSubscription =
        _pointsLeftCubit.stream.listen((pointsLeft) => pointsLeftReceived());
  }

  void pressed() {
    if (_type == DetailedKeyBoardButtonType.erease) {
      // erease button
      final darts = _inputCubit.state
          .when(
            points: (input) => throw Error(), // TODO error
            darts: (darts) => darts,
          )
          .toMutableList();

      if (darts.isNotEmpty()) {
        _inputAreaBloc.add(const DetailedInputAreaEvent.unfocusRequested());
        _inputCubit.update(newInput: right(darts..removeAt(darts.size - 1)));
      }
    } else {
      // digit buttons
      state.map(
        initial: (initial) {
          final darts = _inputCubit.state
              .when(
                points: (input) => throw Error(), // TODO error name better
                darts: (darts) => darts,
              )
              .toMutableList();
          final pointsLeft = _pointsLeftCubit.state;
          final points = darts.fold<int>(0, (acc, dart) => acc + dart.points());
          final newPoints = points + _type.toDigit();

          if (_dartUtils.validatePoints(
                pointsLeft: pointsLeft,
                points: newPoints,
              ) &&
              newPoints != pointsLeft) {
            _inputAreaBloc.add(const DetailedInputAreaEvent.unfocusRequested());
            _inputCubit.update(
              newInput: right(
                darts..add(Dart(type: DartType.single, value: _type.toDigit())),
              ),
            );
          } else {
            _inputAreaBloc.add(
              DetailedInputAreaEvent.dartFocused(focusedValue: _type.toDigit()),
            );
          }
        },
        focused: (focused) {
          final darts = _inputCubit.state
              .when(
                points: (input) => throw Error(), // TODO error name better
                darts: (darts) => darts,
              )
              .toMutableList();

          final focusedValue = focused.type.toDigit();
          final dartTyp = focused.dartType;

          _inputAreaBloc.add(const DetailedInputAreaEvent.unfocusRequested());
          _inputCubit.update(
            newInput: right(
              darts..add(Dart(type: dartTyp, value: focusedValue)),
            ),
          );
        },
      );
    }
  }

  void inputAreaStateReceived() {
    final newState = _inputAreaBloc.state.mapOrNull(
      focused: (focused) {
        if (_type != DetailedKeyBoardButtonType.erease) {
          final focusedValue = focused.focusedValue;

          // calc maxAllowedType it has to be the max type so the possible new points satisfy
          // pointsLeft - new points (aka. remaining points) >= 0 but not 1.
          final points = _inputCubit.state.when(
            points: (points) => throw Error(),
            darts: (darts) =>
                darts.fold<int>(0, (acc, dart) => acc + dart.points()),
          );
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
            return DetailedKeyBoardButtonState.initial(
              type: _type,
              disabled: false,
            );
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
          ]; // Buttons with values 3, 9, 15, 25 are on the left side of the keyboard.

          // Determine type of new state
          final DartType type;
          if (leftSide.contains(focusedValue)) {
            if (_type.toDigit() == focusedValue) {
              type = DartType.single;
            } else if (_type.toDigit() == focusedValue + 1) {
              type = DartType.double;
            } else if (_type.toDigit() == focusedValue + 2) {
              type = DartType.triple;
            } else {
              return DetailedKeyBoardButtonState.initial(
                type: _type,
                disabled: true,
              );
            }
          } else if (rightSide.contains(focusedValue)) {
            if (focusedValue == 25) {
              if (_type.toDigit() == 25) {
                type = DartType.double;
              } else if (_type.toDigit() == 20) {
                type = DartType.single;
              } else {
                return DetailedKeyBoardButtonState.initial(
                  type: _type,
                  disabled: true,
                );
              }
            } else {
              if (_type.toDigit() == focusedValue) {
                type = DartType.triple;
              } else if (_type.toDigit() == focusedValue - 1) {
                type = DartType.double;
              } else if (_type.toDigit() == focusedValue - 2) {
                type = DartType.single;
              } else {
                return DetailedKeyBoardButtonState.initial(
                  type: _type,
                  disabled: true,
                );
              }
            }
          } else {
            if (focusedValue == 20) {
              if (_type.toDigit() == 19) {
                type = DartType.single;
              } else if (_type.toDigit() == focusedValue) {
                type = DartType.double;
              } else if (_type.toDigit() == 25) {
                type = DartType.triple;
              } else {
                return DetailedKeyBoardButtonState.initial(
                  type: _type,
                  disabled: true,
                );
              }
            } else {
              if (_type.toDigit() == focusedValue - 1) {
                type = DartType.single;
              } else if (_type.toDigit() == focusedValue) {
                type = DartType.double;
              } else if (_type.toDigit() == focusedValue + 1) {
                type = DartType.triple;
              } else {
                return DetailedKeyBoardButtonState.initial(
                  type: _type,
                  disabled: true,
                );
              }
            }
          }

          // disable when no max allowed type
          if (maxAllowedType == null) {
            return DetailedKeyBoardButtonState.initial(
              type: _type,
              disabled: true,
            );
          }

          // disable when type is larger than max allowed type
          if (maxAllowedType == DartType.single && type != DartType.single) {
            return DetailedKeyBoardButtonState.initial(
              type: _type,
              disabled: true,
            );
          }

          if (maxAllowedType == DartType.double && type == DartType.triple) {
            return DetailedKeyBoardButtonState.initial(
              type: _type,
              disabled: true,
            );
          }

          // return focused state else
          return DetailedKeyBoardButtonState.focused(
            type: DetailedKeyBoardButtonTypeX.fromDigit(focusedValue),
            dartType: type,
          );
        }
      },
    );

    if (newState != null) {
      emit(newState);
    }
  }

  void pointsLeftReceived() {
    final points = _inputCubit.state.when(
      points: (points) => throw Error(), // TODO better error
      darts: (darts) => darts.fold<int>(0, (acc, dart) => acc + dart.points()),
    );

    final pointsLeft = _pointsLeftCubit.state;

    if (_type == DetailedKeyBoardButtonType.erease) {
      emit(
        DetailedKeyBoardButtonState.initial(
          type: _type,
          disabled: true,
        ),
      );
    } else {
      emit(
        DetailedKeyBoardButtonState.initial(
          type: _type,
          disabled: !_dartUtils.validatePoints(
            pointsLeft: pointsLeft,
            points: points + _type.toDigit(),
          ),
        ),
      );
    }
  }

  void inputStateReceived() {
    final darts = _inputCubit.state.when(
      points: (points) => throw Error(), // TODO better error
      darts: (darts) => darts,
    );
    final points = darts.fold<int>(0, (acc, dart) => acc + dart.points());
    final pointsLeft = _pointsLeftCubit.state;

    if (_type == DetailedKeyBoardButtonType.erease) {
      emit(
        DetailedKeyBoardButtonState.initial(
          type: _type,
          disabled: darts.size == 0,
        ),
      );
    } else {
      emit(
        DetailedKeyBoardButtonState.initial(
          type: _type,
          disabled: !_dartUtils.validatePoints(
            pointsLeft: pointsLeft,
            points: points + _type.toDigit(),
          ),
        ),
      );
    }
  }

  @override
  Future<void> close() {
    _inputAreaSubscription.cancel();
    _inputSubscription.cancel();
    _pointsLeftSubscription.cancel();
    return super.close();
  }
}
