// coverage:ignore-file

part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial({
    required User user,
    required CareerStats careerStatsAll,
  }) = ProfileInitial;
}
