part of 'create_game_bloc.dart';

@freezed
class CreateGameEvent with _$CreateGameEvent {
  const factory CreateGameEvent.started() = _Started;
}