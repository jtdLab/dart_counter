// coverage:ignore-file

part of 'app_user_bloc.dart';

@freezed
class AppUserState with _$AppUserState {
  const factory AppUserState.initial() = AppUserInitial;
}
