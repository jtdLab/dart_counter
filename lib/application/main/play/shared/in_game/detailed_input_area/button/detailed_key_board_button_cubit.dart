import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../detailed_input_area_bloc.dart';

part 'detailed_key_board_button_cubit.freezed.dart';
part 'detailed_key_board_button_state.dart';

// TODO refactor later to use this enum instead of value
enum DetailedKeyBoardButtonType {
  erease,
  zero,
  one,
  two,
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine,
  ten,
  eleven,
  twelve,
  thirteen,
  fourteen,
  fifteen,
  sixteen,
  seventeen,
  eighteen,
  nineteen,
  twenty,
  twentyFive
}


class DetailedKeyBoardButtonCubit extends Cubit<DetailedKeyBoardButtonState> {
  final int _value; // The value the button shows in initial state
  final DetailedInputAreaBloc _inputAreaBloc;
  final PointsLeftCubit _pointsLeftCubit; // TODO needed???

  final IDartUtils _dartUtils; // TODO needed ?

  late final StreamSubscription _inputAreaSubscription;

  DetailedKeyBoardButtonCubit(
    this._value,
    this._inputAreaBloc,
    this._pointsLeftCubit,
    this._dartUtils,
  ) : super(
          DetailedKeyBoardButtonState.initial(value: _value, disabled: false),
        ) {
    _inputAreaSubscription =
        _inputAreaBloc.stream.listen((detailedInputAreaState) {
      emit(
        detailedInputAreaState.map(
          initial: (initial) => DetailedKeyBoardButtonState.initial(
            value: _value,
            disabled: false,
          ),
          focused: (focused) => _mapDetailedInputAreaFocusedToState(focused),
        ),
      );
    });
  }

  void pressed() {
    state.map(
      initial: (initial) {
        _inputAreaBloc
            .add(DetailedInputAreaEvent.dartFocused(focusedValue: _value));
      },
      focused: (focused) {
        final type = focused.type;

        _inputAreaBloc
            .add(DetailedInputAreaEvent.dartDetailPressed(type: type));
      },
    );
  }

  @override
  Future<void> close() {
    _inputAreaSubscription.cancel();
    return super.close();
  }

  /// Maps the incoming [event] from the input area to the correct state of the specific button with [_value].
  DetailedKeyBoardButtonState _mapDetailedInputAreaFocusedToState(
    DetailedInputAreaFocused event,
  ) {
    final focusedValue = event.focusedValue;
    final maxAllowedType = event.maxAllowedType;

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
      if (_value == focusedValue) {
        type = DartType.single;
      } else if (_value == focusedValue + 1) {
        type = DartType.double;
      } else if (_value == focusedValue + 2) {
        type = DartType.triple;
      } else {
        return DetailedKeyBoardButtonState.initial(
            value: _value, disabled: true);
      }
    } else if (rightSide.contains(focusedValue)) {
      if (focusedValue == 25) {
        if (_value == 25) {
          type = DartType.double;
        } else if (_value == 20) {
          type = DartType.single;
        } else {
          return DetailedKeyBoardButtonState.initial(
              value: _value, disabled: true);
        }
      } else {
        if (_value == focusedValue) {
          type = DartType.triple;
        } else if (_value == focusedValue - 1) {
          type = DartType.double;
        } else if (_value == focusedValue - 2) {
          type = DartType.single;
        } else {
          return DetailedKeyBoardButtonState.initial(
              value: _value, disabled: true);
        }
      }
    } else {
      if (focusedValue == 20) {
        if (_value == 19) {
          type = DartType.single;
        } else if (_value == focusedValue) {
          type = DartType.double;
        } else if (_value == 25) {
          type = DartType.triple;
        } else {
          return DetailedKeyBoardButtonState.initial(
              value: _value, disabled: true);
        }
      } else {
        if (_value == focusedValue - 1) {
          type = DartType.single;
        } else if (_value == focusedValue) {
          type = DartType.double;
        } else if (_value == focusedValue + 1) {
          type = DartType.triple;
        } else {
          return DetailedKeyBoardButtonState.initial(
              value: _value, disabled: true);
        }
      }
    }

    // filter when type is larger then max allowed type

    if (maxAllowedType == DartType.single && type != DartType.single) {
      return DetailedKeyBoardButtonState.initial(value: _value, disabled: true);
    }

    if (maxAllowedType == DartType.double && type == DartType.triple) {
      return DetailedKeyBoardButtonState.initial(value: _value, disabled: true);
    }

    // Return state
    return DetailedKeyBoardButtonState.focused(
      type: type,
      value: focusedValue,
    );
  }
}
