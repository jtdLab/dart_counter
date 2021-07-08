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

  InvitationsReceived invitationsReceived() {
    return const InvitationsReceived();
  }

  FriendRequestsReceived friendRequestsReceived() {
    return const FriendRequestsReceived();
  }

  UserReceived userReceived() {
    return const UserReceived();
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
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
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
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) {
    return watchStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
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
}

/// @nodoc

class _$InvitationsReceived implements InvitationsReceived {
  const _$InvitationsReceived();

  @override
  String toString() {
    return 'SplashEvent.invitationsReceived()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvitationsReceived);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) {
    return invitationsReceived();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (invitationsReceived != null) {
      return invitationsReceived();
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
  const factory InvitationsReceived() = _$InvitationsReceived;
}

/// @nodoc
abstract class $FriendRequestsReceivedCopyWith<$Res> {
  factory $FriendRequestsReceivedCopyWith(FriendRequestsReceived value,
          $Res Function(FriendRequestsReceived) then) =
      _$FriendRequestsReceivedCopyWithImpl<$Res>;
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
}

/// @nodoc

class _$FriendRequestsReceived implements FriendRequestsReceived {
  const _$FriendRequestsReceived();

  @override
  String toString() {
    return 'SplashEvent.friendRequestsReceived()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FriendRequestsReceived);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) {
    return friendRequestsReceived();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (friendRequestsReceived != null) {
      return friendRequestsReceived();
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
  const factory FriendRequestsReceived() = _$FriendRequestsReceived;
}

/// @nodoc
abstract class $UserReceivedCopyWith<$Res> {
  factory $UserReceivedCopyWith(
          UserReceived value, $Res Function(UserReceived) then) =
      _$UserReceivedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserReceivedCopyWithImpl<$Res> extends _$SplashEventCopyWithImpl<$Res>
    implements $UserReceivedCopyWith<$Res> {
  _$UserReceivedCopyWithImpl(
      UserReceived _value, $Res Function(UserReceived) _then)
      : super(_value, (v) => _then(v as UserReceived));

  @override
  UserReceived get _value => super._value as UserReceived;
}

/// @nodoc

class _$UserReceived implements UserReceived {
  const _$UserReceived();

  @override
  String toString() {
    return 'SplashEvent.userReceived()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserReceived);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) {
    return userReceived();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (userReceived != null) {
      return userReceived();
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
  const factory UserReceived() = _$UserReceived;
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
    required TResult Function() invitationsReceived,
    required TResult Function() friendRequestsReceived,
    required TResult Function() userReceived,
    required TResult Function() failureReceived,
  }) {
    return failureReceived();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? invitationsReceived,
    TResult Function()? friendRequestsReceived,
    TResult Function()? userReceived,
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

  Initial initial() {
    return const Initial();
  }

  Unauthenticated unauthenticated() {
    return const Unauthenticated();
  }

  Authenticated authenticated(
      {required bool invitationsReceived,
      required bool friendRequestsReceived,
      required bool userReceived}) {
    return Authenticated(
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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function(bool invitationsReceived,
            bool friendRequestsReceived, bool userReceived)
        authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function(bool invitationsReceived, bool friendRequestsReceived,
            bool userReceived)?
        authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  final SplashState _value;
  // ignore: unused_field
  final $Res Function(SplashState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'SplashState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function(bool invitationsReceived,
            bool friendRequestsReceived, bool userReceived)
        authenticated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function(bool invitationsReceived, bool friendRequestsReceived,
            bool userReceived)?
        authenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SplashState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthenticatedCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;
}

/// @nodoc

class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString() {
    return 'SplashState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function(bool invitationsReceived,
            bool friendRequestsReceived, bool userReceived)
        authenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function(bool invitationsReceived, bool friendRequestsReceived,
            bool userReceived)?
        authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements SplashState {
  const factory Unauthenticated() = _$Unauthenticated;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
  $Res call(
      {bool invitationsReceived,
      bool friendRequestsReceived,
      bool userReceived});
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;

  @override
  $Res call({
    Object? invitationsReceived = freezed,
    Object? friendRequestsReceived = freezed,
    Object? userReceived = freezed,
  }) {
    return _then(Authenticated(
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

class _$Authenticated implements Authenticated {
  const _$Authenticated(
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
    return 'SplashState.authenticated(invitationsReceived: $invitationsReceived, friendRequestsReceived: $friendRequestsReceived, userReceived: $userReceived)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Authenticated &&
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
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function(bool invitationsReceived,
            bool friendRequestsReceived, bool userReceived)
        authenticated,
  }) {
    return authenticated(
        invitationsReceived, friendRequestsReceived, userReceived);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function(bool invitationsReceived, bool friendRequestsReceived,
            bool userReceived)?
        authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(
          invitationsReceived, friendRequestsReceived, userReceived);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements SplashState {
  const factory Authenticated(
      {required bool invitationsReceived,
      required bool friendRequestsReceived,
      required bool userReceived}) = _$Authenticated;

  bool get invitationsReceived => throw _privateConstructorUsedError;
  bool get friendRequestsReceived => throw _privateConstructorUsedError;
  bool get userReceived => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
