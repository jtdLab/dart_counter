// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  _Started started() {
    return const _Started();
  }

  _FriendSelected friendSelected({required Friend friend}) {
    return _FriendSelected(
      friend: friend,
    );
  }

  _FriendRequestAccepted friendRequestAccepted(
      {required FriendRequest friendRequest}) {
    return _FriendRequestAccepted(
      friendRequest: friendRequest,
    );
  }

  _FriendRequestDeclined friendRequestDeclined(
      {required FriendRequest friendRequest}) {
    return _FriendRequestDeclined(
      friendRequest: friendRequest,
    );
  }
}

/// @nodoc
const $FriendsEvent = _$FriendsEventTearOff();

/// @nodoc
mixin _$FriendsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Friend friend) friendSelected,
    required TResult Function(FriendRequest friendRequest)
        friendRequestAccepted,
    required TResult Function(FriendRequest friendRequest)
        friendRequestDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Friend friend)? friendSelected,
    TResult Function(FriendRequest friendRequest)? friendRequestAccepted,
    TResult Function(FriendRequest friendRequest)? friendRequestDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Friend friend)? friendSelected,
    TResult Function(FriendRequest friendRequest)? friendRequestAccepted,
    TResult Function(FriendRequest friendRequest)? friendRequestDeclined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FriendSelected value) friendSelected,
    required TResult Function(_FriendRequestAccepted value)
        friendRequestAccepted,
    required TResult Function(_FriendRequestDeclined value)
        friendRequestDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FriendSelected value)? friendSelected,
    TResult Function(_FriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(_FriendRequestDeclined value)? friendRequestDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FriendSelected value)? friendSelected,
    TResult Function(_FriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(_FriendRequestDeclined value)? friendRequestDeclined,
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
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$FriendsEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'FriendsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Friend friend) friendSelected,
    required TResult Function(FriendRequest friendRequest)
        friendRequestAccepted,
    required TResult Function(FriendRequest friendRequest)
        friendRequestDeclined,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Friend friend)? friendSelected,
    TResult Function(FriendRequest friendRequest)? friendRequestAccepted,
    TResult Function(FriendRequest friendRequest)? friendRequestDeclined,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Friend friend)? friendSelected,
    TResult Function(FriendRequest friendRequest)? friendRequestAccepted,
    TResult Function(FriendRequest friendRequest)? friendRequestDeclined,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FriendSelected value) friendSelected,
    required TResult Function(_FriendRequestAccepted value)
        friendRequestAccepted,
    required TResult Function(_FriendRequestDeclined value)
        friendRequestDeclined,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FriendSelected value)? friendSelected,
    TResult Function(_FriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(_FriendRequestDeclined value)? friendRequestDeclined,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FriendSelected value)? friendSelected,
    TResult Function(_FriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(_FriendRequestDeclined value)? friendRequestDeclined,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FriendsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$FriendSelectedCopyWith<$Res> {
  factory _$FriendSelectedCopyWith(
          _FriendSelected value, $Res Function(_FriendSelected) then) =
      __$FriendSelectedCopyWithImpl<$Res>;
  $Res call({Friend friend});

  $FriendCopyWith<$Res> get friend;
}

/// @nodoc
class __$FriendSelectedCopyWithImpl<$Res>
    extends _$FriendsEventCopyWithImpl<$Res>
    implements _$FriendSelectedCopyWith<$Res> {
  __$FriendSelectedCopyWithImpl(
      _FriendSelected _value, $Res Function(_FriendSelected) _then)
      : super(_value, (v) => _then(v as _FriendSelected));

  @override
  _FriendSelected get _value => super._value as _FriendSelected;

  @override
  $Res call({
    Object? friend = freezed,
  }) {
    return _then(_FriendSelected(
      friend: friend == freezed
          ? _value.friend
          : friend // ignore: cast_nullable_to_non_nullable
              as Friend,
    ));
  }

  @override
  $FriendCopyWith<$Res> get friend {
    return $FriendCopyWith<$Res>(_value.friend, (value) {
      return _then(_value.copyWith(friend: value));
    });
  }
}

/// @nodoc

class _$_FriendSelected implements _FriendSelected {
  const _$_FriendSelected({required this.friend});

  @override
  final Friend friend;

  @override
  String toString() {
    return 'FriendsEvent.friendSelected(friend: $friend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FriendSelected &&
            const DeepCollectionEquality().equals(other.friend, friend));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(friend));

  @JsonKey(ignore: true)
  @override
  _$FriendSelectedCopyWith<_FriendSelected> get copyWith =>
      __$FriendSelectedCopyWithImpl<_FriendSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Friend friend) friendSelected,
    required TResult Function(FriendRequest friendRequest)
        friendRequestAccepted,
    required TResult Function(FriendRequest friendRequest)
        friendRequestDeclined,
  }) {
    return friendSelected(friend);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Friend friend)? friendSelected,
    TResult Function(FriendRequest friendRequest)? friendRequestAccepted,
    TResult Function(FriendRequest friendRequest)? friendRequestDeclined,
  }) {
    return friendSelected?.call(friend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Friend friend)? friendSelected,
    TResult Function(FriendRequest friendRequest)? friendRequestAccepted,
    TResult Function(FriendRequest friendRequest)? friendRequestDeclined,
    required TResult orElse(),
  }) {
    if (friendSelected != null) {
      return friendSelected(friend);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FriendSelected value) friendSelected,
    required TResult Function(_FriendRequestAccepted value)
        friendRequestAccepted,
    required TResult Function(_FriendRequestDeclined value)
        friendRequestDeclined,
  }) {
    return friendSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FriendSelected value)? friendSelected,
    TResult Function(_FriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(_FriendRequestDeclined value)? friendRequestDeclined,
  }) {
    return friendSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FriendSelected value)? friendSelected,
    TResult Function(_FriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(_FriendRequestDeclined value)? friendRequestDeclined,
    required TResult orElse(),
  }) {
    if (friendSelected != null) {
      return friendSelected(this);
    }
    return orElse();
  }
}

abstract class _FriendSelected implements FriendsEvent {
  const factory _FriendSelected({required Friend friend}) = _$_FriendSelected;

  Friend get friend;
  @JsonKey(ignore: true)
  _$FriendSelectedCopyWith<_FriendSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FriendRequestAcceptedCopyWith<$Res> {
  factory _$FriendRequestAcceptedCopyWith(_FriendRequestAccepted value,
          $Res Function(_FriendRequestAccepted) then) =
      __$FriendRequestAcceptedCopyWithImpl<$Res>;
  $Res call({FriendRequest friendRequest});

  $FriendRequestCopyWith<$Res> get friendRequest;
}

/// @nodoc
class __$FriendRequestAcceptedCopyWithImpl<$Res>
    extends _$FriendsEventCopyWithImpl<$Res>
    implements _$FriendRequestAcceptedCopyWith<$Res> {
  __$FriendRequestAcceptedCopyWithImpl(_FriendRequestAccepted _value,
      $Res Function(_FriendRequestAccepted) _then)
      : super(_value, (v) => _then(v as _FriendRequestAccepted));

  @override
  _FriendRequestAccepted get _value => super._value as _FriendRequestAccepted;

  @override
  $Res call({
    Object? friendRequest = freezed,
  }) {
    return _then(_FriendRequestAccepted(
      friendRequest: friendRequest == freezed
          ? _value.friendRequest
          : friendRequest // ignore: cast_nullable_to_non_nullable
              as FriendRequest,
    ));
  }

  @override
  $FriendRequestCopyWith<$Res> get friendRequest {
    return $FriendRequestCopyWith<$Res>(_value.friendRequest, (value) {
      return _then(_value.copyWith(friendRequest: value));
    });
  }
}

/// @nodoc

class _$_FriendRequestAccepted implements _FriendRequestAccepted {
  const _$_FriendRequestAccepted({required this.friendRequest});

  @override
  final FriendRequest friendRequest;

  @override
  String toString() {
    return 'FriendsEvent.friendRequestAccepted(friendRequest: $friendRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FriendRequestAccepted &&
            const DeepCollectionEquality()
                .equals(other.friendRequest, friendRequest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(friendRequest));

  @JsonKey(ignore: true)
  @override
  _$FriendRequestAcceptedCopyWith<_FriendRequestAccepted> get copyWith =>
      __$FriendRequestAcceptedCopyWithImpl<_FriendRequestAccepted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Friend friend) friendSelected,
    required TResult Function(FriendRequest friendRequest)
        friendRequestAccepted,
    required TResult Function(FriendRequest friendRequest)
        friendRequestDeclined,
  }) {
    return friendRequestAccepted(friendRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Friend friend)? friendSelected,
    TResult Function(FriendRequest friendRequest)? friendRequestAccepted,
    TResult Function(FriendRequest friendRequest)? friendRequestDeclined,
  }) {
    return friendRequestAccepted?.call(friendRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Friend friend)? friendSelected,
    TResult Function(FriendRequest friendRequest)? friendRequestAccepted,
    TResult Function(FriendRequest friendRequest)? friendRequestDeclined,
    required TResult orElse(),
  }) {
    if (friendRequestAccepted != null) {
      return friendRequestAccepted(friendRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FriendSelected value) friendSelected,
    required TResult Function(_FriendRequestAccepted value)
        friendRequestAccepted,
    required TResult Function(_FriendRequestDeclined value)
        friendRequestDeclined,
  }) {
    return friendRequestAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FriendSelected value)? friendSelected,
    TResult Function(_FriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(_FriendRequestDeclined value)? friendRequestDeclined,
  }) {
    return friendRequestAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FriendSelected value)? friendSelected,
    TResult Function(_FriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(_FriendRequestDeclined value)? friendRequestDeclined,
    required TResult orElse(),
  }) {
    if (friendRequestAccepted != null) {
      return friendRequestAccepted(this);
    }
    return orElse();
  }
}

abstract class _FriendRequestAccepted implements FriendsEvent {
  const factory _FriendRequestAccepted({required FriendRequest friendRequest}) =
      _$_FriendRequestAccepted;

  FriendRequest get friendRequest;
  @JsonKey(ignore: true)
  _$FriendRequestAcceptedCopyWith<_FriendRequestAccepted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FriendRequestDeclinedCopyWith<$Res> {
  factory _$FriendRequestDeclinedCopyWith(_FriendRequestDeclined value,
          $Res Function(_FriendRequestDeclined) then) =
      __$FriendRequestDeclinedCopyWithImpl<$Res>;
  $Res call({FriendRequest friendRequest});

  $FriendRequestCopyWith<$Res> get friendRequest;
}

/// @nodoc
class __$FriendRequestDeclinedCopyWithImpl<$Res>
    extends _$FriendsEventCopyWithImpl<$Res>
    implements _$FriendRequestDeclinedCopyWith<$Res> {
  __$FriendRequestDeclinedCopyWithImpl(_FriendRequestDeclined _value,
      $Res Function(_FriendRequestDeclined) _then)
      : super(_value, (v) => _then(v as _FriendRequestDeclined));

  @override
  _FriendRequestDeclined get _value => super._value as _FriendRequestDeclined;

  @override
  $Res call({
    Object? friendRequest = freezed,
  }) {
    return _then(_FriendRequestDeclined(
      friendRequest: friendRequest == freezed
          ? _value.friendRequest
          : friendRequest // ignore: cast_nullable_to_non_nullable
              as FriendRequest,
    ));
  }

  @override
  $FriendRequestCopyWith<$Res> get friendRequest {
    return $FriendRequestCopyWith<$Res>(_value.friendRequest, (value) {
      return _then(_value.copyWith(friendRequest: value));
    });
  }
}

/// @nodoc

class _$_FriendRequestDeclined implements _FriendRequestDeclined {
  const _$_FriendRequestDeclined({required this.friendRequest});

  @override
  final FriendRequest friendRequest;

  @override
  String toString() {
    return 'FriendsEvent.friendRequestDeclined(friendRequest: $friendRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FriendRequestDeclined &&
            const DeepCollectionEquality()
                .equals(other.friendRequest, friendRequest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(friendRequest));

  @JsonKey(ignore: true)
  @override
  _$FriendRequestDeclinedCopyWith<_FriendRequestDeclined> get copyWith =>
      __$FriendRequestDeclinedCopyWithImpl<_FriendRequestDeclined>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Friend friend) friendSelected,
    required TResult Function(FriendRequest friendRequest)
        friendRequestAccepted,
    required TResult Function(FriendRequest friendRequest)
        friendRequestDeclined,
  }) {
    return friendRequestDeclined(friendRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Friend friend)? friendSelected,
    TResult Function(FriendRequest friendRequest)? friendRequestAccepted,
    TResult Function(FriendRequest friendRequest)? friendRequestDeclined,
  }) {
    return friendRequestDeclined?.call(friendRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Friend friend)? friendSelected,
    TResult Function(FriendRequest friendRequest)? friendRequestAccepted,
    TResult Function(FriendRequest friendRequest)? friendRequestDeclined,
    required TResult orElse(),
  }) {
    if (friendRequestDeclined != null) {
      return friendRequestDeclined(friendRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FriendSelected value) friendSelected,
    required TResult Function(_FriendRequestAccepted value)
        friendRequestAccepted,
    required TResult Function(_FriendRequestDeclined value)
        friendRequestDeclined,
  }) {
    return friendRequestDeclined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FriendSelected value)? friendSelected,
    TResult Function(_FriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(_FriendRequestDeclined value)? friendRequestDeclined,
  }) {
    return friendRequestDeclined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FriendSelected value)? friendSelected,
    TResult Function(_FriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(_FriendRequestDeclined value)? friendRequestDeclined,
    required TResult orElse(),
  }) {
    if (friendRequestDeclined != null) {
      return friendRequestDeclined(this);
    }
    return orElse();
  }
}

abstract class _FriendRequestDeclined implements FriendsEvent {
  const factory _FriendRequestDeclined({required FriendRequest friendRequest}) =
      _$_FriendRequestDeclined;

  FriendRequest get friendRequest;
  @JsonKey(ignore: true)
  _$FriendRequestDeclinedCopyWith<_FriendRequestDeclined> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FriendsStateTearOff {
  const _$FriendsStateTearOff();

  FriendsInitial initial({Friend? selectedFriend}) {
    return FriendsInitial(
      selectedFriend: selectedFriend,
    );
  }
}

/// @nodoc
const $FriendsState = _$FriendsStateTearOff();

/// @nodoc
mixin _$FriendsState {
  Friend? get selectedFriend => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Friend? selectedFriend) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Friend? selectedFriend)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Friend? selectedFriend)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FriendsInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FriendsInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendsInitial value)? initial,
    required TResult orElse(),
  }) =>
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
  $Res call({Friend? selectedFriend});

  $FriendCopyWith<$Res>? get selectedFriend;
}

/// @nodoc
class _$FriendsStateCopyWithImpl<$Res> implements $FriendsStateCopyWith<$Res> {
  _$FriendsStateCopyWithImpl(this._value, this._then);

  final FriendsState _value;
  // ignore: unused_field
  final $Res Function(FriendsState) _then;

  @override
  $Res call({
    Object? selectedFriend = freezed,
  }) {
    return _then(_value.copyWith(
      selectedFriend: selectedFriend == freezed
          ? _value.selectedFriend
          : selectedFriend // ignore: cast_nullable_to_non_nullable
              as Friend?,
    ));
  }

  @override
  $FriendCopyWith<$Res>? get selectedFriend {
    if (_value.selectedFriend == null) {
      return null;
    }

    return $FriendCopyWith<$Res>(_value.selectedFriend!, (value) {
      return _then(_value.copyWith(selectedFriend: value));
    });
  }
}

/// @nodoc
abstract class $FriendsInitialCopyWith<$Res>
    implements $FriendsStateCopyWith<$Res> {
  factory $FriendsInitialCopyWith(
          FriendsInitial value, $Res Function(FriendsInitial) then) =
      _$FriendsInitialCopyWithImpl<$Res>;
  @override
  $Res call({Friend? selectedFriend});

  @override
  $FriendCopyWith<$Res>? get selectedFriend;
}

/// @nodoc
class _$FriendsInitialCopyWithImpl<$Res>
    extends _$FriendsStateCopyWithImpl<$Res>
    implements $FriendsInitialCopyWith<$Res> {
  _$FriendsInitialCopyWithImpl(
      FriendsInitial _value, $Res Function(FriendsInitial) _then)
      : super(_value, (v) => _then(v as FriendsInitial));

  @override
  FriendsInitial get _value => super._value as FriendsInitial;

  @override
  $Res call({
    Object? selectedFriend = freezed,
  }) {
    return _then(FriendsInitial(
      selectedFriend: selectedFriend == freezed
          ? _value.selectedFriend
          : selectedFriend // ignore: cast_nullable_to_non_nullable
              as Friend?,
    ));
  }
}

/// @nodoc

class _$FriendsInitial implements FriendsInitial {
  const _$FriendsInitial({this.selectedFriend});

  @override
  final Friend? selectedFriend;

  @override
  String toString() {
    return 'FriendsState.initial(selectedFriend: $selectedFriend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FriendsInitial &&
            const DeepCollectionEquality()
                .equals(other.selectedFriend, selectedFriend));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedFriend));

  @JsonKey(ignore: true)
  @override
  $FriendsInitialCopyWith<FriendsInitial> get copyWith =>
      _$FriendsInitialCopyWithImpl<FriendsInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Friend? selectedFriend) initial,
  }) {
    return initial(selectedFriend);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Friend? selectedFriend)? initial,
  }) {
    return initial?.call(selectedFriend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Friend? selectedFriend)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(selectedFriend);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FriendsInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FriendsInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendsInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FriendsInitial implements FriendsState {
  const factory FriendsInitial({Friend? selectedFriend}) = _$FriendsInitial;

  @override
  Friend? get selectedFriend;
  @override
  @JsonKey(ignore: true)
  $FriendsInitialCopyWith<FriendsInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
