import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'standard_key_board_button_cubit.freezed.dart';
part 'standard_key_board_button_state.dart';

// TODO remove
/**
 * enum StandardKeyBoardButtonType {
  check,
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
  nine
}
 */

class StandardKeyBoardButtonCubit extends Cubit<StandardKeyBoardButtonState> {
  final int _value;
  final InputCubit _inputCubit;
  final PointsLeftCubit _pointsLeftCubit; // TODO needed???

  final IDartUtils _dartUtils;

  late final StreamSubscription _inputCubitSubscription;

  StandardKeyBoardButtonCubit(
    this._value,
    this._pointsLeftCubit,
    this._inputCubit,
    this._dartUtils,
  ) : super(const StandardKeyBoardButtonState.initial(disabled: false)) {
    _inputCubitSubscription = _inputCubit.stream.listen((inputState) {
      final out = inputState.map(
        points: (points) => _mapInputPointsToState(points),
        darts: (darts) => throw Error(),
      );
      
      print(out);

      emit(out);
    });
  }

  @override
  Future<void> close() {
    _inputCubitSubscription.cancel();
    return super.close();
  }

  /// Maps the incoming [event] from the input cubit to the correct state of the specific button with [_type].
  StandardKeyBoardButtonState _mapInputPointsToState(
    InputPoints event,
  ) {
    final points = event.points;

    final pointsLeft = _pointsLeftCubit.state;

    int newPoints(int oldPoints, int digit) {
      return int.parse(oldPoints.toString() + digit.toString());
    }

    final bool disabled;
    switch (_value) {
      case 0:
        disabled = points == 0 ||
            !_dartUtils.validatePoints(
              points: newPoints(points, 0),
              pointsLeft: pointsLeft,
            );
        break;
      case 1:
        disabled = !_dartUtils.validatePoints(
          points: newPoints(points, 1),
          pointsLeft: pointsLeft,
        );
        break;
      case 2:
        disabled = !_dartUtils.validatePoints(
          points: newPoints(points, 2),
          pointsLeft: pointsLeft,
        );
        break;
      case 3:
        disabled = !_dartUtils.validatePoints(
          points: newPoints(points, 3),
          pointsLeft: pointsLeft,
        );
        break;
      case 4:
        disabled = !_dartUtils.validatePoints(
          points: newPoints(points, 4),
          pointsLeft: pointsLeft,
        );
        break;
      case 5:
        disabled = !_dartUtils.validatePoints(
          points: newPoints(points, 5),
          pointsLeft: pointsLeft,
        );
        break;
      case 6:
        disabled = !_dartUtils.validatePoints(
          points: newPoints(points, 6),
          pointsLeft: pointsLeft,
        );
        break;
      case 7:
        disabled = !_dartUtils.validatePoints(
          points: newPoints(points, 7),
          pointsLeft: pointsLeft,
        );
        break;
      case 8:
        disabled = !_dartUtils.validatePoints(
          points: newPoints(points, 8),
          pointsLeft: pointsLeft,
        );
        break;
      case 9:
        disabled = !_dartUtils.validatePoints(
          points: newPoints(points, 9),
          pointsLeft: pointsLeft,
        );
        break;
      default:
        disabled = false;
    }

    // TODO remove
    /**
     * switch (_type) {
      case StandardKeyBoardButtonType.check:
        disabled = points == 0;
        break;
      case StandardKeyBoardButtonType.erease:
        disabled = points == 0;
        break;
      case StandardKeyBoardButtonType.zero:
        disabled = points == 0 ||
            !_dartUtils.validatePoints(
              points: newPoints(points, 0),
              pointsLeft: pointsLeft,
            );
        break;
      case StandardKeyBoardButtonType.one:
        disabled = !_dartUtils.validatePoints(
          points: newPoints(points, 1),
          pointsLeft: pointsLeft,
        );
        break;
      case StandardKeyBoardButtonType.two:
        disabled = !_dartUtils.validatePoints(
          points: newPoints(points, 2),
          pointsLeft: pointsLeft,
        );
        break;
      case StandardKeyBoardButtonType.three:
        disabled = !_dartUtils.validatePoints(
          points: newPoints(points, 3),
          pointsLeft: pointsLeft,
        );
        break;
      case StandardKeyBoardButtonType.four:
        disabled = !_dartUtils.validatePoints(
          points: newPoints(points, 4),
          pointsLeft: pointsLeft,
        );
        break;
      case StandardKeyBoardButtonType.five:
        disabled = !_dartUtils.validatePoints(
          points: newPoints(points, 5),
          pointsLeft: pointsLeft,
        );
        break;
      case StandardKeyBoardButtonType.six:
        disabled = !_dartUtils.validatePoints(
          points: newPoints(points, 6),
          pointsLeft: pointsLeft,
        );
        break;
      case StandardKeyBoardButtonType.seven:
        disabled = !_dartUtils.validatePoints(
          points: newPoints(points, 7),
          pointsLeft: pointsLeft,
        );
        break;
      case StandardKeyBoardButtonType.eight:
        disabled = !_dartUtils.validatePoints(
          points: newPoints(points, 8),
          pointsLeft: pointsLeft,
        );
        break;
      case StandardKeyBoardButtonType.nine:
        disabled = !_dartUtils.validatePoints(
          points: newPoints(points, 9),
          pointsLeft: pointsLeft,
        );
        break;
    }
     */

    return StandardKeyBoardButtonState.initial(disabled: disabled);
  }
}
