part of 'friends_watcher_bloc.dart';

@freezed
class FriendsWatcherEvent with _$FriendsWatcherEvent {
  const factory FriendsWatcherEvent.started() = _Started;
}