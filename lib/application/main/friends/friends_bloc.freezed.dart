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

  FriendsFriendSelected friendSelected({required Friend friend}) {
    return FriendsFriendSelected(
      friend: friend,
    );
  }

  FriendsFriendRequestAccepted friendRequestAccepted(
      {required FriendRequest friendRequest}) {
    return FriendsFriendRequestAccepted(
      friendRequest: friendRequest,
    );
  }

  FriendsFriendRequestDeclined friendRequestDeclined(
      {required FriendRequest friendRequest}) {
    return FriendsFriendRequestDeclined(
      friendRequest: friendRequest,
    );
  }

  FriendsDataReceived dataReceived(
      {required KtList<Friend> friends,
      required KtList<FriendRequest> receivedFriendRequests,
      required KtList<FriendRequest> sentFriendRequests}) {
    return FriendsDataReceived(
      friends: friends,
      receivedFriendRequests: receivedFriendRequests,
      sentFriendRequests: sentFriendRequests,
    );
  }
}

/// @nodoc
const $FriendsEvent = _$FriendsEventTearOff();

/// @nodoc
mixin _$FriendsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Friend friend) friendSelected,
    required TResult Function(FriendRequest friendRequest)
        friendRequestAccepted,
    required TResult Function(FriendRequest friendRequest)
        friendRequestDeclined,
    required TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)
        dataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Friend friend)? friendSelected,
    TResult Function(FriendRequest friendRequest)? friendRequestAccepted,
    TResult Function(FriendRequest friendRequest)? friendRequestDeclined,
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        dataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Friend friend)? friendSelected,
    TResult Function(FriendRequest friendRequest)? friendRequestAccepted,
    TResult Function(FriendRequest friendRequest)? friendRequestDeclined,
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        dataReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FriendsFriendSelected value) friendSelected,
    required TResult Function(FriendsFriendRequestAccepted value)
        friendRequestAccepted,
    required TResult Function(FriendsFriendRequestDeclined value)
        friendRequestDeclined,
    required TResult Function(FriendsDataReceived value) dataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FriendsFriendSelected value)? friendSelected,
    TResult Function(FriendsFriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(FriendsFriendRequestDeclined value)? friendRequestDeclined,
    TResult Function(FriendsDataReceived value)? dataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendsFriendSelected value)? friendSelected,
    TResult Function(FriendsFriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(FriendsFriendRequestDeclined value)? friendRequestDeclined,
    TResult Function(FriendsDataReceived value)? dataReceived,
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
abstract class $FriendsFriendSelectedCopyWith<$Res> {
  factory $FriendsFriendSelectedCopyWith(FriendsFriendSelected value,
          $Res Function(FriendsFriendSelected) then) =
      _$FriendsFriendSelectedCopyWithImpl<$Res>;
  $Res call({Friend friend});

  $FriendCopyWith<$Res> get friend;
}

/// @nodoc
class _$FriendsFriendSelectedCopyWithImpl<$Res>
    extends _$FriendsEventCopyWithImpl<$Res>
    implements $FriendsFriendSelectedCopyWith<$Res> {
  _$FriendsFriendSelectedCopyWithImpl(
      FriendsFriendSelected _value, $Res Function(FriendsFriendSelected) _then)
      : super(_value, (v) => _then(v as FriendsFriendSelected));

  @override
  FriendsFriendSelected get _value => super._value as FriendsFriendSelected;

  @override
  $Res call({
    Object? friend = freezed,
  }) {
    return _then(FriendsFriendSelected(
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

class _$FriendsFriendSelected implements FriendsFriendSelected {
  const _$FriendsFriendSelected({required this.friend});

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
            other is FriendsFriendSelected &&
            const DeepCollectionEquality().equals(other.friend, friend));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(friend));

  @JsonKey(ignore: true)
  @override
  $FriendsFriendSelectedCopyWith<FriendsFriendSelected> get copyWith =>
      _$FriendsFriendSelectedCopyWithImpl<FriendsFriendSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Friend friend) friendSelected,
    required TResult Function(FriendRequest friendRequest)
        friendRequestAccepted,
    required TResult Function(FriendRequest friendRequest)
        friendRequestDeclined,
    required TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)
        dataReceived,
  }) {
    return friendSelected(friend);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Friend friend)? friendSelected,
    TResult Function(FriendRequest friendRequest)? friendRequestAccepted,
    TResult Function(FriendRequest friendRequest)? friendRequestDeclined,
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        dataReceived,
  }) {
    return friendSelected?.call(friend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Friend friend)? friendSelected,
    TResult Function(FriendRequest friendRequest)? friendRequestAccepted,
    TResult Function(FriendRequest friendRequest)? friendRequestDeclined,
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        dataReceived,
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
    required TResult Function(FriendsFriendSelected value) friendSelected,
    required TResult Function(FriendsFriendRequestAccepted value)
        friendRequestAccepted,
    required TResult Function(FriendsFriendRequestDeclined value)
        friendRequestDeclined,
    required TResult Function(FriendsDataReceived value) dataReceived,
  }) {
    return friendSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FriendsFriendSelected value)? friendSelected,
    TResult Function(FriendsFriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(FriendsFriendRequestDeclined value)? friendRequestDeclined,
    TResult Function(FriendsDataReceived value)? dataReceived,
  }) {
    return friendSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendsFriendSelected value)? friendSelected,
    TResult Function(FriendsFriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(FriendsFriendRequestDeclined value)? friendRequestDeclined,
    TResult Function(FriendsDataReceived value)? dataReceived,
    required TResult orElse(),
  }) {
    if (friendSelected != null) {
      return friendSelected(this);
    }
    return orElse();
  }
}

abstract class FriendsFriendSelected implements FriendsEvent {
  const factory FriendsFriendSelected({required Friend friend}) =
      _$FriendsFriendSelected;

  Friend get friend;
  @JsonKey(ignore: true)
  $FriendsFriendSelectedCopyWith<FriendsFriendSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsFriendRequestAcceptedCopyWith<$Res> {
  factory $FriendsFriendRequestAcceptedCopyWith(
          FriendsFriendRequestAccepted value,
          $Res Function(FriendsFriendRequestAccepted) then) =
      _$FriendsFriendRequestAcceptedCopyWithImpl<$Res>;
  $Res call({FriendRequest friendRequest});

  $FriendRequestCopyWith<$Res> get friendRequest;
}

/// @nodoc
class _$FriendsFriendRequestAcceptedCopyWithImpl<$Res>
    extends _$FriendsEventCopyWithImpl<$Res>
    implements $FriendsFriendRequestAcceptedCopyWith<$Res> {
  _$FriendsFriendRequestAcceptedCopyWithImpl(
      FriendsFriendRequestAccepted _value,
      $Res Function(FriendsFriendRequestAccepted) _then)
      : super(_value, (v) => _then(v as FriendsFriendRequestAccepted));

  @override
  FriendsFriendRequestAccepted get _value =>
      super._value as FriendsFriendRequestAccepted;

  @override
  $Res call({
    Object? friendRequest = freezed,
  }) {
    return _then(FriendsFriendRequestAccepted(
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

class _$FriendsFriendRequestAccepted implements FriendsFriendRequestAccepted {
  const _$FriendsFriendRequestAccepted({required this.friendRequest});

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
            other is FriendsFriendRequestAccepted &&
            const DeepCollectionEquality()
                .equals(other.friendRequest, friendRequest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(friendRequest));

  @JsonKey(ignore: true)
  @override
  $FriendsFriendRequestAcceptedCopyWith<FriendsFriendRequestAccepted>
      get copyWith => _$FriendsFriendRequestAcceptedCopyWithImpl<
          FriendsFriendRequestAccepted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Friend friend) friendSelected,
    required TResult Function(FriendRequest friendRequest)
        friendRequestAccepted,
    required TResult Function(FriendRequest friendRequest)
        friendRequestDeclined,
    required TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)
        dataReceived,
  }) {
    return friendRequestAccepted(friendRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Friend friend)? friendSelected,
    TResult Function(FriendRequest friendRequest)? friendRequestAccepted,
    TResult Function(FriendRequest friendRequest)? friendRequestDeclined,
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        dataReceived,
  }) {
    return friendRequestAccepted?.call(friendRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Friend friend)? friendSelected,
    TResult Function(FriendRequest friendRequest)? friendRequestAccepted,
    TResult Function(FriendRequest friendRequest)? friendRequestDeclined,
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        dataReceived,
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
    required TResult Function(FriendsFriendSelected value) friendSelected,
    required TResult Function(FriendsFriendRequestAccepted value)
        friendRequestAccepted,
    required TResult Function(FriendsFriendRequestDeclined value)
        friendRequestDeclined,
    required TResult Function(FriendsDataReceived value) dataReceived,
  }) {
    return friendRequestAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FriendsFriendSelected value)? friendSelected,
    TResult Function(FriendsFriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(FriendsFriendRequestDeclined value)? friendRequestDeclined,
    TResult Function(FriendsDataReceived value)? dataReceived,
  }) {
    return friendRequestAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendsFriendSelected value)? friendSelected,
    TResult Function(FriendsFriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(FriendsFriendRequestDeclined value)? friendRequestDeclined,
    TResult Function(FriendsDataReceived value)? dataReceived,
    required TResult orElse(),
  }) {
    if (friendRequestAccepted != null) {
      return friendRequestAccepted(this);
    }
    return orElse();
  }
}

abstract class FriendsFriendRequestAccepted implements FriendsEvent {
  const factory FriendsFriendRequestAccepted(
      {required FriendRequest friendRequest}) = _$FriendsFriendRequestAccepted;

  FriendRequest get friendRequest;
  @JsonKey(ignore: true)
  $FriendsFriendRequestAcceptedCopyWith<FriendsFriendRequestAccepted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsFriendRequestDeclinedCopyWith<$Res> {
  factory $FriendsFriendRequestDeclinedCopyWith(
          FriendsFriendRequestDeclined value,
          $Res Function(FriendsFriendRequestDeclined) then) =
      _$FriendsFriendRequestDeclinedCopyWithImpl<$Res>;
  $Res call({FriendRequest friendRequest});

  $FriendRequestCopyWith<$Res> get friendRequest;
}

/// @nodoc
class _$FriendsFriendRequestDeclinedCopyWithImpl<$Res>
    extends _$FriendsEventCopyWithImpl<$Res>
    implements $FriendsFriendRequestDeclinedCopyWith<$Res> {
  _$FriendsFriendRequestDeclinedCopyWithImpl(
      FriendsFriendRequestDeclined _value,
      $Res Function(FriendsFriendRequestDeclined) _then)
      : super(_value, (v) => _then(v as FriendsFriendRequestDeclined));

  @override
  FriendsFriendRequestDeclined get _value =>
      super._value as FriendsFriendRequestDeclined;

  @override
  $Res call({
    Object? friendRequest = freezed,
  }) {
    return _then(FriendsFriendRequestDeclined(
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

class _$FriendsFriendRequestDeclined implements FriendsFriendRequestDeclined {
  const _$FriendsFriendRequestDeclined({required this.friendRequest});

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
            other is FriendsFriendRequestDeclined &&
            const DeepCollectionEquality()
                .equals(other.friendRequest, friendRequest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(friendRequest));

  @JsonKey(ignore: true)
  @override
  $FriendsFriendRequestDeclinedCopyWith<FriendsFriendRequestDeclined>
      get copyWith => _$FriendsFriendRequestDeclinedCopyWithImpl<
          FriendsFriendRequestDeclined>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Friend friend) friendSelected,
    required TResult Function(FriendRequest friendRequest)
        friendRequestAccepted,
    required TResult Function(FriendRequest friendRequest)
        friendRequestDeclined,
    required TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)
        dataReceived,
  }) {
    return friendRequestDeclined(friendRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Friend friend)? friendSelected,
    TResult Function(FriendRequest friendRequest)? friendRequestAccepted,
    TResult Function(FriendRequest friendRequest)? friendRequestDeclined,
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        dataReceived,
  }) {
    return friendRequestDeclined?.call(friendRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Friend friend)? friendSelected,
    TResult Function(FriendRequest friendRequest)? friendRequestAccepted,
    TResult Function(FriendRequest friendRequest)? friendRequestDeclined,
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        dataReceived,
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
    required TResult Function(FriendsFriendSelected value) friendSelected,
    required TResult Function(FriendsFriendRequestAccepted value)
        friendRequestAccepted,
    required TResult Function(FriendsFriendRequestDeclined value)
        friendRequestDeclined,
    required TResult Function(FriendsDataReceived value) dataReceived,
  }) {
    return friendRequestDeclined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FriendsFriendSelected value)? friendSelected,
    TResult Function(FriendsFriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(FriendsFriendRequestDeclined value)? friendRequestDeclined,
    TResult Function(FriendsDataReceived value)? dataReceived,
  }) {
    return friendRequestDeclined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendsFriendSelected value)? friendSelected,
    TResult Function(FriendsFriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(FriendsFriendRequestDeclined value)? friendRequestDeclined,
    TResult Function(FriendsDataReceived value)? dataReceived,
    required TResult orElse(),
  }) {
    if (friendRequestDeclined != null) {
      return friendRequestDeclined(this);
    }
    return orElse();
  }
}

abstract class FriendsFriendRequestDeclined implements FriendsEvent {
  const factory FriendsFriendRequestDeclined(
      {required FriendRequest friendRequest}) = _$FriendsFriendRequestDeclined;

  FriendRequest get friendRequest;
  @JsonKey(ignore: true)
  $FriendsFriendRequestDeclinedCopyWith<FriendsFriendRequestDeclined>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsDataReceivedCopyWith<$Res> {
  factory $FriendsDataReceivedCopyWith(
          FriendsDataReceived value, $Res Function(FriendsDataReceived) then) =
      _$FriendsDataReceivedCopyWithImpl<$Res>;
  $Res call(
      {KtList<Friend> friends,
      KtList<FriendRequest> receivedFriendRequests,
      KtList<FriendRequest> sentFriendRequests});
}

/// @nodoc
class _$FriendsDataReceivedCopyWithImpl<$Res>
    extends _$FriendsEventCopyWithImpl<$Res>
    implements $FriendsDataReceivedCopyWith<$Res> {
  _$FriendsDataReceivedCopyWithImpl(
      FriendsDataReceived _value, $Res Function(FriendsDataReceived) _then)
      : super(_value, (v) => _then(v as FriendsDataReceived));

  @override
  FriendsDataReceived get _value => super._value as FriendsDataReceived;

  @override
  $Res call({
    Object? friends = freezed,
    Object? receivedFriendRequests = freezed,
    Object? sentFriendRequests = freezed,
  }) {
    return _then(FriendsDataReceived(
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

class _$FriendsDataReceived implements FriendsDataReceived {
  const _$FriendsDataReceived(
      {required this.friends,
      required this.receivedFriendRequests,
      required this.sentFriendRequests});

  @override
  final KtList<Friend> friends;
  @override
  final KtList<FriendRequest> receivedFriendRequests;
  @override
  final KtList<FriendRequest> sentFriendRequests;

  @override
  String toString() {
    return 'FriendsEvent.dataReceived(friends: $friends, receivedFriendRequests: $receivedFriendRequests, sentFriendRequests: $sentFriendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FriendsDataReceived &&
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
  $FriendsDataReceivedCopyWith<FriendsDataReceived> get copyWith =>
      _$FriendsDataReceivedCopyWithImpl<FriendsDataReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Friend friend) friendSelected,
    required TResult Function(FriendRequest friendRequest)
        friendRequestAccepted,
    required TResult Function(FriendRequest friendRequest)
        friendRequestDeclined,
    required TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)
        dataReceived,
  }) {
    return dataReceived(friends, receivedFriendRequests, sentFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Friend friend)? friendSelected,
    TResult Function(FriendRequest friendRequest)? friendRequestAccepted,
    TResult Function(FriendRequest friendRequest)? friendRequestDeclined,
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        dataReceived,
  }) {
    return dataReceived?.call(
        friends, receivedFriendRequests, sentFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Friend friend)? friendSelected,
    TResult Function(FriendRequest friendRequest)? friendRequestAccepted,
    TResult Function(FriendRequest friendRequest)? friendRequestDeclined,
    TResult Function(
            KtList<Friend> friends,
            KtList<FriendRequest> receivedFriendRequests,
            KtList<FriendRequest> sentFriendRequests)?
        dataReceived,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(friends, receivedFriendRequests, sentFriendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FriendsFriendSelected value) friendSelected,
    required TResult Function(FriendsFriendRequestAccepted value)
        friendRequestAccepted,
    required TResult Function(FriendsFriendRequestDeclined value)
        friendRequestDeclined,
    required TResult Function(FriendsDataReceived value) dataReceived,
  }) {
    return dataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FriendsFriendSelected value)? friendSelected,
    TResult Function(FriendsFriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(FriendsFriendRequestDeclined value)? friendRequestDeclined,
    TResult Function(FriendsDataReceived value)? dataReceived,
  }) {
    return dataReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendsFriendSelected value)? friendSelected,
    TResult Function(FriendsFriendRequestAccepted value)? friendRequestAccepted,
    TResult Function(FriendsFriendRequestDeclined value)? friendRequestDeclined,
    TResult Function(FriendsDataReceived value)? dataReceived,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(this);
    }
    return orElse();
  }
}

abstract class FriendsDataReceived implements FriendsEvent {
  const factory FriendsDataReceived(
          {required KtList<Friend> friends,
          required KtList<FriendRequest> receivedFriendRequests,
          required KtList<FriendRequest> sentFriendRequests}) =
      _$FriendsDataReceived;

  KtList<Friend> get friends;
  KtList<FriendRequest> get receivedFriendRequests;
  KtList<FriendRequest> get sentFriendRequests;
  @JsonKey(ignore: true)
  $FriendsDataReceivedCopyWith<FriendsDataReceived> get copyWith =>
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
