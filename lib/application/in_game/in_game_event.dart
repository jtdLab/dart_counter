part of 'in_game_bloc.dart';

@freezed
class InGameEvent with _$InGameEvent {
  const factory InGameEvent.gameCanceled() = GameCanceled;
  const factory InGameEvent.showCheckoutDetailsRequested() =
      ShowCheckoutDetailsRequested;
  const factory InGameEvent.gameReceived({
    required Game game,
  }) = GameReceived;
}
