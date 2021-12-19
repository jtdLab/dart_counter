import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../detailed_input_area_bloc.dart';

part 'detailed_key_board_button_cubit.freezed.dart';
part 'detailed_key_board_button_state.dart';
part 'detailed_key_board_button_type.dart';

class DetailedKeyBoardButtonCubit extends Cubit<DetailedKeyBoardButtonState> {
  final DetailedKeyBoardButtonType
      _type; // The value the button shows in initial state
  final DetailedInputAreaBloc _inputAreaBloc;
  final PointsLeftCubit _pointsLeftCubit;

  final IDartUtils _dartUtils;

  late final StreamSubscription _inputAreaSubscription;
  late final StreamSubscription _pointsLeftSubscription;

  DetailedKeyBoardButtonCubit(
    this._type,
    this._inputAreaBloc,
    this._pointsLeftCubit,
    this._dartUtils,
  ) : super(
          // TODO test
          _type == DetailedKeyBoardButtonType.erease
              ? DetailedKeyBoardButtonState.initial(
                  type: _type,
                  disabled: false,
                )
              : DetailedKeyBoardButtonState.initial(
                  type: _type,
                  disabled: !_dartUtils.validatePoints(
                    pointsLeft: _pointsLeftCubit.state,
                    points: _type.toDigit(),
                  ),
                ),
        ) {
    _inputAreaSubscription =
        _inputAreaBloc.stream.listen((detailedInputAreaState) {
      emit(
        detailedInputAreaState.map(
          initial: (initial) => DetailedKeyBoardButtonState.initial(
            type: _type,
            disabled: false,
          ),
          focused: (focused) => _mapDetailedInputAreaFocusedToState(focused),
        ),
      );
    });

    _pointsLeftSubscription = _pointsLeftCubit.stream.listen((pointsLeft) {
      // TODO implement
    });
  }

  void pressed() {
    if (_type == DetailedKeyBoardButtonType.erease) {
      _inputAreaBloc.add(const DetailedInputAreaEvent.ereaseDartPressed());
    } else {
      state.map(
        initial: (initial) {
          _inputAreaBloc.add(
            DetailedInputAreaEvent.dartFocused(focusedValue: _type.toDigit()),
          );
        },
        focused: (focused) {
          final dartTyp = focused.dartType;

          _inputAreaBloc
              .add(DetailedInputAreaEvent.dartDetailPressed(type: dartTyp));
        },
      );
    }
  }

  @override
  Future<void> close() {
    _inputAreaSubscription.cancel();
    _pointsLeftSubscription.cancel();
    return super.close();
  }

  /// Maps the incoming [event] from the input area to the correct state of the specific button with [_type].
  DetailedKeyBoardButtonState _mapDetailedInputAreaFocusedToState(
    DetailedInputAreaFocused event,
  ) {
    if (_type != DetailedKeyBoardButtonType.erease) {
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

      // filter when type is larger then max allowed type

      if (maxAllowedType == DartType.single && type != DartType.single) {
        return DetailedKeyBoardButtonState.initial(type: _type, disabled: true);
      }

      if (maxAllowedType == DartType.double && type == DartType.triple) {
        return DetailedKeyBoardButtonState.initial(type: _type, disabled: true);
      }

      // Return state
      return DetailedKeyBoardButtonState.focused(
        type: DetailedKeyBoardButtonTypeX.fromDigit(focusedValue),
        dartType: type,
      );
    } else {
      return state;
    }
  }
}
