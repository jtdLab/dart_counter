import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/application/in_game/in_game_bloc.dart';
import 'package:dart_counter/domain/play/dart.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
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

  Stream<DetailedInputAreaState> _mapDartPressedToState(
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
        // TODO ?? look optical
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
    final darts =
        _inGameBloc.state.inputOrDarts.toOption().toNullable()!.toMutableList();

    final value = state.focusedValue;
    if (value == null) {
      // TODO rename better
      throw Error();
      //throw UnexpectedStateError();
    }

    final dart = Dart(type: event.type, value: value);
    final newDarts = darts.toMutableList()..add(dart);

    yield state.copyWith(
      focusedValue: null,
    );
    _inGameBloc.add(
      InGameEvent.inputOrDartsChanged(
        newInputOrDarts: right(newDarts),
      ),
    );
  }

  Stream<DetailedInputAreaState> _mapUndoDartPressedToState() async* {
    final darts =
        _inGameBloc.state.inputOrDarts.toOption().toNullable()!.toMutableList();

    if (darts.isNotEmpty()) {
      final newDarts = darts..removeAt(darts.size - 1);

      yield state.copyWith(
        focusedValue: null,
      );
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
    if (getIt.isRegistered<DetailedInputAreaBloc>()) {
      getIt.resetLazySingleton<DetailedInputAreaBloc>();
    }

    return super.close();
  }
}
