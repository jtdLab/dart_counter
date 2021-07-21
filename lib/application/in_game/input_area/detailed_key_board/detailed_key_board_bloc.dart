import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/application/in_game/in_game_bloc.dart';
import 'package:dart_counter/application/in_game/input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/domain/play/dart.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'detailed_key_board_event.dart';
part 'detailed_key_board_state.dart';
part 'detailed_key_board_bloc.freezed.dart';

@lazySingleton
class DetailedKeyBoardBloc
    extends Bloc<DetailedKeyBoardEvent, DetailedKeyBoardState>
    with AutoResetLazySingleton {
  final IPlayFacade _playFacade;

  final InGameBloc _inGameBloc;
  final InputRowBloc _inputRowBloc;

  DetailedKeyBoardBloc(
    this._playFacade,
    this._inGameBloc,
    this._inputRowBloc,
  ) : super(
          DetailedKeyBoardState.initial(),
        ) {
    _inputRowBloc.add(
      const InputRowEvent.inputUpdated(
        newInput: 0,
        darts: KtList.empty(),
      ),
    );
  }

  @override
  Stream<DetailedKeyBoardState> mapEventToState(
    DetailedKeyBoardEvent event,
  ) async* {
    yield* event.map(
      dartPressed: (event) => _mapDartPressedToState(event),
      dartDetailPressed: (event) => _mapDartDetailPressedToState(event),
      undoDartPressed: (_) => _mapUndoDartPressedToState(),
    );
  }

  Stream<DetailedKeyBoardState> _mapDartPressedToState(
    DartPressed event,
  ) async* {
    var darts = _inputRowBloc.state.darts ?? const KtList.empty();

    final pointsLeftCurrentTurn =
        _inGameBloc.state.game.currentTurn().pointsLeft;

    // TODO calc more granular
    if (darts.size < 3) {
      final focusedValue = event.value;
      if (focusedValue == 0) {
        const dart = Dart(type: DartType.s, value: 0);
        final newDarts = darts.toMutableList()..add(dart);
        _inputRowBloc.add(
          InputRowEvent.inputUpdated(
            newInput: _inputRowBloc.state.input,
            darts: newDarts,
          ),
        );
      } else {
        yield state.copyWith(focusedValue: focusedValue);
      }
    }
  }

  Stream<DetailedKeyBoardState> _mapDartDetailPressedToState(
    DartDetailPressed event,
  ) async* {
    final darts = _inputRowBloc.state.darts ?? const KtList.empty();
    final value = state.focusedValue;
    if (value == null) {
      throw UnexpectedStateError();
    }

    final dart = Dart(type: event.type, value: value);
    final newDarts = darts.toMutableList()..add(dart);
    _inputRowBloc.add(
      InputRowEvent.inputUpdated(
        newInput: newDarts.foldRight(0, (dart, acc) => acc + dart.points()),
        darts: newDarts,
      ),
    );
    yield state.copyWith(
      focusedValue: null,
    );
  }

  Stream<DetailedKeyBoardState> _mapUndoDartPressedToState() async* {
    final darts = _inputRowBloc.state.darts?.toMutableList();
    if (darts == null) {
      throw UnexpectedStateError();
    }
    if (darts.isNotEmpty()) {
      final newDarts = darts..removeAt(darts.size - 1);
      _inputRowBloc.add(
        InputRowEvent.inputUpdated(
          newInput: newDarts.foldRight(0, (dart, acc) => acc + dart.points()),
          darts: newDarts,
        ),
      );
      // todo correct ?
      yield state.copyWith(focusedValue: null);
    }
  }
}
