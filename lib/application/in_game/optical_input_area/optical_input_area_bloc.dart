import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/in_game/in_game_bloc.dart';
import 'package:dart_counter/domain/play/dart.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
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

  Stream<OpticalInputAreaState> _mapDartPressedToState(
    DartPressed event,
  ) async* {
    final darts = _inGameBloc.state.inputOrDarts.toOption().toNullable()!;

    final pointsLeftCurrentTurn =
        _inGameBloc.state.gameSnapshot.currentTurn().pointsLeft;

    // TODO calc more granular depending on game state and dart.points and pointsLeftCurrentTurn
    if (darts.size < 3) {
      final focusedValue = event.value;
      if (focusedValue == 0) {
        const dart = Dart(type: DartType.s, value: 0);
        final newDarts = darts.toMutableList()..add(dart);

        _inGameBloc.add(
          InGameEvent.inputOrDartsChanged(
            newInputOrDarts: right(newDarts),
          ),
        );
      } else {
        // TODO ? look detailed
        final dart = Dart(type: event.type, value: focusedValue);
        final newDarts = darts.toMutableList()..add(dart);
        _inGameBloc.add(
          InGameEvent.inputOrDartsChanged(
            newInputOrDarts: right(newDarts),
          ),
        );
      }
    }
  }

  Stream<OpticalInputAreaState> _mapUndoDartPressedToState() async* {
    final darts =
        _inGameBloc.state.inputOrDarts.toOption().toNullable()!.toMutableList();

    if (darts.isNotEmpty()) {
      final newDarts = darts..removeAt(darts.size - 1);

      _inGameBloc.add(
        InGameEvent.inputOrDartsChanged(
          newInputOrDarts: right(newDarts),
        ),
      );
    }
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<OpticalInputAreaBloc>()) {
      getIt.resetLazySingleton<OpticalInputAreaBloc>();
    }

    return super.close();
  }
}
