// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'friends_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FriendsEventTearOff {
  const _$FriendsEventTearOff();

  WatchStarted watchStarted() {
    return const WatchStarted();
  }

  FriendRequestsReceived friendRequestsReceived(
      {required KtList<FriendRequest> friendRequests}) {
    return FriendRequestsReceived(
      friendRequests: friendRequests,
    );
  }
}

/// @nodoc
const $FriendsEvent = _$FriendsEventTearOff();

/// @nodoc
mixin _$FriendsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(KtList<FriendRequest> friendRequests)
        friendRequestsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<FriendRequest> friendRequests)?
        friendRequestsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsEventCopyWith<$Res> {
  factory $FriendsEventCopyWith(
          FriendsEvent value, $Res Function(FriendsEvent) then) =
      _$FriendsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FriendsEventCopyWithImpl<$Res> implements $FriendsEventCopyWith<$Res> {
  _$FriendsEventCopyWithImpl(this._value, this._then);

  final FriendsEvent _value;
  // ignore: unused_field
  final $Res Function(FriendsEvent) _then;
}

/// @nodoc
abstract class $WatchStartedCopyWith<$Res> {
  factory $WatchStartedCopyWith(
          WatchStarted value, $Res Function(WatchStarted) then) =
      _$WatchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchStartedCopyWithImpl<$Res> extends _$FriendsEventCopyWithImpl<$Res>
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
    return 'FriendsEvent.watchStarted()';
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
    required TResult Function(KtList<FriendRequest> friendRequests)
        friendRequestsReceived,
  }) {
    return watchStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<FriendRequest> friendRequests)?
        friendRequestsReceived,
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
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
  }) {
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted(this);
    }
    return orElse();
  }
}

abstract class WatchStarted implements FriendsEvent {
  const factory WatchStarted() = _$WatchStarted;
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
    extends _$FriendsEventCopyWithImpl<$Res>
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
    return 'FriendsEvent.friendRequestsReceived(friendRequests: $friendRequests)';
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
    required TResult Function(KtList<FriendRequest> friendRequests)
        friendRequestsReceived,
  }) {
    return friendRequestsReceived(friendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<FriendRequest> friendRequests)?
        friendRequestsReceived,
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
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
  }) {
    return friendRequestsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    required TResult orElse(),
  }) {
    if (friendRequestsReceived != null) {
      return friendRequestsReceived(this);
    }
    return orElse();
  }
}

abstract class FriendRequestsReceived implements FriendsEvent {
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
class _$FriendsStateTearOff {
  const _$FriendsStateTearOff();

  _FriendsState call({required KtList<FriendRequest> friendRequests}) {
    return _FriendsState(
      friendRequests: friendRequests,
    );
  }
}

/// @nodoc
const $FriendsState = _$FriendsStateTearOff();

/// @nodoc
mixin _$FriendsState {
  KtList<FriendRequest> get friendRequests =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FriendsStateCopyWith<FriendsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsStateCopyWith<$Res> {
  factory $FriendsStateCopyWith(
          FriendsState value, $Res Function(FriendsState) then) =
      _$FriendsStateCopyWithImpl<$Res>;
  $Res call({KtList<FriendRequest> friendRequests});
}

/// @nodoc
class _$FriendsStateCopyWithImpl<$Res> implements $FriendsStateCopyWith<$Res> {
  _$FriendsStateCopyWithImpl(this._value, this._then);

  final FriendsState _value;
  // ignore: unused_field
  final $Res Function(FriendsState) _then;

  @override
  $Res call({
    Object? friendRequests = freezed,
  }) {
    return _then(_value.copyWith(
      friendRequests: friendRequests == freezed
          ? _value.friendRequests
          : friendRequests // ignore: cast_nullable_to_non_nullable
              as KtList<FriendRequest>,
    ));
  }
}

/// @nodoc
abstract class _$FriendsStateCopyWith<$Res>
    implements $FriendsStateCopyWith<$Res> {
  factory _$FriendsStateCopyWith(
          _FriendsState value, $Res Function(_FriendsState) then) =
      __$FriendsStateCopyWithImpl<$Res>;
  @override
  $Res call({KtList<FriendRequest> friendRequests});
}

/// @nodoc
class __$FriendsStateCopyWithImpl<$Res> extends _$FriendsStateCopyWithImpl<$Res>
    implements _$FriendsStateCopyWith<$Res> {
  __$FriendsStateCopyWithImpl(
      _FriendsState _value, $Res Function(_FriendsState) _then)
      : super(_value, (v) => _then(v as _FriendsState));

  @override
  _FriendsState get _value => super._value as _FriendsState;

  @override
  $Res call({
    Object? friendRequests = freezed,
  }) {
    return _then(_FriendsState(
      friendRequests: friendRequests == freezed
          ? _value.friendRequests
          : friendRequests // ignore: cast_nullable_to_non_nullable
              as KtList<FriendRequest>,
    ));
  }
}

/// @nodoc

class _$_FriendsState implements _FriendsState {
  const _$_FriendsState({required this.friendRequests});

  @override
  final KtList<FriendRequest> friendRequests;

  @override
  String toString() {
    return 'FriendsState(friendRequests: $friendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FriendsState &&
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
  _$FriendsStateCopyWith<_FriendsState> get copyWith =>
      __$FriendsStateCopyWithImpl<_FriendsState>(this, _$identity);
}

abstract class _FriendsState implements FriendsState {
  const factory _FriendsState({required KtList<FriendRequest> friendRequests}) =
      _$_FriendsState;

  @override
  KtList<FriendRequest> get friendRequests =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FriendsStateCopyWith<_FriendsState> get copyWith =>
      throw _privateConstructorUsedError;
}
