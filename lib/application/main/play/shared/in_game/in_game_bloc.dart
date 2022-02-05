import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/in_game_event.dart';
import 'package:dart_counter/application/main/play/shared/in_game/in_game_state.dart';
import 'package:dart_counter/domain/play/abstract_i_play_service.dart';

export 'package:dart_counter/application/main/play/shared/in_game/in_game_event.dart';
export 'package:dart_counter/application/main/play/shared/in_game/in_game_state.dart';

abstract class InGameBloc extends Bloc<InGameEvent, InGameState> {
  final AbstractIPlayService _playService;

  InGameBloc(
    this._playService,
  ) : super(
          // Set initial state
          const InGameState.initial(showCheckoutDetails: false),
        ) {
    // Register event handlers
    on<ShowCheckoutDetailsChanged>(_handleShowCheckoutDetailsChanged);
    on<Canceled>((_, __) => _handleCanceled());
  }

  /// Handle incoming [ShowCheckoutDetailsChanged] event.
  void _handleShowCheckoutDetailsChanged(
    ShowCheckoutDetailsChanged event,
    Emitter<InGameState> emit,
  ) {
    final newShowCheckoutDetails = event.newShowCheckoutDetails;
    emit(state.copyWith(showCheckoutDetails: newShowCheckoutDetails));
  }

  /// Handle incoming [Canceled] event.
  void _handleCanceled() {
    _playService.cancelGame();
  }
}
