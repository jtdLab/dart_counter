import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/main/play/shared/input/input_cubit.dart';
import 'package:dart_counter/application/main/play/shared/show_checkout_details/show_checkout_details_cubit.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/helpers.dart' as helpers;
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../in_game_event.dart';
import '../in_game_state.dart';

part 'standard_input_area_bloc.freezed.dart';
part 'standard_input_area_event.dart';
part 'standard_input_area_state.dart';

@injectable
class StandardInputAreaBloc
    extends Bloc<StandardInputAreaEvent, StandardInputAreaState>
    with AutoResetLazySingleton {
  final Cubit<AbstractGameSnapshot> _playWatcherCubit;
  final Bloc<InGameEvent, InGameState> _inGameBloc;
  final InputCubit _inputCubit;
  final ShowCheckoutDetailsCubit _showCheckoutDetailsCubit;

  StandardInputAreaBloc(
    // TODO has to be nullable because of getIt maybe find better solutation
    @factoryParam Cubit<AbstractGameSnapshot>? playWatcherCubit,
    @factoryParam Bloc<InGameEvent, InGameState>? inGameBloc,
    this._inputCubit,
    this._showCheckoutDetailsCubit,
  )   : _playWatcherCubit = playWatcherCubit!,
        _inGameBloc = inGameBloc!,
        super(const StandardInputAreaState.initial()) {
    on<_UndoThrowPressed>((_, __) => _mapUndoThrowPressedToState());
    on<_PerformThrowPressed>((_, __) => _mapPerformThrowPressedToState());
    on<_CheckPressed>((_, emit) => _mapCheckPressedToState(emit));
    on<_ErasePressed>((_, emit) => _mapErasePressedToState(emit));
    on<_DigitPressed>(_mapDigitPressedToState);
  }

  void _mapUndoThrowPressedToState() =>
      _inGameBloc.add(const InGameEvent.undoThrowPressed());

  void _mapPerformThrowPressedToState() {
    final pointsLeftCurrentTurn =
        _playWatcherCubit.state.currentTurn().pointsLeft;

    final points = _inputCubit.state.when(
      points: (input) => input,
      darts: (darts) => throw Error(), // TODO better error
    );

    final minDartsThrown = helpers.minDartsThrown(
      points: points,
      pointsLeft: pointsLeftCurrentTurn,
    );
    final maxDartsThrown = helpers.maxDartsThrown(
      points: points,
      pointsLeft: pointsLeftCurrentTurn,
    );

    final minDartsOnDouble = helpers.minDartsOnDouble(
      points: points,
      pointsLeft: pointsLeftCurrentTurn,
    );
    final maxDartsOnDouble = helpers.maxDartsOnDouble(
      points: points,
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
            points: points,
            dartsThrown: minDartsThrown,
            dartsOnDouble: minDartsOnDouble,
          ),
        ),
      );

      _inputCubit.update(newInput: left(0));
    }
  }

  void _mapCheckPressedToState(
    Emitter<StandardInputAreaState> emit,
  ) {
    final pointsLeftCurrentTurn =
        _playWatcherCubit.state.currentTurn().pointsLeft;

    final isFinish = helpers.isFinish(points: pointsLeftCurrentTurn);
    if (isFinish) {
      _inputCubit.update(newInput: left(pointsLeftCurrentTurn));

      final minDartsThrown = helpers.minDartsThrown(
        points: pointsLeftCurrentTurn,
        pointsLeft: pointsLeftCurrentTurn,
      );
      final maxDartsThrown = helpers.maxDartsThrown(
        points: pointsLeftCurrentTurn,
        pointsLeft: pointsLeftCurrentTurn,
      );

      final minDartsOnDouble = helpers.minDartsOnDouble(
        points: pointsLeftCurrentTurn,
        pointsLeft: pointsLeftCurrentTurn,
      );
      final maxDartsOnDouble = helpers.maxDartsOnDouble(
        points: pointsLeftCurrentTurn,
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
              points: pointsLeftCurrentTurn,
              dartsThrown: 3,
              dartsOnDouble: 1,
            ),
          ),
        );
      }
    }
  }

  void _mapErasePressedToState(
    Emitter<StandardInputAreaState> emit,
  ) {
    final currentInput = _inputCubit.state.when(
      points: (input) => input,
      darts: (darts) => throw Error(), // TODO better error
    );

    if (currentInput < 10) {
      _inputCubit.update(newInput: left(0));
    } else {
      final inputString = currentInput.toString();
      final newInput = int.parse(
        inputString.substring(0, inputString.length - 1),
      );

      _inputCubit.update(newInput: left(newInput));
    }
  }

  void _mapDigitPressedToState(
    _DigitPressed event,
    Emitter<StandardInputAreaState> emit,
  ) {
    final pointsLeftCurrentTurn =
        _playWatcherCubit.state.currentTurn().pointsLeft;

    final currentInput = _inputCubit.state.when(
      points: (input) => input,
      darts: (darts) => throw Error(), // TODO better error
    );

    final newInput = int.parse(
      currentInput.toString() + event.digit.toString(),
    );

    final valid = helpers.validatePoints(
      pointsLeft: pointsLeftCurrentTurn,
      points: newInput,
    );

    if (valid) {
      _inputCubit.update(newInput: left(newInput));
    }
  }
}
