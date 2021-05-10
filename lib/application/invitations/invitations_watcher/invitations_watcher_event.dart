part of 'invitations_watcher_bloc.dart';

@freezed
class InvitationsWatcherEvent with _$InvitationsWatcherEvent {
  const factory InvitationsWatcherEvent.started() = _Started;
}