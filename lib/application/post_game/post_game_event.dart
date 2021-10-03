part of 'post_game_bloc.dart';

// TODO rename event to fel angelov naming convention use cubit for this here cause 0 events
@freezed
class PostGameEvent with _$PostGameEvent {
  const factory PostGameEvent.dummy({
    required GameSnapshot gameSnapshot,
  }) = _PostGameDummy;
}
