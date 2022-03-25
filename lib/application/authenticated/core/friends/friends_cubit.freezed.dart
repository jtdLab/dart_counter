// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'friends_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FriendsStateTearOff {
  const _$FriendsStateTearOff();

  FriendsLoadInProgress loadInProgress() {
    return const FriendsLoadInProgress();
  }

  FriendsLoadSuccess loadSuccess(
      {required KtList<Friend> friends,
      required KtList<FriendRequest> receivedFriendRequests,
      required KtList<FriendRequest> sentFriendRequests}) {
    return FriendsLoadSuccess(
      friends: friends,
      receivedFriendRequests: receivedFriendRequests,
      sentFriendRequests: sentFriendRequests,
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
    required TResult Function() loadInProgress,
    required TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)
        loadSuccess,
    required TResult Function(FriendFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        loadSuccess,
    TResult Function(FriendFailure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FriendsLoadInProgress value)? loadInProgress,
    TResult Function(FriendsLoadSuccess value)? loadSuccess,
    TResult Function(FriendsLoadFailure value)? loadFailure,
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
}

/// @nodoc

class _$FriendsLoadInProgress extends FriendsLoadInProgress {
  const _$FriendsLoadInProgress() : super._();

  @override
  String toString() {
    return 'FriendsState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FriendsLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)
        loadSuccess,
    required TResult Function(FriendFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        loadSuccess,
    TResult Function(FriendFailure failure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        loadSuccess,
    TResult Function(FriendFailure failure)? loadFailure,
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
    required TResult Function(FriendsLoadInProgress value) loadInProgress,
    required TResult Function(FriendsLoadSuccess value) loadSuccess,
    required TResult Function(FriendsLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FriendsLoadInProgress value)? loadInProgress,
    TResult Function(FriendsLoadSuccess value)? loadSuccess,
    TResult Function(FriendsLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
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

abstract class FriendsLoadInProgress extends FriendsState {
  const factory FriendsLoadInProgress() = _$FriendsLoadInProgress;
  const FriendsLoadInProgress._() : super._();
}

/// @nodoc
abstract class $FriendsLoadSuccessCopyWith<$Res> {
  factory $FriendsLoadSuccessCopyWith(
          FriendsLoadSuccess value, $Res Function(FriendsLoadSuccess) then) =
      _$FriendsLoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {KtList<Friend> friends,
      KtList<FriendRequest> receivedFriendRequests,
      KtList<FriendRequest> sentFriendRequests});
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
    Object? friends = freezed,
    Object? receivedFriendRequests = freezed,
    Object? sentFriendRequests = freezed,
  }) {
    return _then(FriendsLoadSuccess(
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
}

/// @nodoc

class _$FriendsLoadSuccess extends FriendsLoadSuccess {
  const _$FriendsLoadSuccess(
      {required this.friends,
      required this.receivedFriendRequests,
      required this.sentFriendRequests})
      : super._();

  @override
  final KtList<Friend> friends;
  @override
  final KtList<FriendRequest> receivedFriendRequests;
  @override
  final KtList<FriendRequest> sentFriendRequests;

  @override
  String toString() {
    return 'FriendsState.loadSuccess(friends: $friends, receivedFriendRequests: $receivedFriendRequests, sentFriendRequests: $sentFriendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FriendsLoadSuccess &&
            const DeepCollectionEquality().equals(other.friends, friends) &&
            const DeepCollectionEquality()
                .equals(other.receivedFriendRequests, receivedFriendRequests) &&
            const DeepCollectionEquality()
                .equals(other.sentFriendRequests, sentFriendRequests));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(friends),
      const DeepCollectionEquality().hash(receivedFriendRequests),
      const DeepCollectionEquality().hash(sentFriendRequests));

  @JsonKey(ignore: true)
  @override
  $FriendsLoadSuccessCopyWith<FriendsLoadSuccess> get copyWith =>
      _$FriendsLoadSuccessCopyWithImpl<FriendsLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)
        loadSuccess,
    required TResult Function(FriendFailure failure) loadFailure,
  }) {
    return loadSuccess(friends, receivedFriendRequests, sentFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        loadSuccess,
    TResult Function(FriendFailure failure)? loadFailure,
  }) {
    return loadSuccess?.call(
        friends, receivedFriendRequests, sentFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        loadSuccess,
    TResult Function(FriendFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(friends, receivedFriendRequests, sentFriendRequests);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FriendsLoadInProgress value)? loadInProgress,
    TResult Function(FriendsLoadSuccess value)? loadSuccess,
    TResult Function(FriendsLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
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

abstract class FriendsLoadSuccess extends FriendsState {
  const factory FriendsLoadSuccess(
          {required KtList<Friend> friends,
          required KtList<FriendRequest> receivedFriendRequests,
          required KtList<FriendRequest> sentFriendRequests}) =
      _$FriendsLoadSuccess;
  const FriendsLoadSuccess._() : super._();

  KtList<Friend> get friends;
  KtList<FriendRequest> get receivedFriendRequests;
  KtList<FriendRequest> get sentFriendRequests;
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

class _$FriendsLoadFailure extends FriendsLoadFailure {
  const _$FriendsLoadFailure({required this.failure}) : super._();

  @override
  final FriendFailure failure;

  @override
  String toString() {
    return 'FriendsState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FriendsLoadFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  $FriendsLoadFailureCopyWith<FriendsLoadFailure> get copyWith =>
      _$FriendsLoadFailureCopyWithImpl<FriendsLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)
        loadSuccess,
    required TResult Function(FriendFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        loadSuccess,
    TResult Function(FriendFailure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FriendsLoadInProgress value)? loadInProgress,
    TResult Function(FriendsLoadSuccess value)? loadSuccess,
    TResult Function(FriendsLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
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

abstract class FriendsLoadFailure extends FriendsState {
  const factory FriendsLoadFailure({required FriendFailure failure}) =
      _$FriendsLoadFailure;
  const FriendsLoadFailure._() : super._();

  FriendFailure get failure;
  @JsonKey(ignore: true)
  $FriendsLoadFailureCopyWith<FriendsLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
