import 'package:bloc/bloc.dart';
// import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../in_game_event.dart';
import '../in_game_state.dart';

part 'optical_input_area_bloc.freezed.dart';
part 'optical_input_area_event.dart';
part 'optical_input_area_state.dart';

// TODO test

class OpticalInputAreaBloc
    extends Bloc<OpticalInputAreaEvent, OpticalInputAreaState> {
  final Cubit<AbstractGameSnapshot> _playWatcherCubit;
  final Bloc<InGameEvent, InGameState> _inGameBloc;
  // final InputCubit _inputCubit;

  OpticalInputAreaBloc(
    this._playWatcherCubit,
    this._inGameBloc,
    //this._inputCubit,
  ) : super(const OpticalInputAreaState.initial()) {
    on<_DartPressed>(
        throw Error() /**(event, __) => _mapDartPressedToState(event) */);
    on<_UndoDartPressed>(
        throw Error() /**(_, __) => _mapUndoDartPressedToState()*/);
  }

  /**
   *  Stream<OpticalInputAreaState> _mapUndoThrowPressedToState() async* {
    _inGameBloc.add(const InGameEvent.undoThrowPressed());
  }

  Stream<OpticalInputAreaState> _mapPerformThrowPressedToState() async* {
    final pointsLeftCurrentTurn =
        _inGameBloc.state.gameSnapshot.currentTurn().pointsLeft;

    final darts = _inGameBloc.state.inputOrDarts.toOption().toNullable()!;
    final input = darts.iter.fold<int>(
      0,
      (acc, dart) => acc + dart.points(),
    );

    final minDartsThrown = helpers.minDartsThrown(
      points: input,
      pointsLeft: pointsLeftCurrentTurn,
    );
    final maxDartsThrown = helpers.maxDartsThrown(
      points: input,
      pointsLeft: pointsLeftCurrentTurn,
    );

    final minDartsOnDouble = helpers.minDartsOnDouble(
      points: input,
      pointsLeft: pointsLeftCurrentTurn,
    );
    final maxDartsOnDouble = helpers.maxDartsOnDouble(
      points: input,
      pointsLeft: pointsLeftCurrentTurn,
    );

    final showCheckoutDetails = !(minDartsThrown == maxDartsThrown &&
        minDartsOnDouble == maxDartsOnDouble);

    if (showCheckoutDetails) {
      yield state.copyWith(showCheckoutDetails: true);
      yield state.copyWith(showCheckoutDetails: false);
    } else {
      _inGameBloc.add(
        InGameEvent.performThrowPressed(
          t: Throw(
            points: input,
            dartsThrown: minDartsThrown,
            dartsOnDouble: minDartsOnDouble,
            darts: darts,
          ),
        ),
      );

      _inGameBloc.add(
        InGameEvent.inputOrDartsChanged(
          newInputOrDarts: right(const KtList.empty()),
        ),
      );
    }
  }

   */

  /**
  *  void _mapDartPressedToState(
    _DartPressed event,
  ) {
    final darts = _inputCubit.state
        .when(
          points: (input) => throw Error(),
          darts: (darts) => darts,
        )
        .toMutableList();

    final pointsLeftCurrentTurn =
        _playWatcherCubit.state.currentTurn().pointsLeft;

    // TODO calc more granular depending on game state and dart.points and pointsLeftCurrentTurn
    if (darts.size < 3) {
      final focusedValue = event.value;
      final dart = focusedValue == 0
          ? const Dart(type: DartType.single, value: 0)
          : Dart(type: event.type, value: focusedValue);

      _inputCubit.update(newInput: right(darts..add(dart)));
    }
  }

  void _mapUndoDartPressedToState() {
    final darts = _inputCubit.state
        .when(
          points: (input) => throw Error(),
          darts: (darts) => darts,
        )
        .toMutableList();

    if (darts.isNotEmpty()) {
      _inputCubit.update(newInput: right(darts..removeAt(darts.size - 1)));
    }
  }
  */
}
