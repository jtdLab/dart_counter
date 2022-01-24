import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/shared/darts_displayer/darts_displayer_event.dart';
import 'package:dart_counter/application/main/shared/darts_displayer/darts_displayer_state.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/abstract_i_play_service.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

export 'package:dart_counter/application/main/shared/darts_displayer/darts_displayer_event.dart';
export 'package:dart_counter/application/main/shared/darts_displayer/darts_displayer_state.dart';

// TODO maybe impl dartdisplayer bloc without the initial state ???? and use empty kt list instead
// TODO this and training impl in one classe and just give play service as a nullable param that doesnt get used if not available

@injectable
class DartsDisplayerBloc
    extends Bloc<DartsDisplayerEvent, DartsDisplayerState> {
  final IDartUtils _dartUtils;
  final AbstractIPlayService _playService;

  DartsDisplayerBloc(
    this._dartUtils,
    @factoryParam AbstractIPlayService? playService,
  )   : _playService = playService!,
        super(
          // set initial state
          const DartsDisplayerState.initial(),
        ) {
    // register event handlers
    on<DartAdded>((event, emit) => _mapDartAddedToState(event, emit));
    on<DartRemoved>((_, emit) => _mapDartRemovedToState(emit));
    on<ResetRequested>((_, emit) => _mapResetRequestedToState(emit));
  }

  /// handle incoming [DartAdded] event.
  void _mapDartAddedToState(
    DartAdded event,
    Emitter<DartsDisplayerState> emit,
  ) {
    // validates [newDarts] and emits darts with [newDarts] when succeeds.
    void emitWhenValid(KtList<Dart> newDarts) {
      // if new darts are valid in current game state
      if (_dartUtils.validateDarts(
        pointsLeft: _playService.getGame().currentTurn().pointsLeft,
        darts: newDarts,
      )) {
        // emit darts with new darts
        emit(
          DartsDisplayerState.darts(
            darts: NotEmptyList(newDarts),
          ),
        );
      }
    }

    // incoming dart
    final dart = event.dart;

    state.when(
      // when state is initial
      initial: () {
        // the new darts where incoming dart is the only element
        final newDarts = [dart].toImmutableList();

        emitWhenValid(newDarts);
      },
      // when state is darts
      darts: (darts) {
        // and darts has less than 3 elements
        if (darts.length < 3) {
          // the new darts where incoming dart is added to the end
          final newDarts = darts.getOrCrash().toMutableList()..add(dart);

          emitWhenValid(newDarts);
        }
      },
    );
  }

  /// handle incoming [DartRemoved] event.
  void _mapDartRemovedToState(
    Emitter<DartsDisplayerState> emit,
  ) {
    state.whenOrNull(
      // when state is darts
      darts: (darts) {
        // and darts has 1 element
        if (darts.length == 1) {
          // emit initial
          emit(const DartsDisplayerState.initial());
          // else
        } else {
          // emit updated darts with last dart removed
          emit(
            DartsDisplayerState.darts(
              darts: NotEmptyList(
                darts.getOrCrash().toMutableList()..removeLast(),
              ),
            ),
          );
        }
      },
    );
  }

  /// handle incoming [ResetRequested] event.
  void _mapResetRequestedToState(
    Emitter<DartsDisplayerState> emit,
  ) {
    // emit initial
    emit(const DartsDisplayerState.initial());
  }
}
