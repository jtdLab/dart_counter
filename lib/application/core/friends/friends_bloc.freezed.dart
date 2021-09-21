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

  ReceivedFriendRequestsReceived receivedFriendRequestsReceived(
      {required KtList<FriendRequest> friendRequests}) {
    return ReceivedFriendRequestsReceived(
      friendRequests: friendRequests,
    );
  }

  SentFriendRequestsReceived sentFriendRequestsReceived(
      {required KtList<FriendRequest> friendRequests}) {
    return SentFriendRequestsReceived(
      friendRequests: friendRequests,
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
        receivedFriendRequestsReceived,
    required TResult Function(KtList<FriendRequest> friendRequests)
        sentFriendRequestsReceived,
    required TResult Function(FriendFailure failure) failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<FriendRequest> friendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> friendRequests)?
        sentFriendRequestsReceived,
    TResult Function(FriendFailure failure)? failureReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(ReceivedFriendRequestsReceived value)
        receivedFriendRequestsReceived,
    required TResult Function(SentFriendRequestsReceived value)
        sentFriendRequestsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
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
        receivedFriendRequestsReceived,
    required TResult Function(KtList<FriendRequest> friendRequests)
        sentFriendRequestsReceived,
    required TResult Function(FriendFailure failure) failureReceived,
  }) {
    return watchStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<FriendRequest> friendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> friendRequests)?
        sentFriendRequestsReceived,
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
    required TResult Function(ReceivedFriendRequestsReceived value)
        receivedFriendRequestsReceived,
    required TResult Function(SentFriendRequestsReceived value)
        sentFriendRequestsReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(ReceivedFriendRequestsReceived value)?
        receivedFriendRequestsReceived,
    TResult Function(SentFriendRequestsReceived value)?
        sentFriendRequestsReceived,
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
abstract class $ReceivedFriendRequestsReceivedCopyWith<$Res> {
  factory $ReceivedFriendRequestsReceivedCopyWith(
          ReceivedFriendRequestsReceived value,
          $Res Function(ReceivedFriendRequestsReceived) then) =
      _$ReceivedFriendRequestsReceivedCopyWithImpl<$Res>;
  $Res call({KtList<FriendRequest> friendRequests});
}

/// @nodoc
class _$ReceivedFriendRequestsReceivedCopyWithImpl<$Res>
    extends _$FriendsEventCopyWithImpl<$Res>
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
    Object? friendRequests = freezed,
  }) {
    return _then(ReceivedFriendRequestsReceived(
      friendRequests: friendRequests == freezed
          ? _value.friendRequests
          : friendRequests // ignore: cast_nullable_to_non_nullable
              as KtList<FriendRequest>,
    ));
  }
}

/// @nodoc

class _$ReceivedFriendRequestsReceived
    implements ReceivedFriendRequestsReceived {
  const _$ReceivedFriendRequestsReceived({required this.friendRequests});

  @override
  final KtList<FriendRequest> friendRequests;

  @override
  String toString() {
    return 'FriendsEvent.receivedFriendRequestsReceived(friendRequests: $friendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReceivedFriendRequestsReceived &&
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
  $ReceivedFriendRequestsReceivedCopyWith<ReceivedFriendRequestsReceived>
      get copyWith => _$ReceivedFriendRequestsReceivedCopyWithImpl<
          ReceivedFriendRequestsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(KtList<FriendRequest> friendRequests)
        receivedFriendRequestsReceived,
    required TResult Function(KtList<FriendRequest> friendRequests)
        sentFriendRequestsReceived,
    required TResult Function(FriendFailure failure) failureReceived,
  }) {
    return receivedFriendRequestsReceived(friendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<FriendRequest> friendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> friendRequests)?
        sentFriendRequestsReceived,
    TResult Function(FriendFailure failure)? failureReceived,
    required TResult orElse(),
  }) {
    if (receivedFriendRequestsReceived != null) {
      return receivedFriendRequestsReceived(friendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
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

abstract class ReceivedFriendRequestsReceived implements FriendsEvent {
  const factory ReceivedFriendRequestsReceived(
          {required KtList<FriendRequest> friendRequests}) =
      _$ReceivedFriendRequestsReceived;

  KtList<FriendRequest> get friendRequests =>
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
  $Res call({KtList<FriendRequest> friendRequests});
}

/// @nodoc
class _$SentFriendRequestsReceivedCopyWithImpl<$Res>
    extends _$FriendsEventCopyWithImpl<$Res>
    implements $SentFriendRequestsReceivedCopyWith<$Res> {
  _$SentFriendRequestsReceivedCopyWithImpl(SentFriendRequestsReceived _value,
      $Res Function(SentFriendRequestsReceived) _then)
      : super(_value, (v) => _then(v as SentFriendRequestsReceived));

  @override
  SentFriendRequestsReceived get _value =>
      super._value as SentFriendRequestsReceived;

  @override
  $Res call({
    Object? friendRequests = freezed,
  }) {
    return _then(SentFriendRequestsReceived(
      friendRequests: friendRequests == freezed
          ? _value.friendRequests
          : friendRequests // ignore: cast_nullable_to_non_nullable
              as KtList<FriendRequest>,
    ));
  }
}

/// @nodoc

class _$SentFriendRequestsReceived implements SentFriendRequestsReceived {
  const _$SentFriendRequestsReceived({required this.friendRequests});

  @override
  final KtList<FriendRequest> friendRequests;

  @override
  String toString() {
    return 'FriendsEvent.sentFriendRequestsReceived(friendRequests: $friendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SentFriendRequestsReceived &&
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
  $SentFriendRequestsReceivedCopyWith<SentFriendRequestsReceived>
      get copyWith =>
          _$SentFriendRequestsReceivedCopyWithImpl<SentFriendRequestsReceived>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(KtList<FriendRequest> friendRequests)
        receivedFriendRequestsReceived,
    required TResult Function(KtList<FriendRequest> friendRequests)
        sentFriendRequestsReceived,
    required TResult Function(FriendFailure failure) failureReceived,
  }) {
    return sentFriendRequestsReceived(friendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<FriendRequest> friendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> friendRequests)?
        sentFriendRequestsReceived,
    TResult Function(FriendFailure failure)? failureReceived,
    required TResult orElse(),
  }) {
    if (sentFriendRequestsReceived != null) {
      return sentFriendRequestsReceived(friendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
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

abstract class SentFriendRequestsReceived implements FriendsEvent {
  const factory SentFriendRequestsReceived(
          {required KtList<FriendRequest> friendRequests}) =
      _$SentFriendRequestsReceived;

  KtList<FriendRequest> get friendRequests =>
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
        receivedFriendRequestsReceived,
    required TResult Function(KtList<FriendRequest> friendRequests)
        sentFriendRequestsReceived,
    required TResult Function(FriendFailure failure) failureReceived,
  }) {
    return failureReceived(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(KtList<FriendRequest> friendRequests)?
        receivedFriendRequestsReceived,
    TResult Function(KtList<FriendRequest> friendRequests)?
        sentFriendRequestsReceived,
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
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

  FriendsLoadInProgress loadInProgress(
      {KtList<FriendRequest>? receivedFriendRequests,
      KtList<FriendRequest>? sentFriendRequests}) {
    return FriendsLoadInProgress(
      receivedFriendRequests: receivedFriendRequests,
      sentFriendRequests: sentFriendRequests,
    );
  }

  FriendsLoadSuccess loadSuccess(
      {required KtList<FriendRequest> receivedFriendRequests,
      required KtList<FriendRequest> sentFriendRequests,
      required int unreadFriendRequests}) {
    return FriendsLoadSuccess(
      receivedFriendRequests: receivedFriendRequests,
      sentFriendRequests: sentFriendRequests,
      unreadFriendRequests: unreadFriendRequests,
    );
  }

  FriendsLoadFailure loadFailure({required FriendFailure failure}) {
    return FriendsLoadFailure(
      failure: failure,
    );
  }
}

/// @nodoc
const $FriendsState = _$FriendsStateTearOff();

/// @nodoc
mixin _$FriendsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<FriendRequest>? receivedFriendRequests,
            KtList<FriendRequest>? sentFriendRequests)
        loadInProgress,
    required TResult Function(KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests, int unreadFriendRequests)
        loadSuccess,
    required TResult Function(FriendFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<FriendRequest>? receivedFriendRequests,
            KtList<FriendRequest>? sentFriendRequests)?
        loadInProgress,
    TResult Function(KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests, int unreadFriendRequests)?
        loadSuccess,
    TResult Function(FriendFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FriendsLoadInProgress value) loadInProgress,
    required TResult Function(FriendsLoadSuccess value) loadSuccess,
    required TResult Function(FriendsLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendsLoadInProgress value)? loadInProgress,
    TResult Function(FriendsLoadSuccess value)? loadSuccess,
    TResult Function(FriendsLoadFailure value)? loadFailure,
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
abstract class $FriendsLoadInProgressCopyWith<$Res> {
  factory $FriendsLoadInProgressCopyWith(FriendsLoadInProgress value,
          $Res Function(FriendsLoadInProgress) then) =
      _$FriendsLoadInProgressCopyWithImpl<$Res>;
  $Res call(
      {KtList<FriendRequest>? receivedFriendRequests,
      KtList<FriendRequest>? sentFriendRequests});
}

/// @nodoc
class _$FriendsLoadInProgressCopyWithImpl<$Res>
    extends _$FriendsStateCopyWithImpl<$Res>
    implements $FriendsLoadInProgressCopyWith<$Res> {
  _$FriendsLoadInProgressCopyWithImpl(
      FriendsLoadInProgress _value, $Res Function(FriendsLoadInProgress) _then)
      : super(_value, (v) => _then(v as FriendsLoadInProgress));

  @override
  FriendsLoadInProgress get _value => super._value as FriendsLoadInProgress;

  @override
  $Res call({
    Object? receivedFriendRequests = freezed,
    Object? sentFriendRequests = freezed,
  }) {
    return _then(FriendsLoadInProgress(
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
}

/// @nodoc

class _$FriendsLoadInProgress implements FriendsLoadInProgress {
  const _$FriendsLoadInProgress(
      {this.receivedFriendRequests, this.sentFriendRequests});

  @override
  final KtList<FriendRequest>? receivedFriendRequests;
  @override
  final KtList<FriendRequest>? sentFriendRequests;

  @override
  String toString() {
    return 'FriendsState.loadInProgress(receivedFriendRequests: $receivedFriendRequests, sentFriendRequests: $sentFriendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FriendsLoadInProgress &&
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
      const DeepCollectionEquality().hash(receivedFriendRequests) ^
      const DeepCollectionEquality().hash(sentFriendRequests);

  @JsonKey(ignore: true)
  @override
  $FriendsLoadInProgressCopyWith<FriendsLoadInProgress> get copyWith =>
      _$FriendsLoadInProgressCopyWithImpl<FriendsLoadInProgress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<FriendRequest>? receivedFriendRequests,
            KtList<FriendRequest>? sentFriendRequests)
        loadInProgress,
    required TResult Function(KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests, int unreadFriendRequests)
        loadSuccess,
    required TResult Function(FriendFailure failure) loadFailure,
  }) {
    return loadInProgress(receivedFriendRequests, sentFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<FriendRequest>? receivedFriendRequests,
            KtList<FriendRequest>? sentFriendRequests)?
        loadInProgress,
    TResult Function(KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests, int unreadFriendRequests)?
        loadSuccess,
    TResult Function(FriendFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(receivedFriendRequests, sentFriendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FriendsLoadInProgress value) loadInProgress,
    required TResult Function(FriendsLoadSuccess value) loadSuccess,
    required TResult Function(FriendsLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendsLoadInProgress value)? loadInProgress,
    TResult Function(FriendsLoadSuccess value)? loadSuccess,
    TResult Function(FriendsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class FriendsLoadInProgress implements FriendsState {
  const factory FriendsLoadInProgress(
      {KtList<FriendRequest>? receivedFriendRequests,
      KtList<FriendRequest>? sentFriendRequests}) = _$FriendsLoadInProgress;

  KtList<FriendRequest>? get receivedFriendRequests =>
      throw _privateConstructorUsedError;
  KtList<FriendRequest>? get sentFriendRequests =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendsLoadInProgressCopyWith<FriendsLoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsLoadSuccessCopyWith<$Res> {
  factory $FriendsLoadSuccessCopyWith(
          FriendsLoadSuccess value, $Res Function(FriendsLoadSuccess) then) =
      _$FriendsLoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {KtList<FriendRequest> receivedFriendRequests,
      KtList<FriendRequest> sentFriendRequests,
      int unreadFriendRequests});
}

/// @nodoc
class _$FriendsLoadSuccessCopyWithImpl<$Res>
    extends _$FriendsStateCopyWithImpl<$Res>
    implements $FriendsLoadSuccessCopyWith<$Res> {
  _$FriendsLoadSuccessCopyWithImpl(
      FriendsLoadSuccess _value, $Res Function(FriendsLoadSuccess) _then)
      : super(_value, (v) => _then(v as FriendsLoadSuccess));

  @override
  FriendsLoadSuccess get _value => super._value as FriendsLoadSuccess;

  @override
  $Res call({
    Object? receivedFriendRequests = freezed,
    Object? sentFriendRequests = freezed,
    Object? unreadFriendRequests = freezed,
  }) {
    return _then(FriendsLoadSuccess(
      receivedFriendRequests: receivedFriendRequests == freezed
          ? _value.receivedFriendRequests
          : receivedFriendRequests // ignore: cast_nullable_to_non_nullable
              as KtList<FriendRequest>,
      sentFriendRequests: sentFriendRequests == freezed
          ? _value.sentFriendRequests
          : sentFriendRequests // ignore: cast_nullable_to_non_nullable
              as KtList<FriendRequest>,
      unreadFriendRequests: unreadFriendRequests == freezed
          ? _value.unreadFriendRequests
          : unreadFriendRequests // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FriendsLoadSuccess implements FriendsLoadSuccess {
  const _$FriendsLoadSuccess(
      {required this.receivedFriendRequests,
      required this.sentFriendRequests,
      required this.unreadFriendRequests});

  @override
  final KtList<FriendRequest> receivedFriendRequests;
  @override
  final KtList<FriendRequest> sentFriendRequests;
  @override
  final int unreadFriendRequests;

  @override
  String toString() {
    return 'FriendsState.loadSuccess(receivedFriendRequests: $receivedFriendRequests, sentFriendRequests: $sentFriendRequests, unreadFriendRequests: $unreadFriendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FriendsLoadSuccess &&
            (identical(other.receivedFriendRequests, receivedFriendRequests) ||
                const DeepCollectionEquality().equals(
                    other.receivedFriendRequests, receivedFriendRequests)) &&
            (identical(other.sentFriendRequests, sentFriendRequests) ||
                const DeepCollectionEquality()
                    .equals(other.sentFriendRequests, sentFriendRequests)) &&
            (identical(other.unreadFriendRequests, unreadFriendRequests) ||
                const DeepCollectionEquality()
                    .equals(other.unreadFriendRequests, unreadFriendRequests)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(receivedFriendRequests) ^
      const DeepCollectionEquality().hash(sentFriendRequests) ^
      const DeepCollectionEquality().hash(unreadFriendRequests);

  @JsonKey(ignore: true)
  @override
  $FriendsLoadSuccessCopyWith<FriendsLoadSuccess> get copyWith =>
      _$FriendsLoadSuccessCopyWithImpl<FriendsLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<FriendRequest>? receivedFriendRequests,
            KtList<FriendRequest>? sentFriendRequests)
        loadInProgress,
    required TResult Function(KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests, int unreadFriendRequests)
        loadSuccess,
    required TResult Function(FriendFailure failure) loadFailure,
  }) {
    return loadSuccess(
        receivedFriendRequests, sentFriendRequests, unreadFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<FriendRequest>? receivedFriendRequests,
            KtList<FriendRequest>? sentFriendRequests)?
        loadInProgress,
    TResult Function(KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests, int unreadFriendRequests)?
        loadSuccess,
    TResult Function(FriendFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(
          receivedFriendRequests, sentFriendRequests, unreadFriendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FriendsLoadInProgress value) loadInProgress,
    required TResult Function(FriendsLoadSuccess value) loadSuccess,
    required TResult Function(FriendsLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendsLoadInProgress value)? loadInProgress,
    TResult Function(FriendsLoadSuccess value)? loadSuccess,
    TResult Function(FriendsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class FriendsLoadSuccess implements FriendsState {
  const factory FriendsLoadSuccess(
      {required KtList<FriendRequest> receivedFriendRequests,
      required KtList<FriendRequest> sentFriendRequests,
      required int unreadFriendRequests}) = _$FriendsLoadSuccess;

  KtList<FriendRequest> get receivedFriendRequests =>
      throw _privateConstructorUsedError;
  KtList<FriendRequest> get sentFriendRequests =>
      throw _privateConstructorUsedError;
  int get unreadFriendRequests => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendsLoadSuccessCopyWith<FriendsLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsLoadFailureCopyWith<$Res> {
  factory $FriendsLoadFailureCopyWith(
          FriendsLoadFailure value, $Res Function(FriendsLoadFailure) then) =
      _$FriendsLoadFailureCopyWithImpl<$Res>;
  $Res call({FriendFailure failure});

  $FriendFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$FriendsLoadFailureCopyWithImpl<$Res>
    extends _$FriendsStateCopyWithImpl<$Res>
    implements $FriendsLoadFailureCopyWith<$Res> {
  _$FriendsLoadFailureCopyWithImpl(
      FriendsLoadFailure _value, $Res Function(FriendsLoadFailure) _then)
      : super(_value, (v) => _then(v as FriendsLoadFailure));

  @override
  FriendsLoadFailure get _value => super._value as FriendsLoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(FriendsLoadFailure(
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

class _$FriendsLoadFailure implements FriendsLoadFailure {
  const _$FriendsLoadFailure({required this.failure});

  @override
  final FriendFailure failure;

  @override
  String toString() {
    return 'FriendsState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FriendsLoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $FriendsLoadFailureCopyWith<FriendsLoadFailure> get copyWith =>
      _$FriendsLoadFailureCopyWithImpl<FriendsLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<FriendRequest>? receivedFriendRequests,
            KtList<FriendRequest>? sentFriendRequests)
        loadInProgress,
    required TResult Function(KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests, int unreadFriendRequests)
        loadSuccess,
    required TResult Function(FriendFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<FriendRequest>? receivedFriendRequests,
            KtList<FriendRequest>? sentFriendRequests)?
        loadInProgress,
    TResult Function(KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests, int unreadFriendRequests)?
        loadSuccess,
    TResult Function(FriendFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FriendsLoadInProgress value) loadInProgress,
    required TResult Function(FriendsLoadSuccess value) loadSuccess,
    required TResult Function(FriendsLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendsLoadInProgress value)? loadInProgress,
    TResult Function(FriendsLoadSuccess value)? loadSuccess,
    TResult Function(FriendsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class FriendsLoadFailure implements FriendsState {
  const factory FriendsLoadFailure({required FriendFailure failure}) =
      _$FriendsLoadFailure;

  FriendFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendsLoadFailureCopyWith<FriendsLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
