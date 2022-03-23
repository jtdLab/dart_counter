import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/in_game_event.dart';
import 'package:dart_counter/application/main/play/shared/in_game/in_game_state.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/abstract_i_play_service.dart';

export 'package:dart_counter/application/main/play/shared/in_game/in_game_event.dart';
export 'package:dart_counter/application/main/play/shared/in_game/in_game_state.dart';

abstract class InGameBloc<T extends AbstractGameSnapshot>
    extends Bloc<InGameEvent, InGameState<T>> {
  final AbstractIPlayService _playService;

  InGameBloc(
    this._playService,
    T initialSnapshot,
  ) : super(
          // Set initial state
          InGameState.initial(
            gameSnapshot: initialSnapshot,
            showCheckoutDetails: false,
          ),
        ) {
    // Register event handlers
    on<ShowCheckoutDetailsChanged>(_handleShowCheckoutDetailsChanged);
    on<Canceled>((_, __) => _handleCanceled());
  }

  // TODO needed
  /// Handle incoming [ShowCheckoutDetailsChanged] event.
  void _handleShowCheckoutDetailsChanged(
    ShowCheckoutDetailsChanged event,
    Emitter<InGameState> emit,
  ) {
    /**
    * TODO needed
     final newShowCheckoutDetails = event.newShowCheckoutDetails;
    emit(const InGameState.showCheckoutDetails());
    */
  }

  /// Handle incoming [Canceled] event.
  void _handleCanceled() {
    _playService.cancelGame();
  }
}
