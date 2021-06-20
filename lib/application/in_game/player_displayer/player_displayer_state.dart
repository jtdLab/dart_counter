part of 'player_displayer_bloc.dart';

@freezed
class PlayerDisplayerState with _$PlayerDisplayerState {
  const factory PlayerDisplayerState({
    required Player player,
  }) = State;
}
