// coverage:ignore-file

part of 'add_player_bloc.dart';

@freezed
class AddPlayerState with _$AddPlayerState {
  const factory AddPlayerState.initial() = AddPlayerInitial;
}
