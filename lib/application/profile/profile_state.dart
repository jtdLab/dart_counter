part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required User user,
  }) = _ProfileState;
}