// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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

  Started started() {
    return const Started();
  }

  FriendSelected friendSelected({required Friend friend}) {
    return FriendSelected(
      friend: friend,
    );
  }

  FriendRequestAccepted friendRequestAccepted(
      {required FriendRequest friendRequest}) {
    return FriendRequestAccepted(
      friendRequest: friendRequest,
    );
  }

  FriendRequestDeclined friendRequestDeclined(
      {required FriendRequest friendRequest}) {
    return FriendRequestDeclined(
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
    required TResult Function(Started value) started,
    required TResult Function(FriendSelected value) friendSelected,
    required TResult Function(FriendRequestAccepted value)
        friendRequestAccepted,
    required TResult Function(FriendRequestDeclined value)
        friendRequestDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FriendSelected value)? friendSelected,
    TResult Function(FriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(FriendRequestDeclined value)? friendRequestDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FriendSelected value)? friendSelected,
    TResult Function(FriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(FriendRequestDeclined value)? friendRequestDeclined,
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
abstract class $StartedCopyWith<$Res> {
  factory $StartedCopyWith(Started value, $Res Function(Started) then) =
      _$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartedCopyWithImpl<$Res> extends _$FriendsEventCopyWithImpl<$Res>
    implements $StartedCopyWith<$Res> {
  _$StartedCopyWithImpl(Started _value, $Res Function(Started) _then)
      : super(_value, (v) => _then(v as Started));

  @override
  Started get _value => super._value as Started;
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'FriendsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Started);
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
    required TResult Function(Started value) started,
    required TResult Function(FriendSelected value) friendSelected,
    required TResult Function(FriendRequestAccepted value)
        friendRequestAccepted,
    required TResult Function(FriendRequestDeclined value)
        friendRequestDeclined,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FriendSelected value)? friendSelected,
    TResult Function(FriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(FriendRequestDeclined value)? friendRequestDeclined,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FriendSelected value)? friendSelected,
    TResult Function(FriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(FriendRequestDeclined value)? friendRequestDeclined,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements FriendsEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class $FriendSelectedCopyWith<$Res> {
  factory $FriendSelectedCopyWith(
          FriendSelected value, $Res Function(FriendSelected) then) =
      _$FriendSelectedCopyWithImpl<$Res>;
  $Res call({Friend friend});

  $FriendCopyWith<$Res> get friend;
}

/// @nodoc
class _$FriendSelectedCopyWithImpl<$Res>
    extends _$FriendsEventCopyWithImpl<$Res>
    implements $FriendSelectedCopyWith<$Res> {
  _$FriendSelectedCopyWithImpl(
      FriendSelected _value, $Res Function(FriendSelected) _then)
      : super(_value, (v) => _then(v as FriendSelected));

  @override
  FriendSelected get _value => super._value as FriendSelected;

  @override
  $Res call({
    Object? friend = freezed,
  }) {
    return _then(FriendSelected(
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

class _$FriendSelected implements FriendSelected {
  const _$FriendSelected({required this.friend});

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
            other is FriendSelected &&
            const DeepCollectionEquality().equals(other.friend, friend));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(friend));

  @JsonKey(ignore: true)
  @override
  $FriendSelectedCopyWith<FriendSelected> get copyWith =>
      _$FriendSelectedCopyWithImpl<FriendSelected>(this, _$identity);

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
    required TResult Function(Started value) started,
    required TResult Function(FriendSelected value) friendSelected,
    required TResult Function(FriendRequestAccepted value)
        friendRequestAccepted,
    required TResult Function(FriendRequestDeclined value)
        friendRequestDeclined,
  }) {
    return friendSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FriendSelected value)? friendSelected,
    TResult Function(FriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(FriendRequestDeclined value)? friendRequestDeclined,
  }) {
    return friendSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FriendSelected value)? friendSelected,
    TResult Function(FriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(FriendRequestDeclined value)? friendRequestDeclined,
    required TResult orElse(),
  }) {
    if (friendSelected != null) {
      return friendSelected(this);
    }
    return orElse();
  }
}

abstract class FriendSelected implements FriendsEvent {
  const factory FriendSelected({required Friend friend}) = _$FriendSelected;

  Friend get friend;
  @JsonKey(ignore: true)
  $FriendSelectedCopyWith<FriendSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestAcceptedCopyWith<$Res> {
  factory $FriendRequestAcceptedCopyWith(FriendRequestAccepted value,
          $Res Function(FriendRequestAccepted) then) =
      _$FriendRequestAcceptedCopyWithImpl<$Res>;
  $Res call({FriendRequest friendRequest});

  $FriendRequestCopyWith<$Res> get friendRequest;
}

/// @nodoc
class _$FriendRequestAcceptedCopyWithImpl<$Res>
    extends _$FriendsEventCopyWithImpl<$Res>
    implements $FriendRequestAcceptedCopyWith<$Res> {
  _$FriendRequestAcceptedCopyWithImpl(
      FriendRequestAccepted _value, $Res Function(FriendRequestAccepted) _then)
      : super(_value, (v) => _then(v as FriendRequestAccepted));

  @override
  FriendRequestAccepted get _value => super._value as FriendRequestAccepted;

  @override
  $Res call({
    Object? friendRequest = freezed,
  }) {
    return _then(FriendRequestAccepted(
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

class _$FriendRequestAccepted implements FriendRequestAccepted {
  const _$FriendRequestAccepted({required this.friendRequest});

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
            other is FriendRequestAccepted &&
            const DeepCollectionEquality()
                .equals(other.friendRequest, friendRequest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(friendRequest));

  @JsonKey(ignore: true)
  @override
  $FriendRequestAcceptedCopyWith<FriendRequestAccepted> get copyWith =>
      _$FriendRequestAcceptedCopyWithImpl<FriendRequestAccepted>(
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
    required TResult Function(Started value) started,
    required TResult Function(FriendSelected value) friendSelected,
    required TResult Function(FriendRequestAccepted value)
        friendRequestAccepted,
    required TResult Function(FriendRequestDeclined value)
        friendRequestDeclined,
  }) {
    return friendRequestAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FriendSelected value)? friendSelected,
    TResult Function(FriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(FriendRequestDeclined value)? friendRequestDeclined,
  }) {
    return friendRequestAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FriendSelected value)? friendSelected,
    TResult Function(FriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(FriendRequestDeclined value)? friendRequestDeclined,
    required TResult orElse(),
  }) {
    if (friendRequestAccepted != null) {
      return friendRequestAccepted(this);
    }
    return orElse();
  }
}

abstract class FriendRequestAccepted implements FriendsEvent {
  const factory FriendRequestAccepted({required FriendRequest friendRequest}) =
      _$FriendRequestAccepted;

  FriendRequest get friendRequest;
  @JsonKey(ignore: true)
  $FriendRequestAcceptedCopyWith<FriendRequestAccepted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestDeclinedCopyWith<$Res> {
  factory $FriendRequestDeclinedCopyWith(FriendRequestDeclined value,
          $Res Function(FriendRequestDeclined) then) =
      _$FriendRequestDeclinedCopyWithImpl<$Res>;
  $Res call({FriendRequest friendRequest});

  $FriendRequestCopyWith<$Res> get friendRequest;
}

/// @nodoc
class _$FriendRequestDeclinedCopyWithImpl<$Res>
    extends _$FriendsEventCopyWithImpl<$Res>
    implements $FriendRequestDeclinedCopyWith<$Res> {
  _$FriendRequestDeclinedCopyWithImpl(
      FriendRequestDeclined _value, $Res Function(FriendRequestDeclined) _then)
      : super(_value, (v) => _then(v as FriendRequestDeclined));

  @override
  FriendRequestDeclined get _value => super._value as FriendRequestDeclined;

  @override
  $Res call({
    Object? friendRequest = freezed,
  }) {
    return _then(FriendRequestDeclined(
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

class _$FriendRequestDeclined implements FriendRequestDeclined {
  const _$FriendRequestDeclined({required this.friendRequest});

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
            other is FriendRequestDeclined &&
            const DeepCollectionEquality()
                .equals(other.friendRequest, friendRequest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(friendRequest));

  @JsonKey(ignore: true)
  @override
  $FriendRequestDeclinedCopyWith<FriendRequestDeclined> get copyWith =>
      _$FriendRequestDeclinedCopyWithImpl<FriendRequestDeclined>(
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
    required TResult Function(Started value) started,
    required TResult Function(FriendSelected value) friendSelected,
    required TResult Function(FriendRequestAccepted value)
        friendRequestAccepted,
    required TResult Function(FriendRequestDeclined value)
        friendRequestDeclined,
  }) {
    return friendRequestDeclined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FriendSelected value)? friendSelected,
    TResult Function(FriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(FriendRequestDeclined value)? friendRequestDeclined,
  }) {
    return friendRequestDeclined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FriendSelected value)? friendSelected,
    TResult Function(FriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(FriendRequestDeclined value)? friendRequestDeclined,
    required TResult orElse(),
  }) {
    if (friendRequestDeclined != null) {
      return friendRequestDeclined(this);
    }
    return orElse();
  }
}

abstract class FriendRequestDeclined implements FriendsEvent {
  const factory FriendRequestDeclined({required FriendRequest friendRequest}) =
      _$FriendRequestDeclined;

  FriendRequest get friendRequest;
  @JsonKey(ignore: true)
  $FriendRequestDeclinedCopyWith<FriendRequestDeclined> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FriendsStateTearOff {
  const _$FriendsStateTearOff();

  FriendsInitial initial(
      {required KtList<Friend> friends,
      required KtList<FriendRequest> receivedFriendRequests,
      required KtList<FriendRequest> sentFriendRequests,
      Friend? selectedFriend}) {
    return FriendsInitial(
      friends: friends,
      receivedFriendRequests: receivedFriendRequests,
      sentFriendRequests: sentFriendRequests,
      selectedFriend: selectedFriend,
    );
  }
}

/// @nodoc
const $FriendsState = _$FriendsStateTearOff();

/// @nodoc
mixin _$FriendsState {
  KtList<Friend> get friends => throw _privateConstructorUsedError;
  KtList<FriendRequest> get receivedFriendRequests =>
      throw _privateConstructorUsedError;
  KtList<FriendRequest> get sentFriendRequests =>
      throw _privateConstructorUsedError;
  Friend? get selectedFriend => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests,
            Friend? selectedFriend)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests,
            Friend? selectedFriend)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests,
            Friend? selectedFriend)?
        initial,
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
  $Res call(
      {KtList<Friend> friends,
      KtList<FriendRequest> receivedFriendRequests,
      KtList<FriendRequest> sentFriendRequests,
      Friend? selectedFriend});

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
    Object? friends = freezed,
    Object? receivedFriendRequests = freezed,
    Object? sentFriendRequests = freezed,
    Object? selectedFriend = freezed,
  }) {
    return _then(_value.copyWith(
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
  $Res call(
      {KtList<Friend> friends,
      KtList<FriendRequest> receivedFriendRequests,
      KtList<FriendRequest> sentFriendRequests,
      Friend? selectedFriend});

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
    Object? friends = freezed,
    Object? receivedFriendRequests = freezed,
    Object? sentFriendRequests = freezed,
    Object? selectedFriend = freezed,
  }) {
    return _then(FriendsInitial(
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
      selectedFriend: selectedFriend == freezed
          ? _value.selectedFriend
          : selectedFriend // ignore: cast_nullable_to_non_nullable
              as Friend?,
    ));
  }
}

/// @nodoc

class _$FriendsInitial implements FriendsInitial {
  const _$FriendsInitial(
      {required this.friends,
      required this.receivedFriendRequests,
      required this.sentFriendRequests,
      this.selectedFriend});

  @override
  final KtList<Friend> friends;
  @override
  final KtList<FriendRequest> receivedFriendRequests;
  @override
  final KtList<FriendRequest> sentFriendRequests;
  @override
  final Friend? selectedFriend;

  @override
  String toString() {
    return 'FriendsState.initial(friends: $friends, receivedFriendRequests: $receivedFriendRequests, sentFriendRequests: $sentFriendRequests, selectedFriend: $selectedFriend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FriendsInitial &&
            const DeepCollectionEquality().equals(other.friends, friends) &&
            const DeepCollectionEquality()
                .equals(other.receivedFriendRequests, receivedFriendRequests) &&
            const DeepCollectionEquality()
                .equals(other.sentFriendRequests, sentFriendRequests) &&
            const DeepCollectionEquality()
                .equals(other.selectedFriend, selectedFriend));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(friends),
      const DeepCollectionEquality().hash(receivedFriendRequests),
      const DeepCollectionEquality().hash(sentFriendRequests),
      const DeepCollectionEquality().hash(selectedFriend));

  @JsonKey(ignore: true)
  @override
  $FriendsInitialCopyWith<FriendsInitial> get copyWith =>
      _$FriendsInitialCopyWithImpl<FriendsInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests,
            Friend? selectedFriend)
        initial,
  }) {
    return initial(
        friends, receivedFriendRequests, sentFriendRequests, selectedFriend);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests,
            Friend? selectedFriend)?
        initial,
  }) {
    return initial?.call(
        friends, receivedFriendRequests, sentFriendRequests, selectedFriend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests,
            Friend? selectedFriend)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          friends, receivedFriendRequests, sentFriendRequests, selectedFriend);
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
  const factory FriendsInitial(
      {required KtList<Friend> friends,
      required KtList<FriendRequest> receivedFriendRequests,
      required KtList<FriendRequest> sentFriendRequests,
      Friend? selectedFriend}) = _$FriendsInitial;

  @override
  KtList<Friend> get friends;
  @override
  KtList<FriendRequest> get receivedFriendRequests;
  @override
  KtList<FriendRequest> get sentFriendRequests;
  @override
  Friend? get selectedFriend;
  @override
  @JsonKey(ignore: true)
  $FriendsInitialCopyWith<FriendsInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
