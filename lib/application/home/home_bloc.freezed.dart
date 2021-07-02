// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  WatchStarted watchStarted() {
    return const WatchStarted();
  }

  UnreadInvitationsReceived unreadInvitationsReceived(
      {required int unreadInvitations}) {
    return UnreadInvitationsReceived(
      unreadInvitations: unreadInvitations,
    );
  }

  UnreadFriendRequestsReceived unreadFriendRequestsReceived(
      {required int unreadFriendRequests}) {
    return UnreadFriendRequestsReceived(
      unreadFriendRequests: unreadFriendRequests,
    );
  }

  UserReceived userReceived({required User user}) {
    return UserReceived(
      user: user,
    );
  }

  GameCreated gameCreated() {
    return const GameCreated();
  }

  GoToInvitationsPressed goToInvitationsPressed() {
    return const GoToInvitationsPressed();
  }

  GoToFriendsPressed goToFriendsPressed() {
    return const GoToFriendsPressed();
  }

  CreateOnlineGamePressed createOnlineGamePressed() {
    return const CreateOnlineGamePressed();
  }

  CreateOfflineGamePressed createOfflineGamePressed() {
    return const CreateOfflineGamePressed();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(User user) userReceived,
    required TResult Function() gameCreated,
    required TResult Function() goToInvitationsPressed,
    required TResult Function() goToFriendsPressed,
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(User user)? userReceived,
    TResult Function()? gameCreated,
    TResult Function()? goToInvitationsPressed,
    TResult Function()? goToFriendsPressed,
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GoToInvitationsPressed value)
        goToInvitationsPressed,
    required TResult Function(GoToFriendsPressed value) goToFriendsPressed,
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GoToInvitationsPressed value)? goToInvitationsPressed,
    TResult Function(GoToFriendsPressed value)? goToFriendsPressed,
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $WatchStartedCopyWith<$Res> {
  factory $WatchStartedCopyWith(
          WatchStarted value, $Res Function(WatchStarted) then) =
      _$WatchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchStartedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $WatchStartedCopyWith<$Res> {
  _$WatchStartedCopyWithImpl(
      WatchStarted _value, $Res Function(WatchStarted) _then)
      : super(_value, (v) => _then(v as WatchStarted));

  @override
  WatchStarted get _value => super._value as WatchStarted;
}

/// @nodoc

class _$WatchStarted implements WatchStarted {
  const _$WatchStarted();

  @override
  String toString() {
    return 'HomeEvent.watchStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WatchStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(User user) userReceived,
    required TResult Function() gameCreated,
    required TResult Function() goToInvitationsPressed,
    required TResult Function() goToFriendsPressed,
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
  }) {
    return watchStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(User user)? userReceived,
    TResult Function()? gameCreated,
    TResult Function()? goToInvitationsPressed,
    TResult Function()? goToFriendsPressed,
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GoToInvitationsPressed value)
        goToInvitationsPressed,
    required TResult Function(GoToFriendsPressed value) goToFriendsPressed,
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
  }) {
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GoToInvitationsPressed value)? goToInvitationsPressed,
    TResult Function(GoToFriendsPressed value)? goToFriendsPressed,
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted(this);
    }
    return orElse();
  }
}

abstract class WatchStarted implements HomeEvent {
  const factory WatchStarted() = _$WatchStarted;
}

/// @nodoc
abstract class $UnreadInvitationsReceivedCopyWith<$Res> {
  factory $UnreadInvitationsReceivedCopyWith(UnreadInvitationsReceived value,
          $Res Function(UnreadInvitationsReceived) then) =
      _$UnreadInvitationsReceivedCopyWithImpl<$Res>;
  $Res call({int unreadInvitations});
}

/// @nodoc
class _$UnreadInvitationsReceivedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $UnreadInvitationsReceivedCopyWith<$Res> {
  _$UnreadInvitationsReceivedCopyWithImpl(UnreadInvitationsReceived _value,
      $Res Function(UnreadInvitationsReceived) _then)
      : super(_value, (v) => _then(v as UnreadInvitationsReceived));

  @override
  UnreadInvitationsReceived get _value =>
      super._value as UnreadInvitationsReceived;

  @override
  $Res call({
    Object? unreadInvitations = freezed,
  }) {
    return _then(UnreadInvitationsReceived(
      unreadInvitations: unreadInvitations == freezed
          ? _value.unreadInvitations
          : unreadInvitations // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnreadInvitationsReceived implements UnreadInvitationsReceived {
  const _$UnreadInvitationsReceived({required this.unreadInvitations});

  @override
  final int unreadInvitations;

  @override
  String toString() {
    return 'HomeEvent.unreadInvitationsReceived(unreadInvitations: $unreadInvitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnreadInvitationsReceived &&
            (identical(other.unreadInvitations, unreadInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.unreadInvitations, unreadInvitations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(unreadInvitations);

  @JsonKey(ignore: true)
  @override
  $UnreadInvitationsReceivedCopyWith<UnreadInvitationsReceived> get copyWith =>
      _$UnreadInvitationsReceivedCopyWithImpl<UnreadInvitationsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(User user) userReceived,
    required TResult Function() gameCreated,
    required TResult Function() goToInvitationsPressed,
    required TResult Function() goToFriendsPressed,
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
  }) {
    return unreadInvitationsReceived(unreadInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(User user)? userReceived,
    TResult Function()? gameCreated,
    TResult Function()? goToInvitationsPressed,
    TResult Function()? goToFriendsPressed,
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    required TResult orElse(),
  }) {
    if (unreadInvitationsReceived != null) {
      return unreadInvitationsReceived(unreadInvitations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GoToInvitationsPressed value)
        goToInvitationsPressed,
    required TResult Function(GoToFriendsPressed value) goToFriendsPressed,
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
  }) {
    return unreadInvitationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GoToInvitationsPressed value)? goToInvitationsPressed,
    TResult Function(GoToFriendsPressed value)? goToFriendsPressed,
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    required TResult orElse(),
  }) {
    if (unreadInvitationsReceived != null) {
      return unreadInvitationsReceived(this);
    }
    return orElse();
  }
}

abstract class UnreadInvitationsReceived implements HomeEvent {
  const factory UnreadInvitationsReceived({required int unreadInvitations}) =
      _$UnreadInvitationsReceived;

  int get unreadInvitations => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnreadInvitationsReceivedCopyWith<UnreadInvitationsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnreadFriendRequestsReceivedCopyWith<$Res> {
  factory $UnreadFriendRequestsReceivedCopyWith(
          UnreadFriendRequestsReceived value,
          $Res Function(UnreadFriendRequestsReceived) then) =
      _$UnreadFriendRequestsReceivedCopyWithImpl<$Res>;
  $Res call({int unreadFriendRequests});
}

/// @nodoc
class _$UnreadFriendRequestsReceivedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $UnreadFriendRequestsReceivedCopyWith<$Res> {
  _$UnreadFriendRequestsReceivedCopyWithImpl(
      UnreadFriendRequestsReceived _value,
      $Res Function(UnreadFriendRequestsReceived) _then)
      : super(_value, (v) => _then(v as UnreadFriendRequestsReceived));

  @override
  UnreadFriendRequestsReceived get _value =>
      super._value as UnreadFriendRequestsReceived;

  @override
  $Res call({
    Object? unreadFriendRequests = freezed,
  }) {
    return _then(UnreadFriendRequestsReceived(
      unreadFriendRequests: unreadFriendRequests == freezed
          ? _value.unreadFriendRequests
          : unreadFriendRequests // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnreadFriendRequestsReceived implements UnreadFriendRequestsReceived {
  const _$UnreadFriendRequestsReceived({required this.unreadFriendRequests});

  @override
  final int unreadFriendRequests;

  @override
  String toString() {
    return 'HomeEvent.unreadFriendRequestsReceived(unreadFriendRequests: $unreadFriendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnreadFriendRequestsReceived &&
            (identical(other.unreadFriendRequests, unreadFriendRequests) ||
                const DeepCollectionEquality()
                    .equals(other.unreadFriendRequests, unreadFriendRequests)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(unreadFriendRequests);

  @JsonKey(ignore: true)
  @override
  $UnreadFriendRequestsReceivedCopyWith<UnreadFriendRequestsReceived>
      get copyWith => _$UnreadFriendRequestsReceivedCopyWithImpl<
          UnreadFriendRequestsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(User user) userReceived,
    required TResult Function() gameCreated,
    required TResult Function() goToInvitationsPressed,
    required TResult Function() goToFriendsPressed,
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
  }) {
    return unreadFriendRequestsReceived(unreadFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(User user)? userReceived,
    TResult Function()? gameCreated,
    TResult Function()? goToInvitationsPressed,
    TResult Function()? goToFriendsPressed,
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    required TResult orElse(),
  }) {
    if (unreadFriendRequestsReceived != null) {
      return unreadFriendRequestsReceived(unreadFriendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GoToInvitationsPressed value)
        goToInvitationsPressed,
    required TResult Function(GoToFriendsPressed value) goToFriendsPressed,
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
  }) {
    return unreadFriendRequestsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GoToInvitationsPressed value)? goToInvitationsPressed,
    TResult Function(GoToFriendsPressed value)? goToFriendsPressed,
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    required TResult orElse(),
  }) {
    if (unreadFriendRequestsReceived != null) {
      return unreadFriendRequestsReceived(this);
    }
    return orElse();
  }
}

abstract class UnreadFriendRequestsReceived implements HomeEvent {
  const factory UnreadFriendRequestsReceived(
      {required int unreadFriendRequests}) = _$UnreadFriendRequestsReceived;

  int get unreadFriendRequests => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnreadFriendRequestsReceivedCopyWith<UnreadFriendRequestsReceived>
      get copyWith => throw _privateConstructorUsedError;
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
class _$UserReceivedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
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
    return 'HomeEvent.userReceived(user: $user)';
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
    required TResult Function() watchStarted,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(User user) userReceived,
    required TResult Function() gameCreated,
    required TResult Function() goToInvitationsPressed,
    required TResult Function() goToFriendsPressed,
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
  }) {
    return userReceived(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(User user)? userReceived,
    TResult Function()? gameCreated,
    TResult Function()? goToInvitationsPressed,
    TResult Function()? goToFriendsPressed,
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
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
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GoToInvitationsPressed value)
        goToInvitationsPressed,
    required TResult Function(GoToFriendsPressed value) goToFriendsPressed,
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
  }) {
    return userReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GoToInvitationsPressed value)? goToInvitationsPressed,
    TResult Function(GoToFriendsPressed value)? goToFriendsPressed,
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    required TResult orElse(),
  }) {
    if (userReceived != null) {
      return userReceived(this);
    }
    return orElse();
  }
}

abstract class UserReceived implements HomeEvent {
  const factory UserReceived({required User user}) = _$UserReceived;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserReceivedCopyWith<UserReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCreatedCopyWith<$Res> {
  factory $GameCreatedCopyWith(
          GameCreated value, $Res Function(GameCreated) then) =
      _$GameCreatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameCreatedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $GameCreatedCopyWith<$Res> {
  _$GameCreatedCopyWithImpl(
      GameCreated _value, $Res Function(GameCreated) _then)
      : super(_value, (v) => _then(v as GameCreated));

  @override
  GameCreated get _value => super._value as GameCreated;
}

/// @nodoc

class _$GameCreated implements GameCreated {
  const _$GameCreated();

  @override
  String toString() {
    return 'HomeEvent.gameCreated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GameCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(User user) userReceived,
    required TResult Function() gameCreated,
    required TResult Function() goToInvitationsPressed,
    required TResult Function() goToFriendsPressed,
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
  }) {
    return gameCreated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(User user)? userReceived,
    TResult Function()? gameCreated,
    TResult Function()? goToInvitationsPressed,
    TResult Function()? goToFriendsPressed,
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    required TResult orElse(),
  }) {
    if (gameCreated != null) {
      return gameCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GoToInvitationsPressed value)
        goToInvitationsPressed,
    required TResult Function(GoToFriendsPressed value) goToFriendsPressed,
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
  }) {
    return gameCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GoToInvitationsPressed value)? goToInvitationsPressed,
    TResult Function(GoToFriendsPressed value)? goToFriendsPressed,
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    required TResult orElse(),
  }) {
    if (gameCreated != null) {
      return gameCreated(this);
    }
    return orElse();
  }
}

abstract class GameCreated implements HomeEvent {
  const factory GameCreated() = _$GameCreated;
}

/// @nodoc
abstract class $GoToInvitationsPressedCopyWith<$Res> {
  factory $GoToInvitationsPressedCopyWith(GoToInvitationsPressed value,
          $Res Function(GoToInvitationsPressed) then) =
      _$GoToInvitationsPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoToInvitationsPressedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $GoToInvitationsPressedCopyWith<$Res> {
  _$GoToInvitationsPressedCopyWithImpl(GoToInvitationsPressed _value,
      $Res Function(GoToInvitationsPressed) _then)
      : super(_value, (v) => _then(v as GoToInvitationsPressed));

  @override
  GoToInvitationsPressed get _value => super._value as GoToInvitationsPressed;
}

/// @nodoc

class _$GoToInvitationsPressed implements GoToInvitationsPressed {
  const _$GoToInvitationsPressed();

  @override
  String toString() {
    return 'HomeEvent.goToInvitationsPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GoToInvitationsPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(User user) userReceived,
    required TResult Function() gameCreated,
    required TResult Function() goToInvitationsPressed,
    required TResult Function() goToFriendsPressed,
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
  }) {
    return goToInvitationsPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(User user)? userReceived,
    TResult Function()? gameCreated,
    TResult Function()? goToInvitationsPressed,
    TResult Function()? goToFriendsPressed,
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    required TResult orElse(),
  }) {
    if (goToInvitationsPressed != null) {
      return goToInvitationsPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GoToInvitationsPressed value)
        goToInvitationsPressed,
    required TResult Function(GoToFriendsPressed value) goToFriendsPressed,
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
  }) {
    return goToInvitationsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GoToInvitationsPressed value)? goToInvitationsPressed,
    TResult Function(GoToFriendsPressed value)? goToFriendsPressed,
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    required TResult orElse(),
  }) {
    if (goToInvitationsPressed != null) {
      return goToInvitationsPressed(this);
    }
    return orElse();
  }
}

abstract class GoToInvitationsPressed implements HomeEvent {
  const factory GoToInvitationsPressed() = _$GoToInvitationsPressed;
}

/// @nodoc
abstract class $GoToFriendsPressedCopyWith<$Res> {
  factory $GoToFriendsPressedCopyWith(
          GoToFriendsPressed value, $Res Function(GoToFriendsPressed) then) =
      _$GoToFriendsPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoToFriendsPressedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $GoToFriendsPressedCopyWith<$Res> {
  _$GoToFriendsPressedCopyWithImpl(
      GoToFriendsPressed _value, $Res Function(GoToFriendsPressed) _then)
      : super(_value, (v) => _then(v as GoToFriendsPressed));

  @override
  GoToFriendsPressed get _value => super._value as GoToFriendsPressed;
}

/// @nodoc

class _$GoToFriendsPressed implements GoToFriendsPressed {
  const _$GoToFriendsPressed();

  @override
  String toString() {
    return 'HomeEvent.goToFriendsPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GoToFriendsPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(User user) userReceived,
    required TResult Function() gameCreated,
    required TResult Function() goToInvitationsPressed,
    required TResult Function() goToFriendsPressed,
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
  }) {
    return goToFriendsPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(User user)? userReceived,
    TResult Function()? gameCreated,
    TResult Function()? goToInvitationsPressed,
    TResult Function()? goToFriendsPressed,
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    required TResult orElse(),
  }) {
    if (goToFriendsPressed != null) {
      return goToFriendsPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GoToInvitationsPressed value)
        goToInvitationsPressed,
    required TResult Function(GoToFriendsPressed value) goToFriendsPressed,
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
  }) {
    return goToFriendsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GoToInvitationsPressed value)? goToInvitationsPressed,
    TResult Function(GoToFriendsPressed value)? goToFriendsPressed,
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    required TResult orElse(),
  }) {
    if (goToFriendsPressed != null) {
      return goToFriendsPressed(this);
    }
    return orElse();
  }
}

abstract class GoToFriendsPressed implements HomeEvent {
  const factory GoToFriendsPressed() = _$GoToFriendsPressed;
}

/// @nodoc
abstract class $CreateOnlineGamePressedCopyWith<$Res> {
  factory $CreateOnlineGamePressedCopyWith(CreateOnlineGamePressed value,
          $Res Function(CreateOnlineGamePressed) then) =
      _$CreateOnlineGamePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateOnlineGamePressedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $CreateOnlineGamePressedCopyWith<$Res> {
  _$CreateOnlineGamePressedCopyWithImpl(CreateOnlineGamePressed _value,
      $Res Function(CreateOnlineGamePressed) _then)
      : super(_value, (v) => _then(v as CreateOnlineGamePressed));

  @override
  CreateOnlineGamePressed get _value => super._value as CreateOnlineGamePressed;
}

/// @nodoc

class _$CreateOnlineGamePressed implements CreateOnlineGamePressed {
  const _$CreateOnlineGamePressed();

  @override
  String toString() {
    return 'HomeEvent.createOnlineGamePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateOnlineGamePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(User user) userReceived,
    required TResult Function() gameCreated,
    required TResult Function() goToInvitationsPressed,
    required TResult Function() goToFriendsPressed,
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
  }) {
    return createOnlineGamePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(User user)? userReceived,
    TResult Function()? gameCreated,
    TResult Function()? goToInvitationsPressed,
    TResult Function()? goToFriendsPressed,
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    required TResult orElse(),
  }) {
    if (createOnlineGamePressed != null) {
      return createOnlineGamePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GoToInvitationsPressed value)
        goToInvitationsPressed,
    required TResult Function(GoToFriendsPressed value) goToFriendsPressed,
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
  }) {
    return createOnlineGamePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GoToInvitationsPressed value)? goToInvitationsPressed,
    TResult Function(GoToFriendsPressed value)? goToFriendsPressed,
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    required TResult orElse(),
  }) {
    if (createOnlineGamePressed != null) {
      return createOnlineGamePressed(this);
    }
    return orElse();
  }
}

abstract class CreateOnlineGamePressed implements HomeEvent {
  const factory CreateOnlineGamePressed() = _$CreateOnlineGamePressed;
}

/// @nodoc
abstract class $CreateOfflineGamePressedCopyWith<$Res> {
  factory $CreateOfflineGamePressedCopyWith(CreateOfflineGamePressed value,
          $Res Function(CreateOfflineGamePressed) then) =
      _$CreateOfflineGamePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateOfflineGamePressedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $CreateOfflineGamePressedCopyWith<$Res> {
  _$CreateOfflineGamePressedCopyWithImpl(CreateOfflineGamePressed _value,
      $Res Function(CreateOfflineGamePressed) _then)
      : super(_value, (v) => _then(v as CreateOfflineGamePressed));

  @override
  CreateOfflineGamePressed get _value =>
      super._value as CreateOfflineGamePressed;
}

/// @nodoc

class _$CreateOfflineGamePressed implements CreateOfflineGamePressed {
  const _$CreateOfflineGamePressed();

  @override
  String toString() {
    return 'HomeEvent.createOfflineGamePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateOfflineGamePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(int unreadInvitations) unreadInvitationsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(User user) userReceived,
    required TResult Function() gameCreated,
    required TResult Function() goToInvitationsPressed,
    required TResult Function() goToFriendsPressed,
    required TResult Function() createOnlineGamePressed,
    required TResult Function() createOfflineGamePressed,
  }) {
    return createOfflineGamePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(int unreadInvitations)? unreadInvitationsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(User user)? userReceived,
    TResult Function()? gameCreated,
    TResult Function()? goToInvitationsPressed,
    TResult Function()? goToFriendsPressed,
    TResult Function()? createOnlineGamePressed,
    TResult Function()? createOfflineGamePressed,
    required TResult orElse(),
  }) {
    if (createOfflineGamePressed != null) {
      return createOfflineGamePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(UnreadInvitationsReceived value)
        unreadInvitationsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GoToInvitationsPressed value)
        goToInvitationsPressed,
    required TResult Function(GoToFriendsPressed value) goToFriendsPressed,
    required TResult Function(CreateOnlineGamePressed value)
        createOnlineGamePressed,
    required TResult Function(CreateOfflineGamePressed value)
        createOfflineGamePressed,
  }) {
    return createOfflineGamePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(UnreadInvitationsReceived value)?
        unreadInvitationsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GoToInvitationsPressed value)? goToInvitationsPressed,
    TResult Function(GoToFriendsPressed value)? goToFriendsPressed,
    TResult Function(CreateOnlineGamePressed value)? createOnlineGamePressed,
    TResult Function(CreateOfflineGamePressed value)? createOfflineGamePressed,
    required TResult orElse(),
  }) {
    if (createOfflineGamePressed != null) {
      return createOfflineGamePressed(this);
    }
    return orElse();
  }
}

abstract class CreateOfflineGamePressed implements HomeEvent {
  const factory CreateOfflineGamePressed() = _$CreateOfflineGamePressed;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {required int unreadReceivedInvitations,
      required int unreadFriendRequests,
      required User user,
      Game? game}) {
    return _HomeState(
      unreadReceivedInvitations: unreadReceivedInvitations,
      unreadFriendRequests: unreadFriendRequests,
      user: user,
      game: game,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  int get unreadReceivedInvitations => throw _privateConstructorUsedError;
  int get unreadFriendRequests => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  Game? get game => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {int unreadReceivedInvitations,
      int unreadFriendRequests,
      User user,
      Game? game});

  $UserCopyWith<$Res> get user;
  $GameCopyWith<$Res>? get game;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? unreadReceivedInvitations = freezed,
    Object? unreadFriendRequests = freezed,
    Object? user = freezed,
    Object? game = freezed,
  }) {
    return _then(_value.copyWith(
      unreadReceivedInvitations: unreadReceivedInvitations == freezed
          ? _value.unreadReceivedInvitations
          : unreadReceivedInvitations // ignore: cast_nullable_to_non_nullable
              as int,
      unreadFriendRequests: unreadFriendRequests == freezed
          ? _value.unreadFriendRequests
          : unreadFriendRequests // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game?,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $GameCopyWith<$Res>? get game {
    if (_value.game == null) {
      return null;
    }

    return $GameCopyWith<$Res>(_value.game!, (value) {
      return _then(_value.copyWith(game: value));
    });
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int unreadReceivedInvitations,
      int unreadFriendRequests,
      User user,
      Game? game});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $GameCopyWith<$Res>? get game;
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? unreadReceivedInvitations = freezed,
    Object? unreadFriendRequests = freezed,
    Object? user = freezed,
    Object? game = freezed,
  }) {
    return _then(_HomeState(
      unreadReceivedInvitations: unreadReceivedInvitations == freezed
          ? _value.unreadReceivedInvitations
          : unreadReceivedInvitations // ignore: cast_nullable_to_non_nullable
              as int,
      unreadFriendRequests: unreadFriendRequests == freezed
          ? _value.unreadFriendRequests
          : unreadFriendRequests // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game?,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.unreadReceivedInvitations,
      required this.unreadFriendRequests,
      required this.user,
      this.game});

  @override
  final int unreadReceivedInvitations;
  @override
  final int unreadFriendRequests;
  @override
  final User user;
  @override
  final Game? game;

  @override
  String toString() {
    return 'HomeState(unreadReceivedInvitations: $unreadReceivedInvitations, unreadFriendRequests: $unreadFriendRequests, user: $user, game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.unreadReceivedInvitations,
                    unreadReceivedInvitations) ||
                const DeepCollectionEquality().equals(
                    other.unreadReceivedInvitations,
                    unreadReceivedInvitations)) &&
            (identical(other.unreadFriendRequests, unreadFriendRequests) ||
                const DeepCollectionEquality().equals(
                    other.unreadFriendRequests, unreadFriendRequests)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.game, game) ||
                const DeepCollectionEquality().equals(other.game, game)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(unreadReceivedInvitations) ^
      const DeepCollectionEquality().hash(unreadFriendRequests) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(game);

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required int unreadReceivedInvitations,
      required int unreadFriendRequests,
      required User user,
      Game? game}) = _$_HomeState;

  @override
  int get unreadReceivedInvitations => throw _privateConstructorUsedError;
  @override
  int get unreadFriendRequests => throw _privateConstructorUsedError;
  @override
  User get user => throw _privateConstructorUsedError;
  @override
  Game? get game => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
