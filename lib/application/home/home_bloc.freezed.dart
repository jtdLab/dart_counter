// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  _WatchDataStarted watchDataStarted() {
    return const _WatchDataStarted();
  }

  _InvitationsReceived invitationsReceived(
      Either<GameInvitationFailure, KtList<GameInvitation>>
          failureOrInvitations) {
    return _InvitationsReceived(
      failureOrInvitations,
    );
  }

  _FriendRequestsReceived friendRequestsReceived(
      Either<FriendFailure, KtList<FriendRequest>> failureOrFriendRequests) {
    return _FriendRequestsReceived(
      failureOrFriendRequests,
    );
  }

  _UserReceived userReceived(Either<UserFailure, User> failureOrUser) {
    return _UserReceived(
      failureOrUser,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(
            Either<GameInvitationFailure, KtList<GameInvitation>>
                failureOrInvitations)
        invitationsReceived,
    required TResult Function(
            Either<FriendFailure, KtList<FriendRequest>>
                failureOrFriendRequests)
        friendRequestsReceived,
    required TResult Function(Either<UserFailure, User> failureOrUser)
        userReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(
            Either<GameInvitationFailure, KtList<GameInvitation>>
                failureOrInvitations)?
        invitationsReceived,
    TResult Function(
            Either<FriendFailure, KtList<FriendRequest>>
                failureOrFriendRequests)?
        friendRequestsReceived,
    TResult Function(Either<UserFailure, User> failureOrUser)? userReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_InvitationsReceived value) invitationsReceived,
    required TResult Function(_FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(_UserReceived value) userReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_InvitationsReceived value)? invitationsReceived,
    TResult Function(_FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(_UserReceived value)? userReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$WatchDataStartedCopyWith<$Res> {
  factory _$WatchDataStartedCopyWith(
          _WatchDataStarted value, $Res Function(_WatchDataStarted) then) =
      __$WatchDataStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchDataStartedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$WatchDataStartedCopyWith<$Res> {
  __$WatchDataStartedCopyWithImpl(
      _WatchDataStarted _value, $Res Function(_WatchDataStarted) _then)
      : super(_value, (v) => _then(v as _WatchDataStarted));

  @override
  _WatchDataStarted get _value => super._value as _WatchDataStarted;
}

/// @nodoc

class _$_WatchDataStarted implements _WatchDataStarted {
  const _$_WatchDataStarted();

  @override
  String toString() {
    return 'HomeEvent.watchDataStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchDataStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(
            Either<GameInvitationFailure, KtList<GameInvitation>>
                failureOrInvitations)
        invitationsReceived,
    required TResult Function(
            Either<FriendFailure, KtList<FriendRequest>>
                failureOrFriendRequests)
        friendRequestsReceived,
    required TResult Function(Either<UserFailure, User> failureOrUser)
        userReceived,
  }) {
    return watchDataStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(
            Either<GameInvitationFailure, KtList<GameInvitation>>
                failureOrInvitations)?
        invitationsReceived,
    TResult Function(
            Either<FriendFailure, KtList<FriendRequest>>
                failureOrFriendRequests)?
        friendRequestsReceived,
    TResult Function(Either<UserFailure, User> failureOrUser)? userReceived,
    required TResult orElse(),
  }) {
    if (watchDataStarted != null) {
      return watchDataStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_InvitationsReceived value) invitationsReceived,
    required TResult Function(_FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(_UserReceived value) userReceived,
  }) {
    return watchDataStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_InvitationsReceived value)? invitationsReceived,
    TResult Function(_FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(_UserReceived value)? userReceived,
    required TResult orElse(),
  }) {
    if (watchDataStarted != null) {
      return watchDataStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchDataStarted implements HomeEvent {
  const factory _WatchDataStarted() = _$_WatchDataStarted;
}

/// @nodoc
abstract class _$InvitationsReceivedCopyWith<$Res> {
  factory _$InvitationsReceivedCopyWith(_InvitationsReceived value,
          $Res Function(_InvitationsReceived) then) =
      __$InvitationsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<GameInvitationFailure, KtList<GameInvitation>>
          failureOrInvitations});
}

/// @nodoc
class __$InvitationsReceivedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$InvitationsReceivedCopyWith<$Res> {
  __$InvitationsReceivedCopyWithImpl(
      _InvitationsReceived _value, $Res Function(_InvitationsReceived) _then)
      : super(_value, (v) => _then(v as _InvitationsReceived));

  @override
  _InvitationsReceived get _value => super._value as _InvitationsReceived;

  @override
  $Res call({
    Object? failureOrInvitations = freezed,
  }) {
    return _then(_InvitationsReceived(
      failureOrInvitations == freezed
          ? _value.failureOrInvitations
          : failureOrInvitations // ignore: cast_nullable_to_non_nullable
              as Either<GameInvitationFailure, KtList<GameInvitation>>,
    ));
  }
}

/// @nodoc

class _$_InvitationsReceived implements _InvitationsReceived {
  const _$_InvitationsReceived(this.failureOrInvitations);

  @override
  final Either<GameInvitationFailure, KtList<GameInvitation>>
      failureOrInvitations;

  @override
  String toString() {
    return 'HomeEvent.invitationsReceived(failureOrInvitations: $failureOrInvitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvitationsReceived &&
            (identical(other.failureOrInvitations, failureOrInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrInvitations, failureOrInvitations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrInvitations);

  @JsonKey(ignore: true)
  @override
  _$InvitationsReceivedCopyWith<_InvitationsReceived> get copyWith =>
      __$InvitationsReceivedCopyWithImpl<_InvitationsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(
            Either<GameInvitationFailure, KtList<GameInvitation>>
                failureOrInvitations)
        invitationsReceived,
    required TResult Function(
            Either<FriendFailure, KtList<FriendRequest>>
                failureOrFriendRequests)
        friendRequestsReceived,
    required TResult Function(Either<UserFailure, User> failureOrUser)
        userReceived,
  }) {
    return invitationsReceived(failureOrInvitations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(
            Either<GameInvitationFailure, KtList<GameInvitation>>
                failureOrInvitations)?
        invitationsReceived,
    TResult Function(
            Either<FriendFailure, KtList<FriendRequest>>
                failureOrFriendRequests)?
        friendRequestsReceived,
    TResult Function(Either<UserFailure, User> failureOrUser)? userReceived,
    required TResult orElse(),
  }) {
    if (invitationsReceived != null) {
      return invitationsReceived(failureOrInvitations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_InvitationsReceived value) invitationsReceived,
    required TResult Function(_FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(_UserReceived value) userReceived,
  }) {
    return invitationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_InvitationsReceived value)? invitationsReceived,
    TResult Function(_FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(_UserReceived value)? userReceived,
    required TResult orElse(),
  }) {
    if (invitationsReceived != null) {
      return invitationsReceived(this);
    }
    return orElse();
  }
}

abstract class _InvitationsReceived implements HomeEvent {
  const factory _InvitationsReceived(
      Either<GameInvitationFailure, KtList<GameInvitation>>
          failureOrInvitations) = _$_InvitationsReceived;

  Either<GameInvitationFailure, KtList<GameInvitation>>
      get failureOrInvitations => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InvitationsReceivedCopyWith<_InvitationsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FriendRequestsReceivedCopyWith<$Res> {
  factory _$FriendRequestsReceivedCopyWith(_FriendRequestsReceived value,
          $Res Function(_FriendRequestsReceived) then) =
      __$FriendRequestsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<FriendFailure, KtList<FriendRequest>> failureOrFriendRequests});
}

/// @nodoc
class __$FriendRequestsReceivedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$FriendRequestsReceivedCopyWith<$Res> {
  __$FriendRequestsReceivedCopyWithImpl(_FriendRequestsReceived _value,
      $Res Function(_FriendRequestsReceived) _then)
      : super(_value, (v) => _then(v as _FriendRequestsReceived));

  @override
  _FriendRequestsReceived get _value => super._value as _FriendRequestsReceived;

  @override
  $Res call({
    Object? failureOrFriendRequests = freezed,
  }) {
    return _then(_FriendRequestsReceived(
      failureOrFriendRequests == freezed
          ? _value.failureOrFriendRequests
          : failureOrFriendRequests // ignore: cast_nullable_to_non_nullable
              as Either<FriendFailure, KtList<FriendRequest>>,
    ));
  }
}

/// @nodoc

class _$_FriendRequestsReceived implements _FriendRequestsReceived {
  const _$_FriendRequestsReceived(this.failureOrFriendRequests);

  @override
  final Either<FriendFailure, KtList<FriendRequest>> failureOrFriendRequests;

  @override
  String toString() {
    return 'HomeEvent.friendRequestsReceived(failureOrFriendRequests: $failureOrFriendRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FriendRequestsReceived &&
            (identical(
                    other.failureOrFriendRequests, failureOrFriendRequests) ||
                const DeepCollectionEquality().equals(
                    other.failureOrFriendRequests, failureOrFriendRequests)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrFriendRequests);

  @JsonKey(ignore: true)
  @override
  _$FriendRequestsReceivedCopyWith<_FriendRequestsReceived> get copyWith =>
      __$FriendRequestsReceivedCopyWithImpl<_FriendRequestsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(
            Either<GameInvitationFailure, KtList<GameInvitation>>
                failureOrInvitations)
        invitationsReceived,
    required TResult Function(
            Either<FriendFailure, KtList<FriendRequest>>
                failureOrFriendRequests)
        friendRequestsReceived,
    required TResult Function(Either<UserFailure, User> failureOrUser)
        userReceived,
  }) {
    return friendRequestsReceived(failureOrFriendRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(
            Either<GameInvitationFailure, KtList<GameInvitation>>
                failureOrInvitations)?
        invitationsReceived,
    TResult Function(
            Either<FriendFailure, KtList<FriendRequest>>
                failureOrFriendRequests)?
        friendRequestsReceived,
    TResult Function(Either<UserFailure, User> failureOrUser)? userReceived,
    required TResult orElse(),
  }) {
    if (friendRequestsReceived != null) {
      return friendRequestsReceived(failureOrFriendRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_InvitationsReceived value) invitationsReceived,
    required TResult Function(_FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(_UserReceived value) userReceived,
  }) {
    return friendRequestsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_InvitationsReceived value)? invitationsReceived,
    TResult Function(_FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(_UserReceived value)? userReceived,
    required TResult orElse(),
  }) {
    if (friendRequestsReceived != null) {
      return friendRequestsReceived(this);
    }
    return orElse();
  }
}

abstract class _FriendRequestsReceived implements HomeEvent {
  const factory _FriendRequestsReceived(
      Either<FriendFailure, KtList<FriendRequest>>
          failureOrFriendRequests) = _$_FriendRequestsReceived;

  Either<FriendFailure, KtList<FriendRequest>> get failureOrFriendRequests =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FriendRequestsReceivedCopyWith<_FriendRequestsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UserReceivedCopyWith<$Res> {
  factory _$UserReceivedCopyWith(
          _UserReceived value, $Res Function(_UserReceived) then) =
      __$UserReceivedCopyWithImpl<$Res>;
  $Res call({Either<UserFailure, User> failureOrUser});
}

/// @nodoc
class __$UserReceivedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$UserReceivedCopyWith<$Res> {
  __$UserReceivedCopyWithImpl(
      _UserReceived _value, $Res Function(_UserReceived) _then)
      : super(_value, (v) => _then(v as _UserReceived));

  @override
  _UserReceived get _value => super._value as _UserReceived;

  @override
  $Res call({
    Object? failureOrUser = freezed,
  }) {
    return _then(_UserReceived(
      failureOrUser == freezed
          ? _value.failureOrUser
          : failureOrUser // ignore: cast_nullable_to_non_nullable
              as Either<UserFailure, User>,
    ));
  }
}

/// @nodoc

class _$_UserReceived implements _UserReceived {
  const _$_UserReceived(this.failureOrUser);

  @override
  final Either<UserFailure, User> failureOrUser;

  @override
  String toString() {
    return 'HomeEvent.userReceived(failureOrUser: $failureOrUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserReceived &&
            (identical(other.failureOrUser, failureOrUser) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrUser, failureOrUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrUser);

  @JsonKey(ignore: true)
  @override
  _$UserReceivedCopyWith<_UserReceived> get copyWith =>
      __$UserReceivedCopyWithImpl<_UserReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(
            Either<GameInvitationFailure, KtList<GameInvitation>>
                failureOrInvitations)
        invitationsReceived,
    required TResult Function(
            Either<FriendFailure, KtList<FriendRequest>>
                failureOrFriendRequests)
        friendRequestsReceived,
    required TResult Function(Either<UserFailure, User> failureOrUser)
        userReceived,
  }) {
    return userReceived(failureOrUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(
            Either<GameInvitationFailure, KtList<GameInvitation>>
                failureOrInvitations)?
        invitationsReceived,
    TResult Function(
            Either<FriendFailure, KtList<FriendRequest>>
                failureOrFriendRequests)?
        friendRequestsReceived,
    TResult Function(Either<UserFailure, User> failureOrUser)? userReceived,
    required TResult orElse(),
  }) {
    if (userReceived != null) {
      return userReceived(failureOrUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_InvitationsReceived value) invitationsReceived,
    required TResult Function(_FriendRequestsReceived value)
        friendRequestsReceived,
    required TResult Function(_UserReceived value) userReceived,
  }) {
    return userReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_InvitationsReceived value)? invitationsReceived,
    TResult Function(_FriendRequestsReceived value)? friendRequestsReceived,
    TResult Function(_UserReceived value)? userReceived,
    required TResult orElse(),
  }) {
    if (userReceived != null) {
      return userReceived(this);
    }
    return orElse();
  }
}

abstract class _UserReceived implements HomeEvent {
  const factory _UserReceived(Either<UserFailure, User> failureOrUser) =
      _$_UserReceived;

  Either<UserFailure, User> get failureOrUser =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UserReceivedCopyWith<_UserReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {required bool loading,
      required bool error,
      int? newFriendRequests,
      int? newGameInvitations,
      User? user}) {
    return _HomeState(
      loading: loading,
      error: error,
      newFriendRequests: newFriendRequests,
      newGameInvitations: newGameInvitations,
      user: user,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  int? get newFriendRequests => throw _privateConstructorUsedError;
  int? get newGameInvitations => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading,
      bool error,
      int? newFriendRequests,
      int? newGameInvitations,
      User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? newFriendRequests = freezed,
    Object? newGameInvitations = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      newFriendRequests: newFriendRequests == freezed
          ? _value.newFriendRequests
          : newFriendRequests // ignore: cast_nullable_to_non_nullable
              as int?,
      newGameInvitations: newGameInvitations == freezed
          ? _value.newGameInvitations
          : newGameInvitations // ignore: cast_nullable_to_non_nullable
              as int?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      bool error,
      int? newFriendRequests,
      int? newGameInvitations,
      User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? newFriendRequests = freezed,
    Object? newGameInvitations = freezed,
    Object? user = freezed,
  }) {
    return _then(_HomeState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      newFriendRequests: newFriendRequests == freezed
          ? _value.newFriendRequests
          : newFriendRequests // ignore: cast_nullable_to_non_nullable
              as int?,
      newGameInvitations: newGameInvitations == freezed
          ? _value.newGameInvitations
          : newGameInvitations // ignore: cast_nullable_to_non_nullable
              as int?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.loading,
      required this.error,
      this.newFriendRequests,
      this.newGameInvitations,
      this.user});

  @override
  final bool loading;
  @override
  final bool error;
  @override
  final int? newFriendRequests;
  @override
  final int? newGameInvitations;
  @override
  final User? user;

  @override
  String toString() {
    return 'HomeState(loading: $loading, error: $error, newFriendRequests: $newFriendRequests, newGameInvitations: $newGameInvitations, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.newFriendRequests, newFriendRequests) ||
                const DeepCollectionEquality()
                    .equals(other.newFriendRequests, newFriendRequests)) &&
            (identical(other.newGameInvitations, newGameInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.newGameInvitations, newGameInvitations)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(newFriendRequests) ^
      const DeepCollectionEquality().hash(newGameInvitations) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required bool loading,
      required bool error,
      int? newFriendRequests,
      int? newGameInvitations,
      User? user}) = _$_HomeState;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get error => throw _privateConstructorUsedError;
  @override
  int? get newFriendRequests => throw _privateConstructorUsedError;
  @override
  int? get newGameInvitations => throw _privateConstructorUsedError;
  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
