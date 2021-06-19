part of 'play_bloc.dart';

@freezed
class PlayState with _$PlayState {
  const factory PlayState.inProgress() = InProgress;
  const factory PlayState.success({required bool online, required Game game}) = Success;
  const factory PlayState.failure() = Failure;
}
