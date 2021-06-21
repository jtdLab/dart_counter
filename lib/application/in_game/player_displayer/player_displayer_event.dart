part of 'player_displayer_bloc.dart';

@freezed
class PlayerDisplayerEvent with _$PlayerDisplayerEvent {
  const factory PlayerDisplayerEvent.previousPlayerPressed() = PreviousPressed;
  const factory PlayerDisplayerEvent.nextPlayerPressed() = NextPressed;
  const factory PlayerDisplayerEvent.currentPlayerUpdated({required Player newPlayer}) = CurrentPlayerUpdated;
}