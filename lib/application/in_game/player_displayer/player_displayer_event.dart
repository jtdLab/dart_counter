part of 'player_displayer_bloc.dart';

@freezed
class PlayerDisplayerEvent with _$PlayerDisplayerEvent {
  const factory PlayerDisplayerEvent.playersReceived({
    required KtList<Player> players,
  }) = PlayersReceived;
}
