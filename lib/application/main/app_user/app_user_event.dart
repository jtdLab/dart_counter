part of 'app_user_bloc.dart';

@freezed
class AppUserEvent with _$AppUserEvent {
  const factory AppUserEvent.started() = _Started;
}