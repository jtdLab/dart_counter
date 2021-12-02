import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/play/shared/input/input_cubit.dart';
import 'package:dart_counter/application/play/shared/show_checkout_details/show_checkout_details_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/helpers.dart' as helpers;
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../in_game_event.dart';
import '../in_game_state.dart';

part 'detailed_input_area_bloc.freezed.dart';
part 'detailed_input_area_event.dart';
part 'detailed_input_area_state.dart';

@injectable
class DetailedInputAreaBloc
    extends Bloc<DetailedInputAreaEvent, DetailedInputAreaState>
    with AutoResetLazySingleton {
  final Cubit<AbstractGameSnapshot> _playWatcherCubit;
  final Bloc<InGameEvent, InGameState> _inGameBloc;
  final InputCubit _inputCubit;
  final ShowCheckoutDetailsCubit _showCheckoutDetailsCubit;

  DetailedInputAreaBloc(
    // TODO has to be nullable because of getIt maybe find better solutation
    @factoryParam Cubit<AbstractGameSnapshot>? playWatcherCubit,
    @factoryParam Bloc<InGameEvent, InGameState>? inGameBloc,
    this._inputCubit,
    this._showCheckoutDetailsCubit,
  )   : _playWatcherCubit = playWatcherCubit!,
        _inGameBloc = inGameBloc!,
        super(const DetailedInputAreaState.initial()) {
    on<_UndoThrowPressed>((_, __) => _mapUndoThrowPressedToState());
    on<_PerformThrowPressed>((_, __) => _mapPerformThrowPressedToState());
    on<_DartPressed>(_mapDartPressedToState);
    on<_Unfocused>((_, emit) => _mapUnfocusedToState(emit));
    on<_DartDetailPressed>(_mapDartDetailPressedToState);
    on<_UndoDartPressed>((_, emit) => _mapUndoDartPressedToState(emit));
  }

  void _mapUndoThrowPressedToState() =>
      _inGameBloc.add(const InGameEvent.undoThrowPressed());

  void _mapPerformThrowPressedToState() {
    final pointsLeftCurrentTurn =
        _playWatcherCubit.state.currentTurn().pointsLeft;

    final darts = _inputCubit.state.when(
      points: (input) => throw Error(), // TODO error
      darts: (darts) => darts,
    );
    final input = darts.fold<int>(
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
      _showCheckoutDetailsCubit.showCheckoutDetails();
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

      _inputCubit.update(newInput: right(const KtList.empty()));
    }
  }

  void _mapDartPressedToState(
    _DartPressed event,
    Emitter<DetailedInputAreaState> emit,
  ) {
    final darts = _inputCubit.state
        .when(
          points: (input) => throw Error(), // TODO better error
          darts: (darts) => darts,
        )
        .toMutableList();

    final pointsLeftCurrentTurn =
        _playWatcherCubit.state.currentTurn().pointsLeft;

    // TODO calc more granular depending on game state and dart.points and pointsLeftCurrentTurn
    if (darts.size < 3) {
      final focusedValue = event.value;
      if (focusedValue == 0) {
        const dart = Dart(type: DartType.single, value: 0);
        _inputCubit.update(newInput: right(darts..add(dart)));
      } else {
        // TODO ?? look optical wat
        emit(state.copyWith(focusedValue: focusedValue));
      }
    }
  }

  void _mapUnfocusedToState(
    Emitter<DetailedInputAreaState> emit,
  ) {
    emit(state.copyWith(focusedValue: null));
  }

  void _mapDartDetailPressedToState(
    _DartDetailPressed event,
    Emitter<DetailedInputAreaState> emit,
  ) {
    final darts = _inputCubit.state
        .when(
          points: (input) => throw Error(),
          darts: (darts) => darts,
        )
        .toMutableList();

    final value = state.focusedValue;

    if (value == null) {
      throw Error(); // TODO better error
    }

    final dart = Dart(type: event.type, value: value);

    emit(state.copyWith(focusedValue: null));
    _inputCubit.update(newInput: right(darts..add(dart)));
  }

  void _mapUndoDartPressedToState(
    Emitter<DetailedInputAreaState> emit,
  ) {
    final darts = _inputCubit.state
        .when(
          points: (input) => throw Error(),
          darts: (darts) => darts,
        )
        .toMutableList();

    if (darts.isNotEmpty()) {
      emit(state.copyWith(focusedValue: null));
      _inputCubit.update(newInput: right(darts..removeAt(darts.size - 1)));
    }
  }
}
