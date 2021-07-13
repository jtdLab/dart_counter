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

  UnreadFriendRequestsReceived unreadFriendRequestsReceived(
      {required int unreadFriendRequests}) {
    return UnreadFriendRequestsReceived(
      unreadFriendRequests: unreadFriendRequests,
    );
  }

  FailureReceived failureReceived({required FriendFailure failure}) {
    return FailureReceived(
      failure: failure,
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
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(FriendFailure failure) failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<FriendRequest> friendRequests)?
        friendRequestsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(FriendFailure failure)? failureReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
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
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(FriendFailure failure) failureReceived,
  }) {
    return watchStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<FriendRequest> friendRequests)?
        friendRequestsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(FriendFailure failure)? failureReceived,
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
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
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
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(FriendFailure failure) failureReceived,
  }) {
    return friendRequestsReceived(friendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<FriendRequest> friendRequests)?
        friendRequestsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(FriendFailure failure)? failureReceived,
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
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return friendRequestsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
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
abstract class $UnreadFriendRequestsReceivedCopyWith<$Res> {
  factory $UnreadFriendRequestsReceivedCopyWith(
          UnreadFriendRequestsReceived value,
          $Res Function(UnreadFriendRequestsReceived) then) =
      _$UnreadFriendRequestsReceivedCopyWithImpl<$Res>;
  $Res call({int unreadFriendRequests});
}

/// @nodoc
class _$UnreadFriendRequestsReceivedCopyWithImpl<$Res>
    extends _$FriendsEventCopyWithImpl<$Res>
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
    return 'FriendsEvent.unreadFriendRequestsReceived(unreadFriendRequests: $unreadFriendRequests)';
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
    required TResult Function(KtList<FriendRequest> friendRequests)
        friendRequestsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(FriendFailure failure) failureReceived,
  }) {
    return unreadFriendRequestsReceived(unreadFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<FriendRequest> friendRequests)?
        friendRequestsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(FriendFailure failure)? failureReceived,
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
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return unreadFriendRequestsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (unreadFriendRequestsReceived != null) {
      return unreadFriendRequestsReceived(this);
    }
    return orElse();
  }
}

abstract class UnreadFriendRequestsReceived implements FriendsEvent {
  const factory UnreadFriendRequestsReceived(
      {required int unreadFriendRequests}) = _$UnreadFriendRequestsReceived;

  int get unreadFriendRequests => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnreadFriendRequestsReceivedCopyWith<UnreadFriendRequestsReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureReceivedCopyWith<$Res> {
  factory $FailureReceivedCopyWith(
          FailureReceived value, $Res Function(FailureReceived) then) =
      _$FailureReceivedCopyWithImpl<$Res>;
  $Res call({FriendFailure failure});

  $FriendFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$FailureReceivedCopyWithImpl<$Res>
    extends _$FriendsEventCopyWithImpl<$Res>
    implements $FailureReceivedCopyWith<$Res> {
  _$FailureReceivedCopyWithImpl(
      FailureReceived _value, $Res Function(FailureReceived) _then)
      : super(_value, (v) => _then(v as FailureReceived));

  @override
  FailureReceived get _value => super._value as FailureReceived;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(FailureReceived(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FriendFailure,
    ));
  }

  @override
  $FriendFailureCopyWith<$Res> get failure {
    return $FriendFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FailureReceived implements FailureReceived {
  const _$FailureReceived({required this.failure});

  @override
  final FriendFailure failure;

  @override
  String toString() {
    return 'FriendsEvent.failureReceived(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FailureReceived &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $FailureReceivedCopyWith<FailureReceived> get copyWith =>
      _$FailureReceivedCopyWithImpl<FailureReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(KtList<FriendRequest> friendRequests)
        friendRequestsReceived,
    required TResult Function(int unreadFriendRequests)
        unreadFriendRequestsReceived,
    required TResult Function(FriendFailure failure) failureReceived,
  }) {
    return failureReceived(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<FriendRequest> friendRequests)?
        friendRequestsReceived,
    TResult Function(int unreadFriendRequests)? unreadFriendRequestsReceived,
    TResult Function(FriendFailure failure)? failureReceived,
    required TResult orElse(),
  }) {
    if (failureReceived != null) {
      return failureReceived(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(UnreadFriendRequestsReceived value)
        unreadFriendRequestsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return failureReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(UnreadFriendRequestsReceived value)?
        unreadFriendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (failureReceived != null) {
      return failureReceived(this);
    }
    return orElse();
  }
}

abstract class FailureReceived implements FriendsEvent {
  const factory FailureReceived({required FriendFailure failure}) =
      _$FailureReceived;

  FriendFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureReceivedCopyWith<FailureReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FriendsStateTearOff {
  const _$FriendsStateTearOff();

  Loading loading(
      {KtList<FriendRequest>? friendRequests, int? unreadFriendRequests}) {
    return Loading(
      friendRequests: friendRequests,
      unreadFriendRequests: unreadFriendRequests,
    );
  }

  Success success(
      {required KtList<FriendRequest> friendRequests,
      required int unreadFriendRequests}) {
    return Success(
      friendRequests: friendRequests,
      unreadFriendRequests: unreadFriendRequests,
    );
  }
}

/// @nodoc
const $FriendsState = _$FriendsStateTearOff();

/// @nodoc
mixin _$FriendsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KtList<FriendRequest>? friendRequests, int? unreadFriendRequests)
        loading,
    required TResult Function(
            KtList<FriendRequest> friendRequests, int unreadFriendRequests)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KtList<FriendRequest>? friendRequests, int? unreadFriendRequests)?
        loading,
    TResult Function(
            KtList<FriendRequest> friendRequests, int unreadFriendRequests)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsStateCopyWith<$Res> {
  factory $FriendsStateCopyWith(
          FriendsState value, $Res Function(FriendsState) then) =
      _$FriendsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FriendsStateCopyWithImpl<$Res> implements $FriendsStateCopyWith<$Res> {
  _$FriendsStateCopyWithImpl(this._value, this._then);

  final FriendsState _value;
  // ignore: unused_field
  final $Res Function(FriendsState) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  $Res call({KtList<FriendRequest>? friendRequests, int? unreadFriendRequests});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$FriendsStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;

  @override
  $Res call({
    Object? friendRequests = freezed,
    Object? unreadFriendRequests = freezed,
  }) {
    return _then(Loading(
      friendRequests: friendRequests == freezed
          ? _value.friendRequests
          : friendRequests // ignore: cast_nullable_to_non_nullable
              as KtList<FriendRequest>?,
      unreadFriendRequests: unreadFriendRequests == freezed
          ? _value.unreadFriendRequests
          : unreadFriendRequests // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading({this.friendRequests, this.unreadFriendRequests});

  @override
  final KtList<FriendRequest>? friendRequests;
  @override
  final int? unreadFriendRequests;

  @override
  String toString() {
    return 'FriendsState.loading(friendRequests: $friendRequests, unreadFriendRequests: $unreadFriendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loading &&
            (identical(other.friendRequests, friendRequests) ||
                const DeepCollectionEquality()
                    .equals(other.friendRequests, friendRequests)) &&
            (identical(other.unreadFriendRequests, unreadFriendRequests) ||
                const DeepCollectionEquality()
                    .equals(other.unreadFriendRequests, unreadFriendRequests)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(friendRequests) ^
      const DeepCollectionEquality().hash(unreadFriendRequests);

  @JsonKey(ignore: true)
  @override
  $LoadingCopyWith<Loading> get copyWith =>
      _$LoadingCopyWithImpl<Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KtList<FriendRequest>? friendRequests, int? unreadFriendRequests)
        loading,
    required TResult Function(
            KtList<FriendRequest> friendRequests, int unreadFriendRequests)
        success,
  }) {
    return loading(friendRequests, unreadFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KtList<FriendRequest>? friendRequests, int? unreadFriendRequests)?
        loading,
    TResult Function(
            KtList<FriendRequest> friendRequests, int unreadFriendRequests)?
        success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(friendRequests, unreadFriendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements FriendsState {
  const factory Loading(
      {KtList<FriendRequest>? friendRequests,
      int? unreadFriendRequests}) = _$Loading;

  KtList<FriendRequest>? get friendRequests =>
      throw _privateConstructorUsedError;
  int? get unreadFriendRequests => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({KtList<FriendRequest> friendRequests, int unreadFriendRequests});
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res> extends _$FriendsStateCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object? friendRequests = freezed,
    Object? unreadFriendRequests = freezed,
  }) {
    return _then(Success(
      friendRequests: friendRequests == freezed
          ? _value.friendRequests
          : friendRequests // ignore: cast_nullable_to_non_nullable
              as KtList<FriendRequest>,
      unreadFriendRequests: unreadFriendRequests == freezed
          ? _value.unreadFriendRequests
          : unreadFriendRequests // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Success implements Success {
  const _$Success(
      {required this.friendRequests, required this.unreadFriendRequests});

  @override
  final KtList<FriendRequest> friendRequests;
  @override
  final int unreadFriendRequests;

  @override
  String toString() {
    return 'FriendsState.success(friendRequests: $friendRequests, unreadFriendRequests: $unreadFriendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success &&
            (identical(other.friendRequests, friendRequests) ||
                const DeepCollectionEquality()
                    .equals(other.friendRequests, friendRequests)) &&
            (identical(other.unreadFriendRequests, unreadFriendRequests) ||
                const DeepCollectionEquality()
                    .equals(other.unreadFriendRequests, unreadFriendRequests)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(friendRequests) ^
      const DeepCollectionEquality().hash(unreadFriendRequests);

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KtList<FriendRequest>? friendRequests, int? unreadFriendRequests)
        loading,
    required TResult Function(
            KtList<FriendRequest> friendRequests, int unreadFriendRequests)
        success,
  }) {
    return success(friendRequests, unreadFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KtList<FriendRequest>? friendRequests, int? unreadFriendRequests)?
        loading,
    TResult Function(
            KtList<FriendRequest> friendRequests, int unreadFriendRequests)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(friendRequests, unreadFriendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements FriendsState {
  const factory Success(
      {required KtList<FriendRequest> friendRequests,
      required int unreadFriendRequests}) = _$Success;

  KtList<FriendRequest> get friendRequests =>
      throw _privateConstructorUsedError;
  int get unreadFriendRequests => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessCopyWith<Success> get copyWith => throw _privateConstructorUsedError;
}
