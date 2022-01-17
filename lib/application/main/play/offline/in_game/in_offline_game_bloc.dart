import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/in_game_event.dart';
import 'package:dart_counter/application/main/play/shared/in_game/in_game_state.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/play/shared/in_game/in_game_event.dart';
export 'package:dart_counter/application/main/play/shared/in_game/in_game_state.dart';

@injectable
class InOfflineGameBloc extends Bloc<InGameEvent, InGameState> {
  final IPlayOfflineService _playOfflineService;

  InOfflineGameBloc(
    this._playOfflineService,
    // set initial state
  ) : super(const InGameState.initial(showCheckoutDetails: false)) {
    on<ShowCheckoutDetailsChanged>(
      (event, emit) => _mapShowCheckoutDetailsChangedToState(event, emit),
    );
    on<GameCanceled>((_, __) => _mapGameCanceledToState());
  }

  void _mapShowCheckoutDetailsChangedToState(
    ShowCheckoutDetailsChanged event,
    Emitter<InGameState> emit,
  ) {
    final newShowCheckoutDetails = event.newShowCheckoutDetails;
    emit(state.copyWith(showCheckoutDetails: newShowCheckoutDetails));
  }

  void _mapGameCanceledToState() {
    _playOfflineService.cancelGame();
  }
}
