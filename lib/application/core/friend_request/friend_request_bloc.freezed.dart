// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'friend_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FriendRequestEventTearOff {
  const _$FriendRequestEventTearOff();

  WatchStarted watchStarted() {
    return const WatchStarted();
  }

  FriendRequestsReceived friendRequestsReceived(
      {required KtList<FriendRequest> friendRequests}) {
    return FriendRequestsReceived(
      friendRequests: friendRequests,
    );
  }

  FailureReceived failureReceived() {
    return const FailureReceived();
  }
}

/// @nodoc
const $FriendRequestEvent = _$FriendRequestEventTearOff();

/// @nodoc
mixin _$FriendRequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(KtList<FriendRequest> friendRequests)
        friendRequestsReceived,
    required TResult Function() failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<FriendRequest> friendRequests)?
        friendRequestsReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestEventCopyWith<$Res> {
  factory $FriendRequestEventCopyWith(
          FriendRequestEvent value, $Res Function(FriendRequestEvent) then) =
      _$FriendRequestEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FriendRequestEventCopyWithImpl<$Res>
    implements $FriendRequestEventCopyWith<$Res> {
  _$FriendRequestEventCopyWithImpl(this._value, this._then);

  final FriendRequestEvent _value;
  // ignore: unused_field
  final $Res Function(FriendRequestEvent) _then;
}

/// @nodoc
abstract class $WatchStartedCopyWith<$Res> {
  factory $WatchStartedCopyWith(
          WatchStarted value, $Res Function(WatchStarted) then) =
      _$WatchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchStartedCopyWithImpl<$Res>
    extends _$FriendRequestEventCopyWithImpl<$Res>
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
    return 'FriendRequestEvent.watchStarted()';
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
    required TResult Function() failureReceived,
  }) {
    return watchStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<FriendRequest> friendRequests)?
        friendRequestsReceived,
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
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted(this);
    }
    return orElse();
  }
}

abstract class WatchStarted implements FriendRequestEvent {
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
    extends _$FriendRequestEventCopyWithImpl<$Res>
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
    return 'FriendRequestEvent.friendRequestsReceived(friendRequests: $friendRequests)';
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
    required TResult Function() failureReceived,
  }) {
    return friendRequestsReceived(friendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<FriendRequest> friendRequests)?
        friendRequestsReceived,
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
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return friendRequestsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (friendRequestsReceived != null) {
      return friendRequestsReceived(this);
    }
    return orElse();
  }
}

abstract class FriendRequestsReceived implements FriendRequestEvent {
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
abstract class $FailureReceivedCopyWith<$Res> {
  factory $FailureReceivedCopyWith(
          FailureReceived value, $Res Function(FailureReceived) then) =
      _$FailureReceivedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureReceivedCopyWithImpl<$Res>
    extends _$FriendRequestEventCopyWithImpl<$Res>
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
    return 'FriendRequestEvent.failureReceived()';
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
    required TResult Function(KtList<FriendRequest> friendRequests)
        friendRequestsReceived,
    required TResult Function() failureReceived,
  }) {
    return failureReceived();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<FriendRequest> friendRequests)?
        friendRequestsReceived,
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
    required TResult Function(FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return failureReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (failureReceived != null) {
      return failureReceived(this);
    }
    return orElse();
  }
}

abstract class FailureReceived implements FriendRequestEvent {
  const factory FailureReceived() = _$FailureReceived;
}

/// @nodoc
class _$FriendRequestStateTearOff {
  const _$FriendRequestStateTearOff();

  LoadInProgress loadInProgress() {
    return const LoadInProgress();
  }

  LoadSuccess loadSuccess({required KtList<FriendRequest> friendRequests}) {
    return LoadSuccess(
      friendRequests: friendRequests,
    );
  }

  LoadFailure loadFailure() {
    return const LoadFailure();
  }
}

/// @nodoc
const $FriendRequestState = _$FriendRequestStateTearOff();

/// @nodoc
mixin _$FriendRequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(KtList<FriendRequest> friendRequests) loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(KtList<FriendRequest> friendRequests)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestStateCopyWith<$Res> {
  factory $FriendRequestStateCopyWith(
          FriendRequestState value, $Res Function(FriendRequestState) then) =
      _$FriendRequestStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FriendRequestStateCopyWithImpl<$Res>
    implements $FriendRequestStateCopyWith<$Res> {
  _$FriendRequestStateCopyWithImpl(this._value, this._then);

  final FriendRequestState _value;
  // ignore: unused_field
  final $Res Function(FriendRequestState) _then;
}

/// @nodoc
abstract class $LoadInProgressCopyWith<$Res> {
  factory $LoadInProgressCopyWith(
          LoadInProgress value, $Res Function(LoadInProgress) then) =
      _$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadInProgressCopyWithImpl<$Res>
    extends _$FriendRequestStateCopyWithImpl<$Res>
    implements $LoadInProgressCopyWith<$Res> {
  _$LoadInProgressCopyWithImpl(
      LoadInProgress _value, $Res Function(LoadInProgress) _then)
      : super(_value, (v) => _then(v as LoadInProgress));

  @override
  LoadInProgress get _value => super._value as LoadInProgress;
}

/// @nodoc

class _$LoadInProgress implements LoadInProgress {
  const _$LoadInProgress();

  @override
  String toString() {
    return 'FriendRequestState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(KtList<FriendRequest> friendRequests) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(KtList<FriendRequest> friendRequests)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements FriendRequestState {
  const factory LoadInProgress() = _$LoadInProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<FriendRequest> friendRequests});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$FriendRequestStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object? friendRequests = freezed,
  }) {
    return _then(LoadSuccess(
      friendRequests: friendRequests == freezed
          ? _value.friendRequests
          : friendRequests // ignore: cast_nullable_to_non_nullable
              as KtList<FriendRequest>,
    ));
  }
}

/// @nodoc

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess({required this.friendRequests});

  @override
  final KtList<FriendRequest> friendRequests;

  @override
  String toString() {
    return 'FriendRequestState.loadSuccess(friendRequests: $friendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
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
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(KtList<FriendRequest> friendRequests) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(friendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(KtList<FriendRequest> friendRequests)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(friendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements FriendRequestState {
  const factory LoadSuccess({required KtList<FriendRequest> friendRequests}) =
      _$LoadSuccess;

  KtList<FriendRequest> get friendRequests =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res>
    extends _$FriendRequestStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;
}

/// @nodoc

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure();

  @override
  String toString() {
    return 'FriendRequestState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(KtList<FriendRequest> friendRequests) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(KtList<FriendRequest> friendRequests)? loadSuccess,
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
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements FriendRequestState {
  const factory LoadFailure() = _$LoadFailure;
}
