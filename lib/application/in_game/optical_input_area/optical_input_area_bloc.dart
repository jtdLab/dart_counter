import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/in_game/in_game_bloc.dart';
import 'package:dart_counter/domain/play/dart.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:dart_counter/domain/play/helpers.dart' as helpers;

part 'optical_input_area_event.dart';
part 'optical_input_area_state.dart';
part 'optical_input_area_bloc.freezed.dart';

@lazySingleton
class OpticalInputAreaBloc
    extends Bloc<OpticalInputAreaEvent, OpticalInputAreaState>
    with AutoResetLazySingleton {
  final InGameBloc _inGameBloc;

  OpticalInputAreaBloc(
    this._inGameBloc,
  ) : super(
          OpticalInputAreaState.initial(),
        );

  @override
  Stream<OpticalInputAreaState> mapEventToState(
    OpticalInputAreaEvent event,
  ) async* {
    yield* event.map(
      undoThrowPressed: (_) => _mapUndoThrowPressedToState(),
      performThrowPressed: (_) => _mapPerformThrowPressedToState(),
      dartPressed: (event) => _mapDartPressedToState(event),
      undoDartPressed: (_) => _mapUndoDartPressedToState(),
    );
  }

  Stream<OpticalInputAreaState> _mapUndoThrowPressedToState() async* {
    _inGameBloc.add(const InGameEvent.undoThrowPressed());
  }

  Stream<OpticalInputAreaState> _mapPerformThrowPressedToState() async* {
    final pointsLeftCurrentTurn =
        _inGameBloc.state.game.currentTurn().pointsLeft;

    final input =
        state.darts.foldRight(0, (dart, int acc) => acc + dart.points());

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
      _inGameBloc.add(const InGameEvent.showCheckoutDetailsRequested());
    } else {
      _inGameBloc.add(
        InGameEvent.performThrowPressed(
          t: Throw(
            points: input,
            dartsThrown: minDartsThrown,
            dartsOnDouble: minDartsOnDouble,
            darts: state.darts,
          ),
        ),
      );
      yield state.copyWith(
        darts: const KtList.empty(),
      );
    }
  }

  Stream<OpticalInputAreaState> _mapDartPressedToState(
    DartPressed event,
  ) async* {
    final darts = state.darts;

    final pointsLeftCurrentTurn =
        _inGameBloc.state.game.currentTurn().pointsLeft;

    // TODO calc more granular depending on game state and dart.points and pointsLeftCurrentTurn
    if (darts.size < 3) {
      final focusedValue = event.value;
      if (focusedValue == 0) {
        const dart = Dart(type: DartType.s, value: 0);
        final newDarts = darts.toMutableList()..add(dart);
        yield state.copyWith(
          darts: newDarts,
        );
      } else {
        final dart = Dart(type: event.type, value: event.value);
        final newDarts = darts.toMutableList()..add(dart);
        yield state.copyWith(
          darts: newDarts,
        );
      }
    }
  }

  Stream<OpticalInputAreaState> _mapUndoDartPressedToState() async* {
    final darts = state.darts.toMutableList();

    if (darts.isNotEmpty()) {
      final newDarts = darts..removeAt(darts.size - 1);

      yield state.copyWith(
        darts: newDarts,
      );
    }
  }
}
