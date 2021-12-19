import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'standard_key_board_button_cubit.freezed.dart';
part 'standard_key_board_button_state.dart';
part 'standard_key_board_button_type.dart';

class StandardKeyBoardButtonCubit extends Cubit<StandardKeyBoardButtonState> {
  final StandardKeyBoardButtonType _type;
  final PointsLeftCubit _pointsLeftCubit;
  final InputCubit _inputCubit;

  final IDartUtils _dartUtils;

  late final StreamSubscription _pointsLeftCubitSubscription;
  late final StreamSubscription _inputCubitSubscription;

  StandardKeyBoardButtonCubit(
    this._type,
    this._pointsLeftCubit,
    this._inputCubit,
    this._dartUtils,
  ) : super(
          !_dartUtils.isFinish(points: _pointsLeftCubit.state) &&
                  _type == StandardKeyBoardButtonType.check
              ? StandardKeyBoardButtonState.initial(
                  type: _type,
                  disabled: true,
                )
              : _type == StandardKeyBoardButtonType.erease
                  ? StandardKeyBoardButtonState.initial(
                      type: _type,
                      disabled: true,
                    )
                  : StandardKeyBoardButtonState.initial(
                      type: _type,
                      disabled: false,
                    ),
        ) {
    _pointsLeftCubitSubscription = _pointsLeftCubit.stream
        .listen((_) => emit(_onPointsLeftOrInputChanged()));
    _inputCubitSubscription = _inputCubit.stream.listen((inputState) {
      inputState.mapOrNull(
        points: (points) => emit(_onPointsLeftOrInputChanged()),
      );
    });
  }

  @override
  Future<void> close() {
    _pointsLeftCubitSubscription.cancel();
    _inputCubitSubscription.cancel();
    return super.close();
  }

  /// On input or points left changed calc the correct state of the specific button with [_type].
  StandardKeyBoardButtonState _onPointsLeftOrInputChanged() {
    final points = _inputCubit.state.map(
      points: (points) => points.points,
      darts: (darts) => throw Error(), // TODO better error
    );

    final pointsLeft = _pointsLeftCubit.state;

    int newPoints(int oldPoints, int digit) {
      return int.parse(oldPoints.toString() + digit.toString());
    }

    final bool disabled;
    switch (_type) {
      case StandardKeyBoardButtonType.check:
        disabled = !_dartUtils.isFinish(points: pointsLeft);
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

    return state.copyWith(disabled: disabled);
  }
}
