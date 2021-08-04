import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/application/in_game/in_game_bloc.dart';
import 'package:dart_counter/domain/play/dart.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:dart_counter/domain/play/helpers.dart' as helpers;

part 'detailed_input_area_event.dart';
part 'detailed_input_area_state.dart';
part 'detailed_input_area_bloc.freezed.dart';

@lazySingleton
class DetailedInputAreaBloc
    extends Bloc<DetailedInputAreaEvent, DetailedInputAreaState>
    with AutoResetLazySingleton {
  final InGameBloc _inGameBloc;

  DetailedInputAreaBloc(
    this._inGameBloc,
  ) : super(
          DetailedInputAreaState.initial(),
        );

  @override
  Stream<DetailedInputAreaState> mapEventToState(
    DetailedInputAreaEvent event,
  ) async* {
    yield* event.map(
      undoThrowPressed: (_) => _mapUndoThrowPressedToState(),
      performThrowPressed: (_) => _mapPerformThrowPressedToState(),
      dartPressed: (event) => _mapDartPressedToState(event),
      unfocused: (_) => _mapUnfocusedToState(),
      dartDetailPressed: (event) => _mapDartDetailPressedToState(event),
      undoDartPressed: (_) => _mapUndoDartPressedToState(),
    );
  }

  Stream<DetailedInputAreaState> _mapUndoThrowPressedToState() async* {
    _inGameBloc.add(const InGameEvent.undoThrowPressed());
  }

  Stream<DetailedInputAreaState> _mapPerformThrowPressedToState() async* {
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

  Stream<DetailedInputAreaState> _mapDartPressedToState(
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
        yield state.copyWith(
          focusedValue: focusedValue,
        );
      }
    }
  }

  Stream<DetailedInputAreaState> _mapUnfocusedToState() async* {
    yield state.copyWith(
      focusedValue: null,
    );
  }

  Stream<DetailedInputAreaState> _mapDartDetailPressedToState(
    DartDetailPressed event,
  ) async* {
    final darts = state.darts;
    final value = state.focusedValue;
    if (value == null) {
      throw UnexpectedStateError();
    }

    final dart = Dart(type: event.type, value: value);
    final newDarts = darts.toMutableList()..add(dart);

    yield state.copyWith(
      focusedValue: null,
      darts: newDarts,
    );
  }

  Stream<DetailedInputAreaState> _mapUndoDartPressedToState() async* {
    final darts = state.darts.toMutableList();

    if (darts.isNotEmpty()) {
      final newDarts = darts..removeAt(darts.size - 1);

      yield state.copyWith(
        focusedValue: null,
        darts: newDarts,
      );
    }
  }
}
