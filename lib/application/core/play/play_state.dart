part of 'play_bloc.dart';

@freezed
class PlayState with _$PlayState {
  const factory PlayState.loading({
    bool? online,
  }) = Loading;
  const factory PlayState.success({
    required bool online,
    required GameSnapshot game,
  }) = Success;
}
