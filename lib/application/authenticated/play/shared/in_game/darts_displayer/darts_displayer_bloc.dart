import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/in_game/in_game_bloc.dart';
import 'package:dart_counter/application/authenticated/shared/darts_displayer/darts_displayer_event.dart';
import 'package:dart_counter/application/authenticated/shared/darts_displayer/darts_displayer_state.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

export 'package:dart_counter/application/authenticated/shared/darts_displayer/darts_displayer_event.dart';
export 'package:dart_counter/application/authenticated/shared/darts_displayer/darts_displayer_state.dart';

// TODO maybe impl dartdisplayer bloc without the initial state ???? and use empty kt list instead
// TODO this and training impl in one classe and just give play service as a nullable param that doesnt get used if not available

@injectable
class DartsDisplayerBloc
    extends Bloc<DartsDisplayerEvent, DartsDisplayerState> {
  final IDartUtils _dartUtils;
  final InGameBloc _inGameBloc;

  DartsDisplayerBloc(
    this._dartUtils,
    this._inGameBloc,
  ) : super(
          // Set initial state
          const DartsDisplayerState.empty(),
        ) {
    // Register event handlers
    on<DartAdded>((event, emit) => _handleDartAdded(event, emit));
    on<DartRemoved>((_, emit) => _handleDartRemoved(emit));
    on<ResetRequested>((_, emit) => _handleResetRequested(emit));
  }

  /// Returns instance registered inside getIt.
  factory DartsDisplayerBloc.getIt(
    InGameBloc inGameBloc,
  ) =>
      getIt<DartsDisplayerBloc>(param1: [inGameBloc]);

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of `InGameBloc`.
  @factoryMethod
  factory DartsDisplayerBloc.injectable(
    IDartUtils dartUtils,
    @factoryParam List<Object> otherDependencies,
  ) =>
      DartsDisplayerBloc(
        dartUtils,
        otherDependencies[0] as InGameBloc,
      );

  /// Handle incoming [DartAdded] event.
  void _handleDartAdded(
    DartAdded event,
    Emitter<DartsDisplayerState> emit,
  ) {
    // validates [newDarts] and emits darts with [newDarts] when succeeds.
    void emitWhenValid(KtList<Dart> newDarts) {
      // if new darts are valid in current game state
      if (_dartUtils.validateDarts(
        pointsLeft: _inGameBloc.state.gameSnapshot.currentTurn().pointsLeft,
        darts: newDarts,
      )) {
        // emit darts with new darts
        emit(
          DartsDisplayerState.notEmpty(
            darts: NotEmptyList(newDarts),
          ),
        );
      }
    }

    // incoming dart
    final dart = event.dart;

    state.when(
      // when state is initial
      empty: () {
        // the new darts where incoming dart is the only element
        final newDarts = [dart].toImmutableList();

        emitWhenValid(newDarts);
      },
      // when state is darts
      notEmpty: (darts) {
        // and darts has less than 3 elements
        if (darts.length < 3) {
          // the new darts where incoming dart is added to the end
          final newDarts = darts.getOrCrash().toMutableList()..add(dart);

          emitWhenValid(newDarts);
        }
      },
    );
  }

  /// Handle incoming [DartRemoved] event.
  void _handleDartRemoved(
    Emitter<DartsDisplayerState> emit,
  ) {
    state.whenOrNull(
      // when state is darts
      notEmpty: (darts) {
        // and darts has 1 element
        if (darts.length == 1) {
          // emit initial
          emit(const DartsDisplayerState.empty());
          // else
        } else {
          // emit updated darts with last dart removed
          emit(
            DartsDisplayerState.notEmpty(
              darts: NotEmptyList(
                darts.getOrCrash().toMutableList()..removeLast(),
              ),
            ),
          );
        }
      },
    );
  }

  /// Handle incoming [ResetRequested] event.
  void _handleResetRequested(
    Emitter<DartsDisplayerState> emit,
  ) {
    // emit initial
    emit(const DartsDisplayerState.empty());
  }
}