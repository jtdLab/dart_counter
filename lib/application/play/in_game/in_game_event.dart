part of 'in_game_bloc.dart';

@freezed
class InGameEvent with _$InGameEvent {
  const factory InGameEvent.started() = _Started;
}