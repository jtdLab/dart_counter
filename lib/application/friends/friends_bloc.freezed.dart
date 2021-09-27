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

  FriendSelected friendSelected({required User friend}) {
    return FriendSelected(
      friend: friend,
    );
  }
}

/// @nodoc
const $FriendsEvent = _$FriendsEventTearOff();

/// @nodoc
mixin _$FriendsEvent {
  User get friend => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User friend) friendSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User friend)? friendSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FriendSelected value) friendSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendSelected value)? friendSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FriendsEventCopyWith<FriendsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsEventCopyWith<$Res> {
  factory $FriendsEventCopyWith(
          FriendsEvent value, $Res Function(FriendsEvent) then) =
      _$FriendsEventCopyWithImpl<$Res>;
  $Res call({User friend});

  $UserCopyWith<$Res> get friend;
}

/// @nodoc
class _$FriendsEventCopyWithImpl<$Res> implements $FriendsEventCopyWith<$Res> {
  _$FriendsEventCopyWithImpl(this._value, this._then);

  final FriendsEvent _value;
  // ignore: unused_field
  final $Res Function(FriendsEvent) _then;

  @override
  $Res call({
    Object? friend = freezed,
  }) {
    return _then(_value.copyWith(
      friend: friend == freezed
          ? _value.friend
          : friend // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get friend {
    return $UserCopyWith<$Res>(_value.friend, (value) {
      return _then(_value.copyWith(friend: value));
    });
  }
}

/// @nodoc
abstract class $FriendSelectedCopyWith<$Res>
    implements $FriendsEventCopyWith<$Res> {
  factory $FriendSelectedCopyWith(
          FriendSelected value, $Res Function(FriendSelected) then) =
      _$FriendSelectedCopyWithImpl<$Res>;
  @override
  $Res call({User friend});

  @override
  $UserCopyWith<$Res> get friend;
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
              as User,
    ));
  }
}

/// @nodoc

class _$FriendSelected implements FriendSelected {
  const _$FriendSelected({required this.friend});

  @override
  final User friend;

  @override
  String toString() {
    return 'FriendsEvent.friendSelected(friend: $friend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FriendSelected &&
            (identical(other.friend, friend) ||
                const DeepCollectionEquality().equals(other.friend, friend)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(friend);

  @JsonKey(ignore: true)
  @override
  $FriendSelectedCopyWith<FriendSelected> get copyWith =>
      _$FriendSelectedCopyWithImpl<FriendSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User friend) friendSelected,
  }) {
    return friendSelected(friend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User friend)? friendSelected,
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
    required TResult Function(FriendSelected value) friendSelected,
  }) {
    return friendSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendSelected value)? friendSelected,
    required TResult orElse(),
  }) {
    if (friendSelected != null) {
      return friendSelected(this);
    }
    return orElse();
  }
}

abstract class FriendSelected implements FriendsEvent {
  const factory FriendSelected({required User friend}) = _$FriendSelected;

  @override
  User get friend => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FriendSelectedCopyWith<FriendSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FriendsStateTearOff {
  const _$FriendsStateTearOff();

  _FriendsState call(
      {required KtList<User> friends,
      required KtList<FriendRequest> receivedFriendRequests,
      required KtList<FriendRequest> sentFriendRequests,
      User? selectedFriend}) {
    return _FriendsState(
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
  KtList<User> get friends => throw _privateConstructorUsedError;
  KtList<FriendRequest> get receivedFriendRequests =>
      throw _privateConstructorUsedError;
  KtList<FriendRequest> get sentFriendRequests =>
      throw _privateConstructorUsedError;
  User? get selectedFriend => throw _privateConstructorUsedError;

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
      {KtList<User> friends,
      KtList<FriendRequest> receivedFriendRequests,
      KtList<FriendRequest> sentFriendRequests,
      User? selectedFriend});

  $UserCopyWith<$Res>? get selectedFriend;
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
              as KtList<User>,
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
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get selectedFriend {
    if (_value.selectedFriend == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.selectedFriend!, (value) {
      return _then(_value.copyWith(selectedFriend: value));
    });
  }
}

/// @nodoc
abstract class _$FriendsStateCopyWith<$Res>
    implements $FriendsStateCopyWith<$Res> {
  factory _$FriendsStateCopyWith(
          _FriendsState value, $Res Function(_FriendsState) then) =
      __$FriendsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<User> friends,
      KtList<FriendRequest> receivedFriendRequests,
      KtList<FriendRequest> sentFriendRequests,
      User? selectedFriend});

  @override
  $UserCopyWith<$Res>? get selectedFriend;
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
    Object? friends = freezed,
    Object? receivedFriendRequests = freezed,
    Object? sentFriendRequests = freezed,
    Object? selectedFriend = freezed,
  }) {
    return _then(_FriendsState(
      friends: friends == freezed
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as KtList<User>,
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
              as User?,
    ));
  }
}

/// @nodoc

class _$_FriendsState implements _FriendsState {
  const _$_FriendsState(
      {required this.friends,
      required this.receivedFriendRequests,
      required this.sentFriendRequests,
      this.selectedFriend});

  @override
  final KtList<User> friends;
  @override
  final KtList<FriendRequest> receivedFriendRequests;
  @override
  final KtList<FriendRequest> sentFriendRequests;
  @override
  final User? selectedFriend;

  @override
  String toString() {
    return 'FriendsState(friends: $friends, receivedFriendRequests: $receivedFriendRequests, sentFriendRequests: $sentFriendRequests, selectedFriend: $selectedFriend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FriendsState &&
            (identical(other.friends, friends) ||
                const DeepCollectionEquality()
                    .equals(other.friends, friends)) &&
            (identical(other.receivedFriendRequests, receivedFriendRequests) ||
                const DeepCollectionEquality().equals(
                    other.receivedFriendRequests, receivedFriendRequests)) &&
            (identical(other.sentFriendRequests, sentFriendRequests) ||
                const DeepCollectionEquality()
                    .equals(other.sentFriendRequests, sentFriendRequests)) &&
            (identical(other.selectedFriend, selectedFriend) ||
                const DeepCollectionEquality()
                    .equals(other.selectedFriend, selectedFriend)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(friends) ^
      const DeepCollectionEquality().hash(receivedFriendRequests) ^
      const DeepCollectionEquality().hash(sentFriendRequests) ^
      const DeepCollectionEquality().hash(selectedFriend);

  @JsonKey(ignore: true)
  @override
  _$FriendsStateCopyWith<_FriendsState> get copyWith =>
      __$FriendsStateCopyWithImpl<_FriendsState>(this, _$identity);
}

abstract class _FriendsState implements FriendsState {
  const factory _FriendsState(
      {required KtList<User> friends,
      required KtList<FriendRequest> receivedFriendRequests,
      required KtList<FriendRequest> sentFriendRequests,
      User? selectedFriend}) = _$_FriendsState;

  @override
  KtList<User> get friends => throw _privateConstructorUsedError;
  @override
  KtList<FriendRequest> get receivedFriendRequests =>
      throw _privateConstructorUsedError;
  @override
  KtList<FriendRequest> get sentFriendRequests =>
      throw _privateConstructorUsedError;
  @override
  User? get selectedFriend => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FriendsStateCopyWith<_FriendsState> get copyWith =>
      throw _privateConstructorUsedError;
}
