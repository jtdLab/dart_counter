part of 'add_player_bloc.dart';

@freezed
class AddPlayerEvent with _$AddPlayerEvent {
  const factory AddPlayerEvent.started() = _Started;
}