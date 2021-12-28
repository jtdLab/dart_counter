import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/darts/darts_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/in_game_event.dart';
import 'package:dart_counter/application/main/play/shared/in_game/in_game_state.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/show_checkout_details/show_checkout_details_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'detailed_input_area_bloc.freezed.dart';
part 'detailed_input_area_event.dart';
part 'detailed_input_area_state.dart';

class DetailedInputAreaBloc
    extends Bloc<DetailedInputAreaEvent, DetailedInputAreaState>
    with AutoResetLazySingleton {
  final Bloc<InGameEvent, InGameState> _inGameBloc;
  final PointsLeftCubit _pointsLeftCubit;
  final DartsCubit _dartsCubit;
  final ShowCheckoutDetailsCubit _showCheckoutDetailsCubit;

  final IDartUtils _dartUtils;

  DetailedInputAreaBloc(
    this._inGameBloc,
    this._pointsLeftCubit,
    this._dartsCubit,
    this._showCheckoutDetailsCubit,
    this._dartUtils,
  ) : super(const DetailedInputAreaState.initial()) {
    on<_UndoThrowPressed>((_, __) => _mapUndoThrowPressedToState());
    on<_PerformThrowPressed>((_, emit) => _mapPerformThrowPressedToState(emit));
    on<_DartFocused>(_mapDartFocusedToState);
    on<_UnfocusRequested>((_, emit) => _mapUnfocusRequestedToState(emit));
  }

  void _mapUndoThrowPressedToState() =>
      _inGameBloc.add(const InGameEvent.undoThrowPressed());

  void _mapPerformThrowPressedToState(
    Emitter<DetailedInputAreaState> emit,
  ) {
    var darts = _dartsCubit.state;

    if (darts.isEmpty()) {
      // empty means the user had missed all 3 darts
      darts = List.generate(
        3,
        (index) => const Dart(type: DartType.double, value: 0),
      ).toImmutableList();
    }

    final pointsLeft = _pointsLeftCubit.state;
    final points = darts.fold<int>(0, (acc, dart) => acc + dart.points());

    if (darts.size != 3 && pointsLeft != points) {
      // less then 3 darts but do not finish the pointsLeft fill the remaining with 0s
      darts = darts.toMutableList()
        ..addAll(
          List.generate(
            3 - darts.size,
            (index) => const Dart(type: DartType.double, value: 0),
          ).toImmutableList(),
        );
    }

    // set update input cubit to darts filled with 0s
    _dartsCubit.update(darts);

    final minDartsThrown = _dartUtils.minDartsThrown(
      points: points,
      pointsLeft: pointsLeft,
    );
    final maxDartsThrown = _dartUtils.maxDartsThrown(
      points: points,
      pointsLeft: pointsLeft,
    );
    final minDartsOnDouble = _dartUtils.minDartsOnDouble(
      points: points,
      pointsLeft: pointsLeft,
    );
    final maxDartsOnDouble = _dartUtils.maxDartsOnDouble(
      points: points,
      pointsLeft: pointsLeft,
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
            darts: darts,
          ),
        ),
      );

      _dartsCubit.update(const KtList.empty());
    }
  }

  void _mapDartFocusedToState(
    _DartFocused event,
    Emitter<DetailedInputAreaState> emit,
  ) {
    final darts = _dartsCubit.state.toMutableList();
    final pointsLeft = _pointsLeftCubit.state;
    final points = darts.fold<int>(0, (acc, dart) => acc + dart.points());

    if (darts.size < 3 && pointsLeft != points) {
      final focusedValue = event.focusedValue;
      if (focusedValue == 0) {
        // 0 pressed type can be auto implied
        _dartsCubit.update(
          darts..add(const Dart(type: DartType.double, value: 0)),
        );
      } else {
        // other pressed type needs to be specified by another user input
        emit(DetailedInputAreaState.focused(focusedValue: focusedValue));
      }
    }
  }

  void _mapUnfocusRequestedToState(
    Emitter<DetailedInputAreaState> emit,
  ) =>
      emit(const DetailedInputAreaState.initial());
}
