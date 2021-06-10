part of 'create_game_bloc.dart';

@freezed
class CreateGameEvent with _$CreateGameEvent {
    const factory CreateGameEvent.gameCreated({required bool online}) = _GameCreated;
    const factory CreateGameEvent.gameReceived({required Game game}) = _GameReceived;
}

