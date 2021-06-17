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

  WatchDataStarted watchDataStarted() {
    return const WatchDataStarted();
  }

  DataReceived dataReceived(
      {required KtList<FriendRequest> friendRequests,
      required KtList<GameInvitation> gameInvitations,
      required User user}) {
    return DataReceived(
      friendRequests: friendRequests,
      gameInvitations: gameInvitations,
      user: user,
    );
  }

  FailureReceived failureReceived() {
    return const FailureReceived();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitations, User user)
        dataReceived,
    required TResult Function() failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitations, User user)?
        dataReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchDataStarted value) watchDataStarted,
    required TResult Function(DataReceived value) dataReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(DataReceived value)? dataReceived,
    TResult Function(FailureReceived value)? failureReceived,
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
abstract class $WatchDataStartedCopyWith<$Res> {
  factory $WatchDataStartedCopyWith(
          WatchDataStarted value, $Res Function(WatchDataStarted) then) =
      _$WatchDataStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchDataStartedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $WatchDataStartedCopyWith<$Res> {
  _$WatchDataStartedCopyWithImpl(
      WatchDataStarted _value, $Res Function(WatchDataStarted) _then)
      : super(_value, (v) => _then(v as WatchDataStarted));

  @override
  WatchDataStarted get _value => super._value as WatchDataStarted;
}

/// @nodoc

class _$WatchDataStarted implements WatchDataStarted {
  const _$WatchDataStarted();

  @override
  String toString() {
    return 'HomeEvent.watchDataStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WatchDataStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitations, User user)
        dataReceived,
    required TResult Function() failureReceived,
  }) {
    return watchDataStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitations, User user)?
        dataReceived,
    TResult Function()? failureReceived,
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
    required TResult Function(WatchDataStarted value) watchDataStarted,
    required TResult Function(DataReceived value) dataReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return watchDataStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(DataReceived value)? dataReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (watchDataStarted != null) {
      return watchDataStarted(this);
    }
    return orElse();
  }
}

abstract class WatchDataStarted implements HomeEvent {
  const factory WatchDataStarted() = _$WatchDataStarted;
}

/// @nodoc
abstract class $DataReceivedCopyWith<$Res> {
  factory $DataReceivedCopyWith(
          DataReceived value, $Res Function(DataReceived) then) =
      _$DataReceivedCopyWithImpl<$Res>;
  $Res call(
      {KtList<FriendRequest> friendRequests,
      KtList<GameInvitation> gameInvitations,
      User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$DataReceivedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $DataReceivedCopyWith<$Res> {
  _$DataReceivedCopyWithImpl(
      DataReceived _value, $Res Function(DataReceived) _then)
      : super(_value, (v) => _then(v as DataReceived));

  @override
  DataReceived get _value => super._value as DataReceived;

  @override
  $Res call({
    Object? friendRequests = freezed,
    Object? gameInvitations = freezed,
    Object? user = freezed,
  }) {
    return _then(DataReceived(
      friendRequests: friendRequests == freezed
          ? _value.friendRequests
          : friendRequests // ignore: cast_nullable_to_non_nullable
              as KtList<FriendRequest>,
      gameInvitations: gameInvitations == freezed
          ? _value.gameInvitations
          : gameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$DataReceived implements DataReceived {
  const _$DataReceived(
      {required this.friendRequests,
      required this.gameInvitations,
      required this.user});

  @override
  final KtList<FriendRequest> friendRequests;
  @override
  final KtList<GameInvitation> gameInvitations;
  @override
  final User user;

  @override
  String toString() {
    return 'HomeEvent.dataReceived(friendRequests: $friendRequests, gameInvitations: $gameInvitations, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataReceived &&
            (identical(other.friendRequests, friendRequests) ||
                const DeepCollectionEquality()
                    .equals(other.friendRequests, friendRequests)) &&
            (identical(other.gameInvitations, gameInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.gameInvitations, gameInvitations)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(friendRequests) ^
      const DeepCollectionEquality().hash(gameInvitations) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $DataReceivedCopyWith<DataReceived> get copyWith =>
      _$DataReceivedCopyWithImpl<DataReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitations, User user)
        dataReceived,
    required TResult Function() failureReceived,
  }) {
    return dataReceived(friendRequests, gameInvitations, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitations, User user)?
        dataReceived,
    TResult Function()? failureReceived,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(friendRequests, gameInvitations, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchDataStarted value) watchDataStarted,
    required TResult Function(DataReceived value) dataReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return dataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(DataReceived value)? dataReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(this);
    }
    return orElse();
  }
}

abstract class DataReceived implements HomeEvent {
  const factory DataReceived(
      {required KtList<FriendRequest> friendRequests,
      required KtList<GameInvitation> gameInvitations,
      required User user}) = _$DataReceived;

  KtList<FriendRequest> get friendRequests =>
      throw _privateConstructorUsedError;
  KtList<GameInvitation> get gameInvitations =>
      throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataReceivedCopyWith<DataReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureReceivedCopyWith<$Res> {
  factory $FailureReceivedCopyWith(
          FailureReceived value, $Res Function(FailureReceived) then) =
      _$FailureReceivedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureReceivedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
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
    return 'HomeEvent.failureReceived()';
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
    required TResult Function() watchDataStarted,
    required TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitations, User user)
        dataReceived,
    required TResult Function() failureReceived,
  }) {
    return failureReceived();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitations, User user)?
        dataReceived,
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
    required TResult Function(WatchDataStarted value) watchDataStarted,
    required TResult Function(DataReceived value) dataReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return failureReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchDataStarted value)? watchDataStarted,
    TResult Function(DataReceived value)? dataReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (failureReceived != null) {
      return failureReceived(this);
    }
    return orElse();
  }
}

abstract class FailureReceived implements HomeEvent {
  const factory FailureReceived() = _$FailureReceived;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  LoadSuccess loadSuccess(
      {required KtList<FriendRequest> friendRequests,
      required KtList<GameInvitation> gameInvitations,
      required User user}) {
    return LoadSuccess(
      friendRequests: friendRequests,
      gameInvitations: gameInvitations,
      user: user,
    );
  }

  LoadFailure loadFailure() {
    return const LoadFailure();
  }

  Initial initial() {
    return const Initial();
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitations, User user)
        loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitations, User user)?
        loadSuccess,
    TResult Function()? loadFailure,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {KtList<FriendRequest> friendRequests,
      KtList<GameInvitation> gameInvitations,
      User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object? friendRequests = freezed,
    Object? gameInvitations = freezed,
    Object? user = freezed,
  }) {
    return _then(LoadSuccess(
      friendRequests: friendRequests == freezed
          ? _value.friendRequests
          : friendRequests // ignore: cast_nullable_to_non_nullable
              as KtList<FriendRequest>,
      gameInvitations: gameInvitations == freezed
          ? _value.gameInvitations
          : gameInvitations // ignore: cast_nullable_to_non_nullable
              as KtList<GameInvitation>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(
      {required this.friendRequests,
      required this.gameInvitations,
      required this.user});

  @override
  final KtList<FriendRequest> friendRequests;
  @override
  final KtList<GameInvitation> gameInvitations;
  @override
  final User user;

  @override
  String toString() {
    return 'HomeState.loadSuccess(friendRequests: $friendRequests, gameInvitations: $gameInvitations, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.friendRequests, friendRequests) ||
                const DeepCollectionEquality()
                    .equals(other.friendRequests, friendRequests)) &&
            (identical(other.gameInvitations, gameInvitations) ||
                const DeepCollectionEquality()
                    .equals(other.gameInvitations, gameInvitations)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(friendRequests) ^
      const DeepCollectionEquality().hash(gameInvitations) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitations, User user)
        loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function() initial,
  }) {
    return loadSuccess(friendRequests, gameInvitations, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitations, User user)?
        loadSuccess,
    TResult Function()? loadFailure,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(friendRequests, gameInvitations, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
    required TResult Function(Initial value) initial,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements HomeState {
  const factory LoadSuccess(
      {required KtList<FriendRequest> friendRequests,
      required KtList<GameInvitation> gameInvitations,
      required User user}) = _$LoadSuccess;

  KtList<FriendRequest> get friendRequests =>
      throw _privateConstructorUsedError;
  KtList<GameInvitation> get gameInvitations =>
      throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
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
class _$LoadFailureCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
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
    return 'HomeState.loadFailure()';
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
    required TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitations, User user)
        loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function() initial,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitations, User user)?
        loadSuccess,
    TResult Function()? loadFailure,
    TResult Function()? initial,
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
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
    required TResult Function(Initial value) initial,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements HomeState {
  const factory LoadFailure() = _$LoadFailure;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitations, User user)
        loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitations, User user)?
        loadSuccess,
    TResult Function()? loadFailure,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
    required TResult Function(Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements HomeState {
  const factory Initial() = _$Initial;
}
