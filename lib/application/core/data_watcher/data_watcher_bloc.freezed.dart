// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DataWatcherEventTearOff {
  const _$DataWatcherEventTearOff();

  WatchDataStarted watchDataStarted({required UniqueId appUserId}) {
    return WatchDataStarted(
      appUserId: appUserId,
    );
  }

  UserReceived userReceived({required User user}) {
    return UserReceived(
      user: user,
    );
  }

  ReceivedGameInvationsReceived receivedGameInvationsReceived(
      {required KtList<GameInvitation> receivedGameInvitations}) {
    return ReceivedGameInvationsReceived(
      receivedGameInvitations: receivedGameInvitations,
    );
  }

  SentGameInvationsReceived sentGameInvationsReceived(
      {required KtList<GameInvitation> sentGameInvitations}) {
    return SentGameInvationsReceived(
      sentGameInvitations: sentGameInvitations,
    );
  }

  FriendsReceived friendsReceived({required KtList<Friend> friends}) {
    return FriendsReceived(
      friends: friends,
    );
  }

  ReceivedFriendRequestsReceived receivedFriendRequestsReceived(
      {required KtList<FriendRequest> receivedFriendRequests}) {
    return ReceivedFriendRequestsReceived(
      receivedFriendRequests: receivedFriendRequests,
    );
  }

  SentFriendRequestsReceived sentFriendRequestsReceived(
      {required KtList<FriendRequest> sentFriendRequests}) {
    return SentFriendRequestsReceived(
      sentFriendRequests: sentFriendRequests,
    );
  }

  FailureReceived failureReceived() {
    return const FailureReceived();
  }
}

/// @nodoc
const $DataWatcherEvent = _$DataWatcherEventTearOff();

/// @nodoc
mixin _$DataWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId appUserId) watchDataStarted,
    required TResult Function(User user) userReceived,
    required TResult Function(KtList<GameInvitation> receivedGameInvitations)
        receivedGameInvationsReceived,
    required TResult Function(KtList<GameInvitation> sentGameInvitations)
        sentGameInvationsReceived,
    required TResult Function(KtList<Friend> friends) friendsReceived,
    required TResult Function(KtList<FriendRequest> receivedFriendRequests)
        receivedFriendRequestsReceived,
    required TResult Function(KtList<FriendRequest> sentFriendRequests)
        sentFriendRequestsReceived,
    required TResult Function() failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId appUserId)? watchDataStarted,
    TResult Function(User user)? userReceived,
    TResult Function(KtList<GameInvitation> receivedGameInvitations)?
        receivedGameInvationsReceived,
    TResult Function(KtList<GameInvitation> sentGameInvitations)?
        sentGameInvationsReceived,
    TResult Function(KtList<Friend> friends)? friendsReceived,
    TResult Function(KtList<FriendRequest> receivedFriendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> sentFriendRequests)?
        sentFriendRequestsReceived,
    TResult Function()? failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId appUserId)? watchDataStarted,
    TResult Function(User user)? userReceived,
    TResult Function(KtList<GameInvitation> receivedGameInvitations)?
        receivedGameInvationsReceived,
    TResult Function(KtList<GameInvitation> sentGameInvitations)?
        sentGameInvationsReceived,
    TResult Function(KtList<Friend> friends)? friendsReceived,
    TResult Function(KtList<FriendRequest> receivedFriendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> sentFriendRequests)?
        sentFriendRequestsReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchDataStarted value) watchDataStarted,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(ReceivedGameInvationsReceived value)
        receivedGameInvationsReceived,
    required TResult Function(SentGameInvationsReceived value)
        sentGameInvationsReceived,
    required TResult Function(FriendsReceived value) friendsReceived,
    required TResult Function(ReceivedFriendRequestsReceived value)
        receivedFriendRequestsReceived,
    required TResult Function(SentFriendRequestsReceived value)
        sentFriendRequestsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(ReceivedGameInvationsReceived value)?
        receivedGameInvationsReceived,
    TResult Function(SentGameInvationsReceived value)?
        sentGameInvationsReceived,
    TResult Function(FriendsReceived value)? friendsReceived,
    TResult Function(ReceivedFriendRequestsReceived value)?
        receivedFriendRequestsReceived,
    TResult Function(SentFriendRequestsReceived value)?
        sentFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(ReceivedGameInvationsReceived value)?
        receivedGameInvationsReceived,
    TResult Function(SentGameInvationsReceived value)?
        sentGameInvationsReceived,
    TResult Function(FriendsReceived value)? friendsReceived,
    TResult Function(ReceivedFriendRequestsReceived value)?
        receivedFriendRequestsReceived,
    TResult Function(SentFriendRequestsReceived value)?
        sentFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataWatcherEventCopyWith<$Res> {
  factory $DataWatcherEventCopyWith(
          DataWatcherEvent value, $Res Function(DataWatcherEvent) then) =
      _$DataWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataWatcherEventCopyWithImpl<$Res>
    implements $DataWatcherEventCopyWith<$Res> {
  _$DataWatcherEventCopyWithImpl(this._value, this._then);

  final DataWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(DataWatcherEvent) _then;
}

/// @nodoc
abstract class $WatchDataStartedCopyWith<$Res> {
  factory $WatchDataStartedCopyWith(
          WatchDataStarted value, $Res Function(WatchDataStarted) then) =
      _$WatchDataStartedCopyWithImpl<$Res>;
  $Res call({UniqueId appUserId});
}

/// @nodoc
class _$WatchDataStartedCopyWithImpl<$Res>
    extends _$DataWatcherEventCopyWithImpl<$Res>
    implements $WatchDataStartedCopyWith<$Res> {
  _$WatchDataStartedCopyWithImpl(
      WatchDataStarted _value, $Res Function(WatchDataStarted) _then)
      : super(_value, (v) => _then(v as WatchDataStarted));

  @override
  WatchDataStarted get _value => super._value as WatchDataStarted;

  @override
  $Res call({
    Object? appUserId = freezed,
  }) {
    return _then(WatchDataStarted(
      appUserId: appUserId == freezed
          ? _value.appUserId
          : appUserId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$WatchDataStarted implements WatchDataStarted {
  const _$WatchDataStarted({required this.appUserId});

  @override
  final UniqueId appUserId;

  @override
  String toString() {
    return 'DataWatcherEvent.watchDataStarted(appUserId: $appUserId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WatchDataStarted &&
            (identical(other.appUserId, appUserId) ||
                const DeepCollectionEquality()
                    .equals(other.appUserId, appUserId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(appUserId);

  @JsonKey(ignore: true)
  @override
  $WatchDataStartedCopyWith<WatchDataStarted> get copyWith =>
      _$WatchDataStartedCopyWithImpl<WatchDataStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId appUserId) watchDataStarted,
    required TResult Function(User user) userReceived,
    required TResult Function(KtList<GameInvitation> receivedGameInvitations)
        receivedGameInvationsReceived,
    required TResult Function(KtList<GameInvitation> sentGameInvitations)
        sentGameInvationsReceived,
    required TResult Function(KtList<Friend> friends) friendsReceived,
    required TResult Function(KtList<FriendRequest> receivedFriendRequests)
        receivedFriendRequestsReceived,
    required TResult Function(KtList<FriendRequest> sentFriendRequests)
        sentFriendRequestsReceived,
    required TResult Function() failureReceived,
  }) {
    return watchDataStarted(appUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId appUserId)? watchDataStarted,
    TResult Function(User user)? userReceived,
    TResult Function(KtList<GameInvitation> receivedGameInvitations)?
        receivedGameInvationsReceived,
    TResult Function(KtList<GameInvitation> sentGameInvitations)?
        sentGameInvationsReceived,
    TResult Function(KtList<Friend> friends)? friendsReceived,
    TResult Function(KtList<FriendRequest> receivedFriendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> sentFriendRequests)?
        sentFriendRequestsReceived,
    TResult Function()? failureReceived,
  }) {
    return watchDataStarted?.call(appUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId appUserId)? watchDataStarted,
    TResult Function(User user)? userReceived,
    TResult Function(KtList<GameInvitation> receivedGameInvitations)?
        receivedGameInvationsReceived,
    TResult Function(KtList<GameInvitation> sentGameInvitations)?
        sentGameInvationsReceived,
    TResult Function(KtList<Friend> friends)? friendsReceived,
    TResult Function(KtList<FriendRequest> receivedFriendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> sentFriendRequests)?
        sentFriendRequestsReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (watchDataStarted != null) {
      return watchDataStarted(appUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchDataStarted value) watchDataStarted,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(ReceivedGameInvationsReceived value)
        receivedGameInvationsReceived,
    required TResult Function(SentGameInvationsReceived value)
        sentGameInvationsReceived,
    required TResult Function(FriendsReceived value) friendsReceived,
    required TResult Function(ReceivedFriendRequestsReceived value)
        receivedFriendRequestsReceived,
    required TResult Function(SentFriendRequestsReceived value)
        sentFriendRequestsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return watchDataStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(ReceivedGameInvationsReceived value)?
        receivedGameInvationsReceived,
    TResult Function(SentGameInvationsReceived value)?
        sentGameInvationsReceived,
    TResult Function(FriendsReceived value)? friendsReceived,
    TResult Function(ReceivedFriendRequestsReceived value)?
        receivedFriendRequestsReceived,
    TResult Function(SentFriendRequestsReceived value)?
        sentFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return watchDataStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(ReceivedGameInvationsReceived value)?
        receivedGameInvationsReceived,
    TResult Function(SentGameInvationsReceived value)?
        sentGameInvationsReceived,
    TResult Function(FriendsReceived value)? friendsReceived,
    TResult Function(ReceivedFriendRequestsReceived value)?
        receivedFriendRequestsReceived,
    TResult Function(SentFriendRequestsReceived value)?
        sentFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (watchDataStarted != null) {
      return watchDataStarted(this);
    }
    return orElse();
  }
}

abstract class WatchDataStarted implements DataWatcherEvent {
  const factory WatchDataStarted({required UniqueId appUserId}) =
      _$WatchDataStarted;

  UniqueId get appUserId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WatchDataStartedCopyWith<WatchDataStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserReceivedCopyWith<$Res> {
  factory $UserReceivedCopyWith(
          UserReceived value, $Res Function(UserReceived) then) =
      _$UserReceivedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserReceivedCopyWithImpl<$Res>
    extends _$DataWatcherEventCopyWithImpl<$Res>
    implements $UserReceivedCopyWith<$Res> {
  _$UserReceivedCopyWithImpl(
      UserReceived _value, $Res Function(UserReceived) _then)
      : super(_value, (v) => _then(v as UserReceived));

  @override
  UserReceived get _value => super._value as UserReceived;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(UserReceived(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserReceived implements UserReceived {
  const _$UserReceived({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'DataWatcherEvent.userReceived(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserReceived &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $UserReceivedCopyWith<UserReceived> get copyWith =>
      _$UserReceivedCopyWithImpl<UserReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId appUserId) watchDataStarted,
    required TResult Function(User user) userReceived,
    required TResult Function(KtList<GameInvitation> receivedGameInvitations)
        receivedGameInvationsReceived,
    required TResult Function(KtList<GameInvitation> sentGameInvitations)
        sentGameInvationsReceived,
    required TResult Function(KtList<Friend> friends) friendsReceived,
    required TResult Function(KtList<FriendRequest> receivedFriendRequests)
        receivedFriendRequestsReceived,
    required TResult Function(KtList<FriendRequest> sentFriendRequests)
        sentFriendRequestsReceived,
    required TResult Function() failureReceived,
  }) {
    return userReceived(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId appUserId)? watchDataStarted,
    TResult Function(User user)? userReceived,
    TResult Function(KtList<GameInvitation> receivedGameInvitations)?
        receivedGameInvationsReceived,
    TResult Function(KtList<GameInvitation> sentGameInvitations)?
        sentGameInvationsReceived,
    TResult Function(KtList<Friend> friends)? friendsReceived,
    TResult Function(KtList<FriendRequest> receivedFriendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> sentFriendRequests)?
        sentFriendRequestsReceived,
    TResult Function()? failureReceived,
  }) {
    return userReceived?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId appUserId)? watchDataStarted,
    TResult Function(User user)? userReceived,
    TResult Function(KtList<GameInvitation> receivedGameInvitations)?
        receivedGameInvationsReceived,
    TResult Function(KtList<GameInvitation> sentGameInvitations)?
        sentGameInvationsReceived,
    TResult Function(KtList<Friend> friends)? friendsReceived,
    TResult Function(KtList<FriendRequest> receivedFriendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> sentFriendRequests)?
        sentFriendRequestsReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (userReceived != null) {
      return userReceived(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchDataStarted value) watchDataStarted,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(ReceivedGameInvationsReceived value)
        receivedGameInvationsReceived,
    required TResult Function(SentGameInvationsReceived value)
        sentGameInvationsReceived,
    required TResult Function(FriendsReceived value) friendsReceived,
    required TResult Function(ReceivedFriendRequestsReceived value)
        receivedFriendRequestsReceived,
    required TResult Function(SentFriendRequestsReceived value)
        sentFriendRequestsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return userReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(ReceivedGameInvationsReceived value)?
        receivedGameInvationsReceived,
    TResult Function(SentGameInvationsReceived value)?
        sentGameInvationsReceived,
    TResult Function(FriendsReceived value)? friendsReceived,
    TResult Function(ReceivedFriendRequestsReceived value)?
        receivedFriendRequestsReceived,
    TResult Function(SentFriendRequestsReceived value)?
        sentFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return userReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(ReceivedGameInvationsReceived value)?
        receivedGameInvationsReceived,
    TResult Function(SentGameInvationsReceived value)?
        sentGameInvationsReceived,
    TResult Function(FriendsReceived value)? friendsReceived,
    TResult Function(ReceivedFriendRequestsReceived value)?
        receivedFriendRequestsReceived,
    TResult Function(SentFriendRequestsReceived value)?
        sentFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (userReceived != null) {
      return userReceived(this);
    }
    return orElse();
  }
}

abstract class UserReceived implements DataWatcherEvent {
  const factory UserReceived({required User user}) = _$UserReceived;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserReceivedCopyWith<UserReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceivedGameInvationsReceivedCopyWith<$Res> {
  factory $ReceivedGameInvationsReceivedCopyWith(
          ReceivedGameInvationsReceived value,
          $Res Function(ReceivedGameInvationsReceived) then) =
      _$ReceivedGameInvationsReceivedCopyWithImpl<$Res>;
  $Res call({KtList<GameInvitation> receivedGameInvitations});
}

/// @nodoc
class _$ReceivedGameInvationsReceivedCopyWithImpl<$Res>
    extends _$DataWatcherEventCopyWithImpl<$Res>
    implements $ReceivedGameInvationsReceivedCopyWith<$Res> {
  _$ReceivedGameInvationsReceivedCopyWithImpl(
      ReceivedGameInvationsReceived _value,
      $Res Function(ReceivedGameInvationsReceived) _then)
      : super(_value, (v) => _then(v as ReceivedGameInvationsReceived));

  @override
  ReceivedGameInvationsReceived get _value =>
      super._value as ReceivedGameInvationsReceived;

  @override
  $Res call({
    Object? receivedGameInvitations = freezed,
  }) {
    return _then(ReceivedGameInvationsReceived(
      receivedGameInvitations: receivedGameInvitations == freezed
          ? _value.receivedGameInvitations
          : receivedGameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
    ));
  }
}

/// @nodoc

class _$ReceivedGameInvationsReceived implements ReceivedGameInvationsReceived {
  const _$ReceivedGameInvationsReceived(
      {required this.receivedGameInvitations});

  @override
  final KtList<GameInvitation> receivedGameInvitations;

  @override
  String toString() {
    return 'DataWatcherEvent.receivedGameInvationsReceived(receivedGameInvitations: $receivedGameInvitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReceivedGameInvationsReceived &&
            (identical(
                    other.receivedGameInvitations, receivedGameInvitations) ||
                const DeepCollectionEquality().equals(
                    other.receivedGameInvitations, receivedGameInvitations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(receivedGameInvitations);

  @JsonKey(ignore: true)
  @override
  $ReceivedGameInvationsReceivedCopyWith<ReceivedGameInvationsReceived>
      get copyWith => _$ReceivedGameInvationsReceivedCopyWithImpl<
          ReceivedGameInvationsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId appUserId) watchDataStarted,
    required TResult Function(User user) userReceived,
    required TResult Function(KtList<GameInvitation> receivedGameInvitations)
        receivedGameInvationsReceived,
    required TResult Function(KtList<GameInvitation> sentGameInvitations)
        sentGameInvationsReceived,
    required TResult Function(KtList<Friend> friends) friendsReceived,
    required TResult Function(KtList<FriendRequest> receivedFriendRequests)
        receivedFriendRequestsReceived,
    required TResult Function(KtList<FriendRequest> sentFriendRequests)
        sentFriendRequestsReceived,
    required TResult Function() failureReceived,
  }) {
    return receivedGameInvationsReceived(receivedGameInvitations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId appUserId)? watchDataStarted,
    TResult Function(User user)? userReceived,
    TResult Function(KtList<GameInvitation> receivedGameInvitations)?
        receivedGameInvationsReceived,
    TResult Function(KtList<GameInvitation> sentGameInvitations)?
        sentGameInvationsReceived,
    TResult Function(KtList<Friend> friends)? friendsReceived,
    TResult Function(KtList<FriendRequest> receivedFriendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> sentFriendRequests)?
        sentFriendRequestsReceived,
    TResult Function()? failureReceived,
  }) {
    return receivedGameInvationsReceived?.call(receivedGameInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId appUserId)? watchDataStarted,
    TResult Function(User user)? userReceived,
    TResult Function(KtList<GameInvitation> receivedGameInvitations)?
        receivedGameInvationsReceived,
    TResult Function(KtList<GameInvitation> sentGameInvitations)?
        sentGameInvationsReceived,
    TResult Function(KtList<Friend> friends)? friendsReceived,
    TResult Function(KtList<FriendRequest> receivedFriendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> sentFriendRequests)?
        sentFriendRequestsReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (receivedGameInvationsReceived != null) {
      return receivedGameInvationsReceived(receivedGameInvitations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchDataStarted value) watchDataStarted,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(ReceivedGameInvationsReceived value)
        receivedGameInvationsReceived,
    required TResult Function(SentGameInvationsReceived value)
        sentGameInvationsReceived,
    required TResult Function(FriendsReceived value) friendsReceived,
    required TResult Function(ReceivedFriendRequestsReceived value)
        receivedFriendRequestsReceived,
    required TResult Function(SentFriendRequestsReceived value)
        sentFriendRequestsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return receivedGameInvationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(ReceivedGameInvationsReceived value)?
        receivedGameInvationsReceived,
    TResult Function(SentGameInvationsReceived value)?
        sentGameInvationsReceived,
    TResult Function(FriendsReceived value)? friendsReceived,
    TResult Function(ReceivedFriendRequestsReceived value)?
        receivedFriendRequestsReceived,
    TResult Function(SentFriendRequestsReceived value)?
        sentFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return receivedGameInvationsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(ReceivedGameInvationsReceived value)?
        receivedGameInvationsReceived,
    TResult Function(SentGameInvationsReceived value)?
        sentGameInvationsReceived,
    TResult Function(FriendsReceived value)? friendsReceived,
    TResult Function(ReceivedFriendRequestsReceived value)?
        receivedFriendRequestsReceived,
    TResult Function(SentFriendRequestsReceived value)?
        sentFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (receivedGameInvationsReceived != null) {
      return receivedGameInvationsReceived(this);
    }
    return orElse();
  }
}

abstract class ReceivedGameInvationsReceived implements DataWatcherEvent {
  const factory ReceivedGameInvationsReceived(
          {required KtList<GameInvitation> receivedGameInvitations}) =
      _$ReceivedGameInvationsReceived;

  KtList<GameInvitation> get receivedGameInvitations =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceivedGameInvationsReceivedCopyWith<ReceivedGameInvationsReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentGameInvationsReceivedCopyWith<$Res> {
  factory $SentGameInvationsReceivedCopyWith(SentGameInvationsReceived value,
          $Res Function(SentGameInvationsReceived) then) =
      _$SentGameInvationsReceivedCopyWithImpl<$Res>;
  $Res call({KtList<GameInvitation> sentGameInvitations});
}

/// @nodoc
class _$SentGameInvationsReceivedCopyWithImpl<$Res>
    extends _$DataWatcherEventCopyWithImpl<$Res>
    implements $SentGameInvationsReceivedCopyWith<$Res> {
  _$SentGameInvationsReceivedCopyWithImpl(SentGameInvationsReceived _value,
      $Res Function(SentGameInvationsReceived) _then)
      : super(_value, (v) => _then(v as SentGameInvationsReceived));

  @override
  SentGameInvationsReceived get _value =>
      super._value as SentGameInvationsReceived;

  @override
  $Res call({
    Object? sentGameInvitations = freezed,
  }) {
    return _then(SentGameInvationsReceived(
      sentGameInvitations: sentGameInvitations == freezed
          ? _value.sentGameInvitations
          : sentGameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
    ));
  }
}

/// @nodoc

class _$SentGameInvationsReceived implements SentGameInvationsReceived {
  const _$SentGameInvationsReceived({required this.sentGameInvitations});

  @override
  final KtList<GameInvitation> sentGameInvitations;

  @override
  String toString() {
    return 'DataWatcherEvent.sentGameInvationsReceived(sentGameInvitations: $sentGameInvitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SentGameInvationsReceived &&
            (identical(other.sentGameInvitations, sentGameInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.sentGameInvitations, sentGameInvitations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sentGameInvitations);

  @JsonKey(ignore: true)
  @override
  $SentGameInvationsReceivedCopyWith<SentGameInvationsReceived> get copyWith =>
      _$SentGameInvationsReceivedCopyWithImpl<SentGameInvationsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId appUserId) watchDataStarted,
    required TResult Function(User user) userReceived,
    required TResult Function(KtList<GameInvitation> receivedGameInvitations)
        receivedGameInvationsReceived,
    required TResult Function(KtList<GameInvitation> sentGameInvitations)
        sentGameInvationsReceived,
    required TResult Function(KtList<Friend> friends) friendsReceived,
    required TResult Function(KtList<FriendRequest> receivedFriendRequests)
        receivedFriendRequestsReceived,
    required TResult Function(KtList<FriendRequest> sentFriendRequests)
        sentFriendRequestsReceived,
    required TResult Function() failureReceived,
  }) {
    return sentGameInvationsReceived(sentGameInvitations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId appUserId)? watchDataStarted,
    TResult Function(User user)? userReceived,
    TResult Function(KtList<GameInvitation> receivedGameInvitations)?
        receivedGameInvationsReceived,
    TResult Function(KtList<GameInvitation> sentGameInvitations)?
        sentGameInvationsReceived,
    TResult Function(KtList<Friend> friends)? friendsReceived,
    TResult Function(KtList<FriendRequest> receivedFriendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> sentFriendRequests)?
        sentFriendRequestsReceived,
    TResult Function()? failureReceived,
  }) {
    return sentGameInvationsReceived?.call(sentGameInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId appUserId)? watchDataStarted,
    TResult Function(User user)? userReceived,
    TResult Function(KtList<GameInvitation> receivedGameInvitations)?
        receivedGameInvationsReceived,
    TResult Function(KtList<GameInvitation> sentGameInvitations)?
        sentGameInvationsReceived,
    TResult Function(KtList<Friend> friends)? friendsReceived,
    TResult Function(KtList<FriendRequest> receivedFriendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> sentFriendRequests)?
        sentFriendRequestsReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (sentGameInvationsReceived != null) {
      return sentGameInvationsReceived(sentGameInvitations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchDataStarted value) watchDataStarted,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(ReceivedGameInvationsReceived value)
        receivedGameInvationsReceived,
    required TResult Function(SentGameInvationsReceived value)
        sentGameInvationsReceived,
    required TResult Function(FriendsReceived value) friendsReceived,
    required TResult Function(ReceivedFriendRequestsReceived value)
        receivedFriendRequestsReceived,
    required TResult Function(SentFriendRequestsReceived value)
        sentFriendRequestsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return sentGameInvationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(ReceivedGameInvationsReceived value)?
        receivedGameInvationsReceived,
    TResult Function(SentGameInvationsReceived value)?
        sentGameInvationsReceived,
    TResult Function(FriendsReceived value)? friendsReceived,
    TResult Function(ReceivedFriendRequestsReceived value)?
        receivedFriendRequestsReceived,
    TResult Function(SentFriendRequestsReceived value)?
        sentFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return sentGameInvationsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(ReceivedGameInvationsReceived value)?
        receivedGameInvationsReceived,
    TResult Function(SentGameInvationsReceived value)?
        sentGameInvationsReceived,
    TResult Function(FriendsReceived value)? friendsReceived,
    TResult Function(ReceivedFriendRequestsReceived value)?
        receivedFriendRequestsReceived,
    TResult Function(SentFriendRequestsReceived value)?
        sentFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (sentGameInvationsReceived != null) {
      return sentGameInvationsReceived(this);
    }
    return orElse();
  }
}

abstract class SentGameInvationsReceived implements DataWatcherEvent {
  const factory SentGameInvationsReceived(
          {required KtList<GameInvitation> sentGameInvitations}) =
      _$SentGameInvationsReceived;

  KtList<GameInvitation> get sentGameInvitations =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SentGameInvationsReceivedCopyWith<SentGameInvationsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsReceivedCopyWith<$Res> {
  factory $FriendsReceivedCopyWith(
          FriendsReceived value, $Res Function(FriendsReceived) then) =
      _$FriendsReceivedCopyWithImpl<$Res>;
  $Res call({KtList<Friend> friends});
}

/// @nodoc
class _$FriendsReceivedCopyWithImpl<$Res>
    extends _$DataWatcherEventCopyWithImpl<$Res>
    implements $FriendsReceivedCopyWith<$Res> {
  _$FriendsReceivedCopyWithImpl(
      FriendsReceived _value, $Res Function(FriendsReceived) _then)
      : super(_value, (v) => _then(v as FriendsReceived));

  @override
  FriendsReceived get _value => super._value as FriendsReceived;

  @override
  $Res call({
    Object? friends = freezed,
  }) {
    return _then(FriendsReceived(
      friends: friends == freezed
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as KtList<Friend>,
    ));
  }
}

/// @nodoc

class _$FriendsReceived implements FriendsReceived {
  const _$FriendsReceived({required this.friends});

  @override
  final KtList<Friend> friends;

  @override
  String toString() {
    return 'DataWatcherEvent.friendsReceived(friends: $friends)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FriendsReceived &&
            (identical(other.friends, friends) ||
                const DeepCollectionEquality().equals(other.friends, friends)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(friends);

  @JsonKey(ignore: true)
  @override
  $FriendsReceivedCopyWith<FriendsReceived> get copyWith =>
      _$FriendsReceivedCopyWithImpl<FriendsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId appUserId) watchDataStarted,
    required TResult Function(User user) userReceived,
    required TResult Function(KtList<GameInvitation> receivedGameInvitations)
        receivedGameInvationsReceived,
    required TResult Function(KtList<GameInvitation> sentGameInvitations)
        sentGameInvationsReceived,
    required TResult Function(KtList<Friend> friends) friendsReceived,
    required TResult Function(KtList<FriendRequest> receivedFriendRequests)
        receivedFriendRequestsReceived,
    required TResult Function(KtList<FriendRequest> sentFriendRequests)
        sentFriendRequestsReceived,
    required TResult Function() failureReceived,
  }) {
    return friendsReceived(friends);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId appUserId)? watchDataStarted,
    TResult Function(User user)? userReceived,
    TResult Function(KtList<GameInvitation> receivedGameInvitations)?
        receivedGameInvationsReceived,
    TResult Function(KtList<GameInvitation> sentGameInvitations)?
        sentGameInvationsReceived,
    TResult Function(KtList<Friend> friends)? friendsReceived,
    TResult Function(KtList<FriendRequest> receivedFriendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> sentFriendRequests)?
        sentFriendRequestsReceived,
    TResult Function()? failureReceived,
  }) {
    return friendsReceived?.call(friends);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId appUserId)? watchDataStarted,
    TResult Function(User user)? userReceived,
    TResult Function(KtList<GameInvitation> receivedGameInvitations)?
        receivedGameInvationsReceived,
    TResult Function(KtList<GameInvitation> sentGameInvitations)?
        sentGameInvationsReceived,
    TResult Function(KtList<Friend> friends)? friendsReceived,
    TResult Function(KtList<FriendRequest> receivedFriendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> sentFriendRequests)?
        sentFriendRequestsReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (friendsReceived != null) {
      return friendsReceived(friends);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchDataStarted value) watchDataStarted,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(ReceivedGameInvationsReceived value)
        receivedGameInvationsReceived,
    required TResult Function(SentGameInvationsReceived value)
        sentGameInvationsReceived,
    required TResult Function(FriendsReceived value) friendsReceived,
    required TResult Function(ReceivedFriendRequestsReceived value)
        receivedFriendRequestsReceived,
    required TResult Function(SentFriendRequestsReceived value)
        sentFriendRequestsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return friendsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(ReceivedGameInvationsReceived value)?
        receivedGameInvationsReceived,
    TResult Function(SentGameInvationsReceived value)?
        sentGameInvationsReceived,
    TResult Function(FriendsReceived value)? friendsReceived,
    TResult Function(ReceivedFriendRequestsReceived value)?
        receivedFriendRequestsReceived,
    TResult Function(SentFriendRequestsReceived value)?
        sentFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return friendsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(ReceivedGameInvationsReceived value)?
        receivedGameInvationsReceived,
    TResult Function(SentGameInvationsReceived value)?
        sentGameInvationsReceived,
    TResult Function(FriendsReceived value)? friendsReceived,
    TResult Function(ReceivedFriendRequestsReceived value)?
        receivedFriendRequestsReceived,
    TResult Function(SentFriendRequestsReceived value)?
        sentFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (friendsReceived != null) {
      return friendsReceived(this);
    }
    return orElse();
  }
}

abstract class FriendsReceived implements DataWatcherEvent {
  const factory FriendsReceived({required KtList<Friend> friends}) =
      _$FriendsReceived;

  KtList<Friend> get friends => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendsReceivedCopyWith<FriendsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceivedFriendRequestsReceivedCopyWith<$Res> {
  factory $ReceivedFriendRequestsReceivedCopyWith(
          ReceivedFriendRequestsReceived value,
          $Res Function(ReceivedFriendRequestsReceived) then) =
      _$ReceivedFriendRequestsReceivedCopyWithImpl<$Res>;
  $Res call({KtList<FriendRequest> receivedFriendRequests});
}

/// @nodoc
class _$ReceivedFriendRequestsReceivedCopyWithImpl<$Res>
    extends _$DataWatcherEventCopyWithImpl<$Res>
    implements $ReceivedFriendRequestsReceivedCopyWith<$Res> {
  _$ReceivedFriendRequestsReceivedCopyWithImpl(
      ReceivedFriendRequestsReceived _value,
      $Res Function(ReceivedFriendRequestsReceived) _then)
      : super(_value, (v) => _then(v as ReceivedFriendRequestsReceived));

  @override
  ReceivedFriendRequestsReceived get _value =>
      super._value as ReceivedFriendRequestsReceived;

  @override
  $Res call({
    Object? receivedFriendRequests = freezed,
  }) {
    return _then(ReceivedFriendRequestsReceived(
      receivedFriendRequests: receivedFriendRequests == freezed
          ? _value.receivedFriendRequests
          : receivedFriendRequests // ignore: cast_nullable_to_non_nullable
              as KtList<FriendRequest>,
    ));
  }
}

/// @nodoc

class _$ReceivedFriendRequestsReceived
    implements ReceivedFriendRequestsReceived {
  const _$ReceivedFriendRequestsReceived(
      {required this.receivedFriendRequests});

  @override
  final KtList<FriendRequest> receivedFriendRequests;

  @override
  String toString() {
    return 'DataWatcherEvent.receivedFriendRequestsReceived(receivedFriendRequests: $receivedFriendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReceivedFriendRequestsReceived &&
            (identical(other.receivedFriendRequests, receivedFriendRequests) ||
                const DeepCollectionEquality().equals(
                    other.receivedFriendRequests, receivedFriendRequests)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(receivedFriendRequests);

  @JsonKey(ignore: true)
  @override
  $ReceivedFriendRequestsReceivedCopyWith<ReceivedFriendRequestsReceived>
      get copyWith => _$ReceivedFriendRequestsReceivedCopyWithImpl<
          ReceivedFriendRequestsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId appUserId) watchDataStarted,
    required TResult Function(User user) userReceived,
    required TResult Function(KtList<GameInvitation> receivedGameInvitations)
        receivedGameInvationsReceived,
    required TResult Function(KtList<GameInvitation> sentGameInvitations)
        sentGameInvationsReceived,
    required TResult Function(KtList<Friend> friends) friendsReceived,
    required TResult Function(KtList<FriendRequest> receivedFriendRequests)
        receivedFriendRequestsReceived,
    required TResult Function(KtList<FriendRequest> sentFriendRequests)
        sentFriendRequestsReceived,
    required TResult Function() failureReceived,
  }) {
    return receivedFriendRequestsReceived(receivedFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId appUserId)? watchDataStarted,
    TResult Function(User user)? userReceived,
    TResult Function(KtList<GameInvitation> receivedGameInvitations)?
        receivedGameInvationsReceived,
    TResult Function(KtList<GameInvitation> sentGameInvitations)?
        sentGameInvationsReceived,
    TResult Function(KtList<Friend> friends)? friendsReceived,
    TResult Function(KtList<FriendRequest> receivedFriendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> sentFriendRequests)?
        sentFriendRequestsReceived,
    TResult Function()? failureReceived,
  }) {
    return receivedFriendRequestsReceived?.call(receivedFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId appUserId)? watchDataStarted,
    TResult Function(User user)? userReceived,
    TResult Function(KtList<GameInvitation> receivedGameInvitations)?
        receivedGameInvationsReceived,
    TResult Function(KtList<GameInvitation> sentGameInvitations)?
        sentGameInvationsReceived,
    TResult Function(KtList<Friend> friends)? friendsReceived,
    TResult Function(KtList<FriendRequest> receivedFriendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> sentFriendRequests)?
        sentFriendRequestsReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (receivedFriendRequestsReceived != null) {
      return receivedFriendRequestsReceived(receivedFriendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchDataStarted value) watchDataStarted,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(ReceivedGameInvationsReceived value)
        receivedGameInvationsReceived,
    required TResult Function(SentGameInvationsReceived value)
        sentGameInvationsReceived,
    required TResult Function(FriendsReceived value) friendsReceived,
    required TResult Function(ReceivedFriendRequestsReceived value)
        receivedFriendRequestsReceived,
    required TResult Function(SentFriendRequestsReceived value)
        sentFriendRequestsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return receivedFriendRequestsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(ReceivedGameInvationsReceived value)?
        receivedGameInvationsReceived,
    TResult Function(SentGameInvationsReceived value)?
        sentGameInvationsReceived,
    TResult Function(FriendsReceived value)? friendsReceived,
    TResult Function(ReceivedFriendRequestsReceived value)?
        receivedFriendRequestsReceived,
    TResult Function(SentFriendRequestsReceived value)?
        sentFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return receivedFriendRequestsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(ReceivedGameInvationsReceived value)?
        receivedGameInvationsReceived,
    TResult Function(SentGameInvationsReceived value)?
        sentGameInvationsReceived,
    TResult Function(FriendsReceived value)? friendsReceived,
    TResult Function(ReceivedFriendRequestsReceived value)?
        receivedFriendRequestsReceived,
    TResult Function(SentFriendRequestsReceived value)?
        sentFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (receivedFriendRequestsReceived != null) {
      return receivedFriendRequestsReceived(this);
    }
    return orElse();
  }
}

abstract class ReceivedFriendRequestsReceived implements DataWatcherEvent {
  const factory ReceivedFriendRequestsReceived(
          {required KtList<FriendRequest> receivedFriendRequests}) =
      _$ReceivedFriendRequestsReceived;

  KtList<FriendRequest> get receivedFriendRequests =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceivedFriendRequestsReceivedCopyWith<ReceivedFriendRequestsReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentFriendRequestsReceivedCopyWith<$Res> {
  factory $SentFriendRequestsReceivedCopyWith(SentFriendRequestsReceived value,
          $Res Function(SentFriendRequestsReceived) then) =
      _$SentFriendRequestsReceivedCopyWithImpl<$Res>;
  $Res call({KtList<FriendRequest> sentFriendRequests});
}

/// @nodoc
class _$SentFriendRequestsReceivedCopyWithImpl<$Res>
    extends _$DataWatcherEventCopyWithImpl<$Res>
    implements $SentFriendRequestsReceivedCopyWith<$Res> {
  _$SentFriendRequestsReceivedCopyWithImpl(SentFriendRequestsReceived _value,
      $Res Function(SentFriendRequestsReceived) _then)
      : super(_value, (v) => _then(v as SentFriendRequestsReceived));

  @override
  SentFriendRequestsReceived get _value =>
      super._value as SentFriendRequestsReceived;

  @override
  $Res call({
    Object? sentFriendRequests = freezed,
  }) {
    return _then(SentFriendRequestsReceived(
      sentFriendRequests: sentFriendRequests == freezed
          ? _value.sentFriendRequests
          : sentFriendRequests // ignore: cast_nullable_to_non_nullable
              as KtList<FriendRequest>,
    ));
  }
}

/// @nodoc

class _$SentFriendRequestsReceived implements SentFriendRequestsReceived {
  const _$SentFriendRequestsReceived({required this.sentFriendRequests});

  @override
  final KtList<FriendRequest> sentFriendRequests;

  @override
  String toString() {
    return 'DataWatcherEvent.sentFriendRequestsReceived(sentFriendRequests: $sentFriendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SentFriendRequestsReceived &&
            (identical(other.sentFriendRequests, sentFriendRequests) ||
                const DeepCollectionEquality()
                    .equals(other.sentFriendRequests, sentFriendRequests)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sentFriendRequests);

  @JsonKey(ignore: true)
  @override
  $SentFriendRequestsReceivedCopyWith<SentFriendRequestsReceived>
      get copyWith =>
          _$SentFriendRequestsReceivedCopyWithImpl<SentFriendRequestsReceived>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId appUserId) watchDataStarted,
    required TResult Function(User user) userReceived,
    required TResult Function(KtList<GameInvitation> receivedGameInvitations)
        receivedGameInvationsReceived,
    required TResult Function(KtList<GameInvitation> sentGameInvitations)
        sentGameInvationsReceived,
    required TResult Function(KtList<Friend> friends) friendsReceived,
    required TResult Function(KtList<FriendRequest> receivedFriendRequests)
        receivedFriendRequestsReceived,
    required TResult Function(KtList<FriendRequest> sentFriendRequests)
        sentFriendRequestsReceived,
    required TResult Function() failureReceived,
  }) {
    return sentFriendRequestsReceived(sentFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId appUserId)? watchDataStarted,
    TResult Function(User user)? userReceived,
    TResult Function(KtList<GameInvitation> receivedGameInvitations)?
        receivedGameInvationsReceived,
    TResult Function(KtList<GameInvitation> sentGameInvitations)?
        sentGameInvationsReceived,
    TResult Function(KtList<Friend> friends)? friendsReceived,
    TResult Function(KtList<FriendRequest> receivedFriendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> sentFriendRequests)?
        sentFriendRequestsReceived,
    TResult Function()? failureReceived,
  }) {
    return sentFriendRequestsReceived?.call(sentFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId appUserId)? watchDataStarted,
    TResult Function(User user)? userReceived,
    TResult Function(KtList<GameInvitation> receivedGameInvitations)?
        receivedGameInvationsReceived,
    TResult Function(KtList<GameInvitation> sentGameInvitations)?
        sentGameInvationsReceived,
    TResult Function(KtList<Friend> friends)? friendsReceived,
    TResult Function(KtList<FriendRequest> receivedFriendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> sentFriendRequests)?
        sentFriendRequestsReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (sentFriendRequestsReceived != null) {
      return sentFriendRequestsReceived(sentFriendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchDataStarted value) watchDataStarted,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(ReceivedGameInvationsReceived value)
        receivedGameInvationsReceived,
    required TResult Function(SentGameInvationsReceived value)
        sentGameInvationsReceived,
    required TResult Function(FriendsReceived value) friendsReceived,
    required TResult Function(ReceivedFriendRequestsReceived value)
        receivedFriendRequestsReceived,
    required TResult Function(SentFriendRequestsReceived value)
        sentFriendRequestsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return sentFriendRequestsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(ReceivedGameInvationsReceived value)?
        receivedGameInvationsReceived,
    TResult Function(SentGameInvationsReceived value)?
        sentGameInvationsReceived,
    TResult Function(FriendsReceived value)? friendsReceived,
    TResult Function(ReceivedFriendRequestsReceived value)?
        receivedFriendRequestsReceived,
    TResult Function(SentFriendRequestsReceived value)?
        sentFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return sentFriendRequestsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(ReceivedGameInvationsReceived value)?
        receivedGameInvationsReceived,
    TResult Function(SentGameInvationsReceived value)?
        sentGameInvationsReceived,
    TResult Function(FriendsReceived value)? friendsReceived,
    TResult Function(ReceivedFriendRequestsReceived value)?
        receivedFriendRequestsReceived,
    TResult Function(SentFriendRequestsReceived value)?
        sentFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (sentFriendRequestsReceived != null) {
      return sentFriendRequestsReceived(this);
    }
    return orElse();
  }
}

abstract class SentFriendRequestsReceived implements DataWatcherEvent {
  const factory SentFriendRequestsReceived(
          {required KtList<FriendRequest> sentFriendRequests}) =
      _$SentFriendRequestsReceived;

  KtList<FriendRequest> get sentFriendRequests =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SentFriendRequestsReceivedCopyWith<SentFriendRequestsReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureReceivedCopyWith<$Res> {
  factory $FailureReceivedCopyWith(
          FailureReceived value, $Res Function(FailureReceived) then) =
      _$FailureReceivedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureReceivedCopyWithImpl<$Res>
    extends _$DataWatcherEventCopyWithImpl<$Res>
    implements $FailureReceivedCopyWith<$Res> {
  _$FailureReceivedCopyWithImpl(
      FailureReceived _value, $Res Function(FailureReceived) _then)
      : super(_value, (v) => _then(v as FailureReceived));

  @override
  FailureReceived get _value => super._value as FailureReceived;
}

/// @nodoc

class _$FailureReceived implements FailureReceived {
  const _$FailureReceived();

  @override
  String toString() {
    return 'DataWatcherEvent.failureReceived()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FailureReceived);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId appUserId) watchDataStarted,
    required TResult Function(User user) userReceived,
    required TResult Function(KtList<GameInvitation> receivedGameInvitations)
        receivedGameInvationsReceived,
    required TResult Function(KtList<GameInvitation> sentGameInvitations)
        sentGameInvationsReceived,
    required TResult Function(KtList<Friend> friends) friendsReceived,
    required TResult Function(KtList<FriendRequest> receivedFriendRequests)
        receivedFriendRequestsReceived,
    required TResult Function(KtList<FriendRequest> sentFriendRequests)
        sentFriendRequestsReceived,
    required TResult Function() failureReceived,
  }) {
    return failureReceived();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId appUserId)? watchDataStarted,
    TResult Function(User user)? userReceived,
    TResult Function(KtList<GameInvitation> receivedGameInvitations)?
        receivedGameInvationsReceived,
    TResult Function(KtList<GameInvitation> sentGameInvitations)?
        sentGameInvationsReceived,
    TResult Function(KtList<Friend> friends)? friendsReceived,
    TResult Function(KtList<FriendRequest> receivedFriendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> sentFriendRequests)?
        sentFriendRequestsReceived,
    TResult Function()? failureReceived,
  }) {
    return failureReceived?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId appUserId)? watchDataStarted,
    TResult Function(User user)? userReceived,
    TResult Function(KtList<GameInvitation> receivedGameInvitations)?
        receivedGameInvationsReceived,
    TResult Function(KtList<GameInvitation> sentGameInvitations)?
        sentGameInvationsReceived,
    TResult Function(KtList<Friend> friends)? friendsReceived,
    TResult Function(KtList<FriendRequest> receivedFriendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> sentFriendRequests)?
        sentFriendRequestsReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (failureReceived != null) {
      return failureReceived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchDataStarted value) watchDataStarted,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(ReceivedGameInvationsReceived value)
        receivedGameInvationsReceived,
    required TResult Function(SentGameInvationsReceived value)
        sentGameInvationsReceived,
    required TResult Function(FriendsReceived value) friendsReceived,
    required TResult Function(ReceivedFriendRequestsReceived value)
        receivedFriendRequestsReceived,
    required TResult Function(SentFriendRequestsReceived value)
        sentFriendRequestsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return failureReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(ReceivedGameInvationsReceived value)?
        receivedGameInvationsReceived,
    TResult Function(SentGameInvationsReceived value)?
        sentGameInvationsReceived,
    TResult Function(FriendsReceived value)? friendsReceived,
    TResult Function(ReceivedFriendRequestsReceived value)?
        receivedFriendRequestsReceived,
    TResult Function(SentFriendRequestsReceived value)?
        sentFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return failureReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(ReceivedGameInvationsReceived value)?
        receivedGameInvationsReceived,
    TResult Function(SentGameInvationsReceived value)?
        sentGameInvationsReceived,
    TResult Function(FriendsReceived value)? friendsReceived,
    TResult Function(ReceivedFriendRequestsReceived value)?
        receivedFriendRequestsReceived,
    TResult Function(SentFriendRequestsReceived value)?
        sentFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (failureReceived != null) {
      return failureReceived(this);
    }
    return orElse();
  }
}

abstract class FailureReceived implements DataWatcherEvent {
  const factory FailureReceived() = _$FailureReceived;
}

/// @nodoc
class _$DataWatcherStateTearOff {
  const _$DataWatcherStateTearOff();

  DataWatcherLoadInProgress loadInProgress(
      {User? user,
      KtList<GameInvitation>? receivedGameInvitations,
      KtList<GameInvitation>? sentGameInvitations,
      KtList<Friend>? friends,
      KtList<FriendRequest>? receivedFriendRequests,
      KtList<FriendRequest>? sentFriendRequests}) {
    return DataWatcherLoadInProgress(
      user: user,
      receivedGameInvitations: receivedGameInvitations,
      sentGameInvitations: sentGameInvitations,
      friends: friends,
      receivedFriendRequests: receivedFriendRequests,
      sentFriendRequests: sentFriendRequests,
    );
  }

  DataWatcherLoadSuccess loadSuccess(
      {required User user,
      required KtList<GameInvitation> receivedGameInvitations,
      required KtList<GameInvitation> sentGameInvitations,
      required KtList<Friend> friends,
      required KtList<FriendRequest> receivedFriendRequests,
      required KtList<FriendRequest> sentFriendRequests}) {
    return DataWatcherLoadSuccess(
      user: user,
      receivedGameInvitations: receivedGameInvitations,
      sentGameInvitations: sentGameInvitations,
      friends: friends,
      receivedFriendRequests: receivedFriendRequests,
      sentFriendRequests: sentFriendRequests,
    );
  }

  DataWatcherLoadFailure loadFailure() {
    return const DataWatcherLoadFailure();
  }
}

/// @nodoc
const $DataWatcherState = _$DataWatcherStateTearOff();

/// @nodoc
mixin _$DataWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            User? user,
            KtList<GameInvitation>? receivedGameInvitations,
            KtList<GameInvitation>? sentGameInvitations,
            KtList<Friend>? friends,
            KtList<FriendRequest>? receivedFriendRequests,
            KtList<FriendRequest>? sentFriendRequests)
        loadInProgress,
    required TResult Function(
            User user,
            KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations,
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)
        loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            User? user,
            KtList<GameInvitation>? receivedGameInvitations,
            KtList<GameInvitation>? sentGameInvitations,
            KtList<Friend>? friends,
            KtList<FriendRequest>? receivedFriendRequests,
            KtList<FriendRequest>? sentFriendRequests)?
        loadInProgress,
    TResult Function(
            User user,
            KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations,
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        loadSuccess,
    TResult Function()? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            User? user,
            KtList<GameInvitation>? receivedGameInvitations,
            KtList<GameInvitation>? sentGameInvitations,
            KtList<Friend>? friends,
            KtList<FriendRequest>? receivedFriendRequests,
            KtList<FriendRequest>? sentFriendRequests)?
        loadInProgress,
    TResult Function(
            User user,
            KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations,
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataWatcherLoadInProgress value) loadInProgress,
    required TResult Function(DataWatcherLoadSuccess value) loadSuccess,
    required TResult Function(DataWatcherLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DataWatcherLoadInProgress value)? loadInProgress,
    TResult Function(DataWatcherLoadSuccess value)? loadSuccess,
    TResult Function(DataWatcherLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataWatcherLoadInProgress value)? loadInProgress,
    TResult Function(DataWatcherLoadSuccess value)? loadSuccess,
    TResult Function(DataWatcherLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataWatcherStateCopyWith<$Res> {
  factory $DataWatcherStateCopyWith(
          DataWatcherState value, $Res Function(DataWatcherState) then) =
      _$DataWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataWatcherStateCopyWithImpl<$Res>
    implements $DataWatcherStateCopyWith<$Res> {
  _$DataWatcherStateCopyWithImpl(this._value, this._then);

  final DataWatcherState _value;
  // ignore: unused_field
  final $Res Function(DataWatcherState) _then;
}

/// @nodoc
abstract class $DataWatcherLoadInProgressCopyWith<$Res> {
  factory $DataWatcherLoadInProgressCopyWith(DataWatcherLoadInProgress value,
          $Res Function(DataWatcherLoadInProgress) then) =
      _$DataWatcherLoadInProgressCopyWithImpl<$Res>;
  $Res call(
      {User? user,
      KtList<GameInvitation>? receivedGameInvitations,
      KtList<GameInvitation>? sentGameInvitations,
      KtList<Friend>? friends,
      KtList<FriendRequest>? receivedFriendRequests,
      KtList<FriendRequest>? sentFriendRequests});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$DataWatcherLoadInProgressCopyWithImpl<$Res>
    extends _$DataWatcherStateCopyWithImpl<$Res>
    implements $DataWatcherLoadInProgressCopyWith<$Res> {
  _$DataWatcherLoadInProgressCopyWithImpl(DataWatcherLoadInProgress _value,
      $Res Function(DataWatcherLoadInProgress) _then)
      : super(_value, (v) => _then(v as DataWatcherLoadInProgress));

  @override
  DataWatcherLoadInProgress get _value =>
      super._value as DataWatcherLoadInProgress;

  @override
  $Res call({
    Object? user = freezed,
    Object? receivedGameInvitations = freezed,
    Object? sentGameInvitations = freezed,
    Object? friends = freezed,
    Object? receivedFriendRequests = freezed,
    Object? sentFriendRequests = freezed,
  }) {
    return _then(DataWatcherLoadInProgress(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      receivedGameInvitations: receivedGameInvitations == freezed
          ? _value.receivedGameInvitations
          : receivedGameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>?,
      sentGameInvitations: sentGameInvitations == freezed
          ? _value.sentGameInvitations
          : sentGameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>?,
      friends: friends == freezed
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as KtList<Friend>?,
      receivedFriendRequests: receivedFriendRequests == freezed
          ? _value.receivedFriendRequests
          : receivedFriendRequests // ignore: cast_nullable_to_non_nullable
              as KtList<FriendRequest>?,
      sentFriendRequests: sentFriendRequests == freezed
          ? _value.sentFriendRequests
          : sentFriendRequests // ignore: cast_nullable_to_non_nullable
              as KtList<FriendRequest>?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$DataWatcherLoadInProgress implements DataWatcherLoadInProgress {
  const _$DataWatcherLoadInProgress(
      {this.user,
      this.receivedGameInvitations,
      this.sentGameInvitations,
      this.friends,
      this.receivedFriendRequests,
      this.sentFriendRequests});

  @override
  final User? user;
  @override
  final KtList<GameInvitation>? receivedGameInvitations;
  @override
  final KtList<GameInvitation>? sentGameInvitations;
  @override
  final KtList<Friend>? friends;
  @override
  final KtList<FriendRequest>? receivedFriendRequests;
  @override
  final KtList<FriendRequest>? sentFriendRequests;

  @override
  String toString() {
    return 'DataWatcherState.loadInProgress(user: $user, receivedGameInvitations: $receivedGameInvitations, sentGameInvitations: $sentGameInvitations, friends: $friends, receivedFriendRequests: $receivedFriendRequests, sentFriendRequests: $sentFriendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataWatcherLoadInProgress &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(
                    other.receivedGameInvitations, receivedGameInvitations) ||
                const DeepCollectionEquality().equals(
                    other.receivedGameInvitations, receivedGameInvitations)) &&
            (identical(other.sentGameInvitations, sentGameInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.sentGameInvitations, sentGameInvitations)) &&
            (identical(other.friends, friends) ||
                const DeepCollectionEquality()
                    .equals(other.friends, friends)) &&
            (identical(other.receivedFriendRequests, receivedFriendRequests) ||
                const DeepCollectionEquality().equals(
                    other.receivedFriendRequests, receivedFriendRequests)) &&
            (identical(other.sentFriendRequests, sentFriendRequests) ||
                const DeepCollectionEquality()
                    .equals(other.sentFriendRequests, sentFriendRequests)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(receivedGameInvitations) ^
      const DeepCollectionEquality().hash(sentGameInvitations) ^
      const DeepCollectionEquality().hash(friends) ^
      const DeepCollectionEquality().hash(receivedFriendRequests) ^
      const DeepCollectionEquality().hash(sentFriendRequests);

  @JsonKey(ignore: true)
  @override
  $DataWatcherLoadInProgressCopyWith<DataWatcherLoadInProgress> get copyWith =>
      _$DataWatcherLoadInProgressCopyWithImpl<DataWatcherLoadInProgress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            User? user,
            KtList<GameInvitation>? receivedGameInvitations,
            KtList<GameInvitation>? sentGameInvitations,
            KtList<Friend>? friends,
            KtList<FriendRequest>? receivedFriendRequests,
            KtList<FriendRequest>? sentFriendRequests)
        loadInProgress,
    required TResult Function(
            User user,
            KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations,
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadInProgress(user, receivedGameInvitations, sentGameInvitations,
        friends, receivedFriendRequests, sentFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            User? user,
            KtList<GameInvitation>? receivedGameInvitations,
            KtList<GameInvitation>? sentGameInvitations,
            KtList<Friend>? friends,
            KtList<FriendRequest>? receivedFriendRequests,
            KtList<FriendRequest>? sentFriendRequests)?
        loadInProgress,
    TResult Function(
            User user,
            KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations,
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadInProgress?.call(
        user,
        receivedGameInvitations,
        sentGameInvitations,
        friends,
        receivedFriendRequests,
        sentFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            User? user,
            KtList<GameInvitation>? receivedGameInvitations,
            KtList<GameInvitation>? sentGameInvitations,
            KtList<Friend>? friends,
            KtList<FriendRequest>? receivedFriendRequests,
            KtList<FriendRequest>? sentFriendRequests)?
        loadInProgress,
    TResult Function(
            User user,
            KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations,
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(user, receivedGameInvitations, sentGameInvitations,
          friends, receivedFriendRequests, sentFriendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataWatcherLoadInProgress value) loadInProgress,
    required TResult Function(DataWatcherLoadSuccess value) loadSuccess,
    required TResult Function(DataWatcherLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DataWatcherLoadInProgress value)? loadInProgress,
    TResult Function(DataWatcherLoadSuccess value)? loadSuccess,
    TResult Function(DataWatcherLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataWatcherLoadInProgress value)? loadInProgress,
    TResult Function(DataWatcherLoadSuccess value)? loadSuccess,
    TResult Function(DataWatcherLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class DataWatcherLoadInProgress implements DataWatcherState {
  const factory DataWatcherLoadInProgress(
      {User? user,
      KtList<GameInvitation>? receivedGameInvitations,
      KtList<GameInvitation>? sentGameInvitations,
      KtList<Friend>? friends,
      KtList<FriendRequest>? receivedFriendRequests,
      KtList<FriendRequest>? sentFriendRequests}) = _$DataWatcherLoadInProgress;

  User? get user => throw _privateConstructorUsedError;
  KtList<GameInvitation>? get receivedGameInvitations =>
      throw _privateConstructorUsedError;
  KtList<GameInvitation>? get sentGameInvitations =>
      throw _privateConstructorUsedError;
  KtList<Friend>? get friends => throw _privateConstructorUsedError;
  KtList<FriendRequest>? get receivedFriendRequests =>
      throw _privateConstructorUsedError;
  KtList<FriendRequest>? get sentFriendRequests =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataWatcherLoadInProgressCopyWith<DataWatcherLoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataWatcherLoadSuccessCopyWith<$Res> {
  factory $DataWatcherLoadSuccessCopyWith(DataWatcherLoadSuccess value,
          $Res Function(DataWatcherLoadSuccess) then) =
      _$DataWatcherLoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {User user,
      KtList<GameInvitation> receivedGameInvitations,
      KtList<GameInvitation> sentGameInvitations,
      KtList<Friend> friends,
      KtList<FriendRequest> receivedFriendRequests,
      KtList<FriendRequest> sentFriendRequests});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$DataWatcherLoadSuccessCopyWithImpl<$Res>
    extends _$DataWatcherStateCopyWithImpl<$Res>
    implements $DataWatcherLoadSuccessCopyWith<$Res> {
  _$DataWatcherLoadSuccessCopyWithImpl(DataWatcherLoadSuccess _value,
      $Res Function(DataWatcherLoadSuccess) _then)
      : super(_value, (v) => _then(v as DataWatcherLoadSuccess));

  @override
  DataWatcherLoadSuccess get _value => super._value as DataWatcherLoadSuccess;

  @override
  $Res call({
    Object? user = freezed,
    Object? receivedGameInvitations = freezed,
    Object? sentGameInvitations = freezed,
    Object? friends = freezed,
    Object? receivedFriendRequests = freezed,
    Object? sentFriendRequests = freezed,
  }) {
    return _then(DataWatcherLoadSuccess(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      receivedGameInvitations: receivedGameInvitations == freezed
          ? _value.receivedGameInvitations
          : receivedGameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
      sentGameInvitations: sentGameInvitations == freezed
          ? _value.sentGameInvitations
          : sentGameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
      friends: friends == freezed
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as KtList<Friend>,
      receivedFriendRequests: receivedFriendRequests == freezed
          ? _value.receivedFriendRequests
          : receivedFriendRequests // ignore: cast_nullable_to_non_nullable
              as KtList<FriendRequest>,
      sentFriendRequests: sentFriendRequests == freezed
          ? _value.sentFriendRequests
          : sentFriendRequests // ignore: cast_nullable_to_non_nullable
              as KtList<FriendRequest>,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$DataWatcherLoadSuccess implements DataWatcherLoadSuccess {
  const _$DataWatcherLoadSuccess(
      {required this.user,
      required this.receivedGameInvitations,
      required this.sentGameInvitations,
      required this.friends,
      required this.receivedFriendRequests,
      required this.sentFriendRequests});

  @override
  final User user;
  @override
  final KtList<GameInvitation> receivedGameInvitations;
  @override
  final KtList<GameInvitation> sentGameInvitations;
  @override
  final KtList<Friend> friends;
  @override
  final KtList<FriendRequest> receivedFriendRequests;
  @override
  final KtList<FriendRequest> sentFriendRequests;

  @override
  String toString() {
    return 'DataWatcherState.loadSuccess(user: $user, receivedGameInvitations: $receivedGameInvitations, sentGameInvitations: $sentGameInvitations, friends: $friends, receivedFriendRequests: $receivedFriendRequests, sentFriendRequests: $sentFriendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataWatcherLoadSuccess &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(
                    other.receivedGameInvitations, receivedGameInvitations) ||
                const DeepCollectionEquality().equals(
                    other.receivedGameInvitations, receivedGameInvitations)) &&
            (identical(other.sentGameInvitations, sentGameInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.sentGameInvitations, sentGameInvitations)) &&
            (identical(other.friends, friends) ||
                const DeepCollectionEquality()
                    .equals(other.friends, friends)) &&
            (identical(other.receivedFriendRequests, receivedFriendRequests) ||
                const DeepCollectionEquality().equals(
                    other.receivedFriendRequests, receivedFriendRequests)) &&
            (identical(other.sentFriendRequests, sentFriendRequests) ||
                const DeepCollectionEquality()
                    .equals(other.sentFriendRequests, sentFriendRequests)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(receivedGameInvitations) ^
      const DeepCollectionEquality().hash(sentGameInvitations) ^
      const DeepCollectionEquality().hash(friends) ^
      const DeepCollectionEquality().hash(receivedFriendRequests) ^
      const DeepCollectionEquality().hash(sentFriendRequests);

  @JsonKey(ignore: true)
  @override
  $DataWatcherLoadSuccessCopyWith<DataWatcherLoadSuccess> get copyWith =>
      _$DataWatcherLoadSuccessCopyWithImpl<DataWatcherLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            User? user,
            KtList<GameInvitation>? receivedGameInvitations,
            KtList<GameInvitation>? sentGameInvitations,
            KtList<Friend>? friends,
            KtList<FriendRequest>? receivedFriendRequests,
            KtList<FriendRequest>? sentFriendRequests)
        loadInProgress,
    required TResult Function(
            User user,
            KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations,
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(user, receivedGameInvitations, sentGameInvitations,
        friends, receivedFriendRequests, sentFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            User? user,
            KtList<GameInvitation>? receivedGameInvitations,
            KtList<GameInvitation>? sentGameInvitations,
            KtList<Friend>? friends,
            KtList<FriendRequest>? receivedFriendRequests,
            KtList<FriendRequest>? sentFriendRequests)?
        loadInProgress,
    TResult Function(
            User user,
            KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations,
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadSuccess?.call(user, receivedGameInvitations, sentGameInvitations,
        friends, receivedFriendRequests, sentFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            User? user,
            KtList<GameInvitation>? receivedGameInvitations,
            KtList<GameInvitation>? sentGameInvitations,
            KtList<Friend>? friends,
            KtList<FriendRequest>? receivedFriendRequests,
            KtList<FriendRequest>? sentFriendRequests)?
        loadInProgress,
    TResult Function(
            User user,
            KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations,
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(user, receivedGameInvitations, sentGameInvitations,
          friends, receivedFriendRequests, sentFriendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataWatcherLoadInProgress value) loadInProgress,
    required TResult Function(DataWatcherLoadSuccess value) loadSuccess,
    required TResult Function(DataWatcherLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DataWatcherLoadInProgress value)? loadInProgress,
    TResult Function(DataWatcherLoadSuccess value)? loadSuccess,
    TResult Function(DataWatcherLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataWatcherLoadInProgress value)? loadInProgress,
    TResult Function(DataWatcherLoadSuccess value)? loadSuccess,
    TResult Function(DataWatcherLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class DataWatcherLoadSuccess implements DataWatcherState {
  const factory DataWatcherLoadSuccess(
          {required User user,
          required KtList<GameInvitation> receivedGameInvitations,
          required KtList<GameInvitation> sentGameInvitations,
          required KtList<Friend> friends,
          required KtList<FriendRequest> receivedFriendRequests,
          required KtList<FriendRequest> sentFriendRequests}) =
      _$DataWatcherLoadSuccess;

  User get user => throw _privateConstructorUsedError;
  KtList<GameInvitation> get receivedGameInvitations =>
      throw _privateConstructorUsedError;
  KtList<GameInvitation> get sentGameInvitations =>
      throw _privateConstructorUsedError;
  KtList<Friend> get friends => throw _privateConstructorUsedError;
  KtList<FriendRequest> get receivedFriendRequests =>
      throw _privateConstructorUsedError;
  KtList<FriendRequest> get sentFriendRequests =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataWatcherLoadSuccessCopyWith<DataWatcherLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataWatcherLoadFailureCopyWith<$Res> {
  factory $DataWatcherLoadFailureCopyWith(DataWatcherLoadFailure value,
          $Res Function(DataWatcherLoadFailure) then) =
      _$DataWatcherLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataWatcherLoadFailureCopyWithImpl<$Res>
    extends _$DataWatcherStateCopyWithImpl<$Res>
    implements $DataWatcherLoadFailureCopyWith<$Res> {
  _$DataWatcherLoadFailureCopyWithImpl(DataWatcherLoadFailure _value,
      $Res Function(DataWatcherLoadFailure) _then)
      : super(_value, (v) => _then(v as DataWatcherLoadFailure));

  @override
  DataWatcherLoadFailure get _value => super._value as DataWatcherLoadFailure;
}

/// @nodoc

class _$DataWatcherLoadFailure implements DataWatcherLoadFailure {
  const _$DataWatcherLoadFailure();

  @override
  String toString() {
    return 'DataWatcherState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataWatcherLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            User? user,
            KtList<GameInvitation>? receivedGameInvitations,
            KtList<GameInvitation>? sentGameInvitations,
            KtList<Friend>? friends,
            KtList<FriendRequest>? receivedFriendRequests,
            KtList<FriendRequest>? sentFriendRequests)
        loadInProgress,
    required TResult Function(
            User user,
            KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations,
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            User? user,
            KtList<GameInvitation>? receivedGameInvitations,
            KtList<GameInvitation>? sentGameInvitations,
            KtList<Friend>? friends,
            KtList<FriendRequest>? receivedFriendRequests,
            KtList<FriendRequest>? sentFriendRequests)?
        loadInProgress,
    TResult Function(
            User user,
            KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations,
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            User? user,
            KtList<GameInvitation>? receivedGameInvitations,
            KtList<GameInvitation>? sentGameInvitations,
            KtList<Friend>? friends,
            KtList<FriendRequest>? receivedFriendRequests,
            KtList<FriendRequest>? sentFriendRequests)?
        loadInProgress,
    TResult Function(
            User user,
            KtList<GameInvitation> receivedGameInvitations,
            KtList<GameInvitation> sentGameInvitations,
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataWatcherLoadInProgress value) loadInProgress,
    required TResult Function(DataWatcherLoadSuccess value) loadSuccess,
    required TResult Function(DataWatcherLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DataWatcherLoadInProgress value)? loadInProgress,
    TResult Function(DataWatcherLoadSuccess value)? loadSuccess,
    TResult Function(DataWatcherLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataWatcherLoadInProgress value)? loadInProgress,
    TResult Function(DataWatcherLoadSuccess value)? loadSuccess,
    TResult Function(DataWatcherLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class DataWatcherLoadFailure implements DataWatcherState {
  const factory DataWatcherLoadFailure() = _$DataWatcherLoadFailure;
}
