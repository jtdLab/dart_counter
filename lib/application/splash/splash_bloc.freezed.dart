// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SplashEventTearOff {
  const _$SplashEventTearOff();

  WatchStarted watchStarted() {
    return const WatchStarted();
  }

  InvitationsReceived invitationsReceived(
      {required KtList<GameInvitation> gameInvitations}) {
    return InvitationsReceived(
      gameInvitations: gameInvitations,
    );
  }

  FriendRequestsReceived friendRequestsReceived(
      {required KtList<FriendRequest> friendRequests}) {
    return FriendRequestsReceived(
      friendRequests: friendRequests,
    );
  }

  UserReceived userReceived({required User user}) {
    return UserReceived(
      user: user,
    );
  }

  FailureReceived failureReceived() {
    return const FailureReceived();
  }
}

/// @nodoc
const $SplashEvent = _$SplashEventTearOff();

/// @nodoc
mixin _$SplashEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        invitationsReceived,
    required TResult Function(KtList<FriendRequest> friendRequests)
        friendRequestsReceived,
    required TResult Function(User user) userReceived,
    required TResult Function() failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        invitationsReceived,
    TResult Function(KtList<FriendRequest> friendRequests)?
        friendRequestsReceived,
    TResult Function(User user)? userReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res> implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  final SplashEvent _value;
  // ignore: unused_field
  final $Res Function(SplashEvent) _then;
}

/// @nodoc
abstract class $WatchStartedCopyWith<$Res> {
  factory $WatchStartedCopyWith(
          WatchStarted value, $Res Function(WatchStarted) then) =
      _$WatchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchStartedCopyWithImpl<$Res> extends _$SplashEventCopyWithImpl<$Res>
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
    return 'SplashEvent.watchStarted()';
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
    required TResult Function(KtList<GameInvitation> gameInvitations)
        invitationsReceived,
    required TResult Function(KtList<FriendRequest> friendRequests)
        friendRequestsReceived,
    required TResult Function(User user) userReceived,
    required TResult Function() failureReceived,
  }) {
    return watchStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        invitationsReceived,
    TResult Function(KtList<FriendRequest> friendRequests)?
        friendRequestsReceived,
    TResult Function(User user)? userReceived,
    TResult Function()? failureReceived,
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
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted(this);
    }
    return orElse();
  }
}

abstract class WatchStarted implements SplashEvent {
  const factory WatchStarted() = _$WatchStarted;
}

/// @nodoc
abstract class $InvitationsReceivedCopyWith<$Res> {
  factory $InvitationsReceivedCopyWith(
          InvitationsReceived value, $Res Function(InvitationsReceived) then) =
      _$InvitationsReceivedCopyWithImpl<$Res>;
  $Res call({KtList<GameInvitation> gameInvitations});
}

/// @nodoc
class _$InvitationsReceivedCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res>
    implements $InvitationsReceivedCopyWith<$Res> {
  _$InvitationsReceivedCopyWithImpl(
      InvitationsReceived _value, $Res Function(InvitationsReceived) _then)
      : super(_value, (v) => _then(v as InvitationsReceived));

  @override
  InvitationsReceived get _value => super._value as InvitationsReceived;

  @override
  $Res call({
    Object? gameInvitations = freezed,
  }) {
    return _then(InvitationsReceived(
      gameInvitations: gameInvitations == freezed
          ? _value.gameInvitations
          : gameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
    ));
  }
}

/// @nodoc

class _$InvitationsReceived implements InvitationsReceived {
  const _$InvitationsReceived({required this.gameInvitations});

  @override
  final KtList<GameInvitation> gameInvitations;

  @override
  String toString() {
    return 'SplashEvent.invitationsReceived(gameInvitations: $gameInvitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvitationsReceived &&
            (identical(other.gameInvitations, gameInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.gameInvitations, gameInvitations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gameInvitations);

  @JsonKey(ignore: true)
  @override
  $InvitationsReceivedCopyWith<InvitationsReceived> get copyWith =>
      _$InvitationsReceivedCopyWithImpl<InvitationsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        invitationsReceived,
    required TResult Function(KtList<FriendRequest> friendRequests)
        friendRequestsReceived,
    required TResult Function(User user) userReceived,
    required TResult Function() failureReceived,
  }) {
    return invitationsReceived(gameInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        invitationsReceived,
    TResult Function(KtList<FriendRequest> friendRequests)?
        friendRequestsReceived,
    TResult Function(User user)? userReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (invitationsReceived != null) {
      return invitationsReceived(gameInvitations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return invitationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (invitationsReceived != null) {
      return invitationsReceived(this);
    }
    return orElse();
  }
}

abstract class InvitationsReceived implements SplashEvent {
  const factory InvitationsReceived(
          {required KtList<GameInvitation> gameInvitations}) =
      _$InvitationsReceived;

  KtList<GameInvitation> get gameInvitations =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvitationsReceivedCopyWith<InvitationsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestsReceivedCopyWith<$Res> {
  factory $FriendRequestsReceivedCopyWith(FriendRequestsReceived value,
          $Res Function(FriendRequestsReceived) then) =
      _$FriendRequestsReceivedCopyWithImpl<$Res>;
  $Res call({KtList<FriendRequest> friendRequests});
}

/// @nodoc
class _$FriendRequestsReceivedCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res>
    implements $FriendRequestsReceivedCopyWith<$Res> {
  _$FriendRequestsReceivedCopyWithImpl(FriendRequestsReceived _value,
      $Res Function(FriendRequestsReceived) _then)
      : super(_value, (v) => _then(v as FriendRequestsReceived));

  @override
  FriendRequestsReceived get _value => super._value as FriendRequestsReceived;

  @override
  $Res call({
    Object? friendRequests = freezed,
  }) {
    return _then(FriendRequestsReceived(
      friendRequests: friendRequests == freezed
          ? _value.friendRequests
          : friendRequests // ignore: cast_nullable_to_non_nullable
              as KtList<FriendRequest>,
    ));
  }
}

/// @nodoc

class _$FriendRequestsReceived implements FriendRequestsReceived {
  const _$FriendRequestsReceived({required this.friendRequests});

  @override
  final KtList<FriendRequest> friendRequests;

  @override
  String toString() {
    return 'SplashEvent.friendRequestsReceived(friendRequests: $friendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FriendRequestsReceived &&
            (identical(other.friendRequests, friendRequests) ||
                const DeepCollectionEquality()
                    .equals(other.friendRequests, friendRequests)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(friendRequests);

  @JsonKey(ignore: true)
  @override
  $FriendRequestsReceivedCopyWith<FriendRequestsReceived> get copyWith =>
      _$FriendRequestsReceivedCopyWithImpl<FriendRequestsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        invitationsReceived,
    required TResult Function(KtList<FriendRequest> friendRequests)
        friendRequestsReceived,
    required TResult Function(User user) userReceived,
    required TResult Function() failureReceived,
  }) {
    return friendRequestsReceived(friendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        invitationsReceived,
    TResult Function(KtList<FriendRequest> friendRequests)?
        friendRequestsReceived,
    TResult Function(User user)? userReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (friendRequestsReceived != null) {
      return friendRequestsReceived(friendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return friendRequestsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (friendRequestsReceived != null) {
      return friendRequestsReceived(this);
    }
    return orElse();
  }
}

abstract class FriendRequestsReceived implements SplashEvent {
  const factory FriendRequestsReceived(
          {required KtList<FriendRequest> friendRequests}) =
      _$FriendRequestsReceived;

  KtList<FriendRequest> get friendRequests =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendRequestsReceivedCopyWith<FriendRequestsReceived> get copyWith =>
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
class _$UserReceivedCopyWithImpl<$Res> extends _$SplashEventCopyWithImpl<$Res>
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
    return 'SplashEvent.userReceived(user: $user)';
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
    required TResult Function(KtList<GameInvitation> gameInvitations)
        invitationsReceived,
    required TResult Function(KtList<FriendRequest> friendRequests)
        friendRequestsReceived,
    required TResult Function(User user) userReceived,
    required TResult Function() failureReceived,
  }) {
    return userReceived(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        invitationsReceived,
    TResult Function(KtList<FriendRequest> friendRequests)?
        friendRequestsReceived,
    TResult Function(User user)? userReceived,
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
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return userReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (userReceived != null) {
      return userReceived(this);
    }
    return orElse();
  }
}

abstract class UserReceived implements SplashEvent {
  const factory UserReceived({required User user}) = _$UserReceived;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserReceivedCopyWith<UserReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureReceivedCopyWith<$Res> {
  factory $FailureReceivedCopyWith(
          FailureReceived value, $Res Function(FailureReceived) then) =
      _$FailureReceivedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureReceivedCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res>
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
    return 'SplashEvent.failureReceived()';
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
    required TResult Function() watchStarted,
    required TResult Function(KtList<GameInvitation> gameInvitations)
        invitationsReceived,
    required TResult Function(KtList<FriendRequest> friendRequests)
        friendRequestsReceived,
    required TResult Function(User user) userReceived,
    required TResult Function() failureReceived,
  }) {
    return failureReceived();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<GameInvitation> gameInvitations)?
        invitationsReceived,
    TResult Function(KtList<FriendRequest> friendRequests)?
        friendRequestsReceived,
    TResult Function(User user)? userReceived,
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
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(InvitationsReceived value) invitationsReceived,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return failureReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(InvitationsReceived value)? invitationsReceived,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (failureReceived != null) {
      return failureReceived(this);
    }
    return orElse();
  }
}

abstract class FailureReceived implements SplashEvent {
  const factory FailureReceived() = _$FailureReceived;
}

/// @nodoc
class _$SplashStateTearOff {
  const _$SplashStateTearOff();

  _SplashState call(
      {required bool invitationsReceived,
      required bool friendRequestsReceived,
      required bool userReceived}) {
    return _SplashState(
      invitationsReceived: invitationsReceived,
      friendRequestsReceived: friendRequestsReceived,
      userReceived: userReceived,
    );
  }
}

/// @nodoc
const $SplashState = _$SplashStateTearOff();

/// @nodoc
mixin _$SplashState {
  bool get invitationsReceived => throw _privateConstructorUsedError;
  bool get friendRequestsReceived => throw _privateConstructorUsedError;
  bool get userReceived => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashStateCopyWith<SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res>;
  $Res call(
      {bool invitationsReceived,
      bool friendRequestsReceived,
      bool userReceived});
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  final SplashState _value;
  // ignore: unused_field
  final $Res Function(SplashState) _then;

  @override
  $Res call({
    Object? invitationsReceived = freezed,
    Object? friendRequestsReceived = freezed,
    Object? userReceived = freezed,
  }) {
    return _then(_value.copyWith(
      invitationsReceived: invitationsReceived == freezed
          ? _value.invitationsReceived
          : invitationsReceived // ignore: cast_nullable_to_non_nullable
              as bool,
      friendRequestsReceived: friendRequestsReceived == freezed
          ? _value.friendRequestsReceived
          : friendRequestsReceived // ignore: cast_nullable_to_non_nullable
              as bool,
      userReceived: userReceived == freezed
          ? _value.userReceived
          : userReceived // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SplashStateCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory _$SplashStateCopyWith(
          _SplashState value, $Res Function(_SplashState) then) =
      __$SplashStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool invitationsReceived,
      bool friendRequestsReceived,
      bool userReceived});
}

/// @nodoc
class __$SplashStateCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$SplashStateCopyWith<$Res> {
  __$SplashStateCopyWithImpl(
      _SplashState _value, $Res Function(_SplashState) _then)
      : super(_value, (v) => _then(v as _SplashState));

  @override
  _SplashState get _value => super._value as _SplashState;

  @override
  $Res call({
    Object? invitationsReceived = freezed,
    Object? friendRequestsReceived = freezed,
    Object? userReceived = freezed,
  }) {
    return _then(_SplashState(
      invitationsReceived: invitationsReceived == freezed
          ? _value.invitationsReceived
          : invitationsReceived // ignore: cast_nullable_to_non_nullable
              as bool,
      friendRequestsReceived: friendRequestsReceived == freezed
          ? _value.friendRequestsReceived
          : friendRequestsReceived // ignore: cast_nullable_to_non_nullable
              as bool,
      userReceived: userReceived == freezed
          ? _value.userReceived
          : userReceived // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SplashState implements _SplashState {
  const _$_SplashState(
      {required this.invitationsReceived,
      required this.friendRequestsReceived,
      required this.userReceived});

  @override
  final bool invitationsReceived;
  @override
  final bool friendRequestsReceived;
  @override
  final bool userReceived;

  @override
  String toString() {
    return 'SplashState(invitationsReceived: $invitationsReceived, friendRequestsReceived: $friendRequestsReceived, userReceived: $userReceived)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SplashState &&
            (identical(other.invitationsReceived, invitationsReceived) ||
                const DeepCollectionEquality()
                    .equals(other.invitationsReceived, invitationsReceived)) &&
            (identical(other.friendRequestsReceived, friendRequestsReceived) ||
                const DeepCollectionEquality().equals(
                    other.friendRequestsReceived, friendRequestsReceived)) &&
            (identical(other.userReceived, userReceived) ||
                const DeepCollectionEquality()
                    .equals(other.userReceived, userReceived)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(invitationsReceived) ^
      const DeepCollectionEquality().hash(friendRequestsReceived) ^
      const DeepCollectionEquality().hash(userReceived);

  @JsonKey(ignore: true)
  @override
  _$SplashStateCopyWith<_SplashState> get copyWith =>
      __$SplashStateCopyWithImpl<_SplashState>(this, _$identity);
}

abstract class _SplashState implements SplashState {
  const factory _SplashState(
      {required bool invitationsReceived,
      required bool friendRequestsReceived,
      required bool userReceived}) = _$_SplashState;

  @override
  bool get invitationsReceived => throw _privateConstructorUsedError;
  @override
  bool get friendRequestsReceived => throw _privateConstructorUsedError;
  @override
  bool get userReceived => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SplashStateCopyWith<_SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}
