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

  _DataReceived dataReceived(List<Object>? data) {
    return _DataReceived(
      data,
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
    required TResult Function(List<Object>? data) dataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(List<Object>? data)? dataReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_DataReceived value) dataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_DataReceived value)? dataReceived,
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
    required TResult Function(List<Object>? data) dataReceived,
  }) {
    return watchDataStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(List<Object>? data)? dataReceived,
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
    required TResult Function(_DataReceived value) dataReceived,
  }) {
    return watchDataStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_DataReceived value)? dataReceived,
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
abstract class _$DataReceivedCopyWith<$Res> {
  factory _$DataReceivedCopyWith(
          _DataReceived value, $Res Function(_DataReceived) then) =
      __$DataReceivedCopyWithImpl<$Res>;
  $Res call({List<Object>? data});
}

/// @nodoc
class __$DataReceivedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$DataReceivedCopyWith<$Res> {
  __$DataReceivedCopyWithImpl(
      _DataReceived _value, $Res Function(_DataReceived) _then)
      : super(_value, (v) => _then(v as _DataReceived));

  @override
  _DataReceived get _value => super._value as _DataReceived;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_DataReceived(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Object>?,
    ));
  }
}

/// @nodoc

class _$_DataReceived implements _DataReceived {
  const _$_DataReceived(this.data);

  @override
  final List<Object>? data;

  @override
  String toString() {
    return 'HomeEvent.dataReceived(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataReceived &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$DataReceivedCopyWith<_DataReceived> get copyWith =>
      __$DataReceivedCopyWithImpl<_DataReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(List<Object>? data) dataReceived,
  }) {
    return dataReceived(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(List<Object>? data)? dataReceived,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_DataReceived value) dataReceived,
  }) {
    return dataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_DataReceived value)? dataReceived,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(this);
    }
    return orElse();
  }
}

abstract class _DataReceived implements HomeEvent {
  const factory _DataReceived(List<Object>? data) = _$_DataReceived;

  List<Object>? get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataReceivedCopyWith<_DataReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  LoadInProgess loadInProgess() {
    return const LoadInProgess();
  }

  LoadSuccess loadSuccess(
      {required KtList<FriendRequest> friendRequests,
      required KtList<GameInvitation> gameInvitation,
      required User user}) {
    return LoadSuccess(
      friendRequests: friendRequests,
      gameInvitation: gameInvitation,
      user: user,
    );
  }

  LoadFailure loadFailure() {
    return const LoadFailure();
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgess,
    required TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitation, User user)
        loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgess,
    TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitation, User user)?
        loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInProgess value) loadInProgess,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInProgess value)? loadInProgess,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
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
abstract class $LoadInProgessCopyWith<$Res> {
  factory $LoadInProgessCopyWith(
          LoadInProgess value, $Res Function(LoadInProgess) then) =
      _$LoadInProgessCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadInProgessCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $LoadInProgessCopyWith<$Res> {
  _$LoadInProgessCopyWithImpl(
      LoadInProgess _value, $Res Function(LoadInProgess) _then)
      : super(_value, (v) => _then(v as LoadInProgess));

  @override
  LoadInProgess get _value => super._value as LoadInProgess;
}

/// @nodoc

class _$LoadInProgess implements LoadInProgess {
  const _$LoadInProgess();

  @override
  String toString() {
    return 'HomeState.loadInProgess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadInProgess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgess,
    required TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitation, User user)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadInProgess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgess,
    TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitation, User user)?
        loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgess != null) {
      return loadInProgess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInProgess value) loadInProgess,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadInProgess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInProgess value)? loadInProgess,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgess != null) {
      return loadInProgess(this);
    }
    return orElse();
  }
}

abstract class LoadInProgess implements HomeState {
  const factory LoadInProgess() = _$LoadInProgess;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {KtList<FriendRequest> friendRequests,
      KtList<GameInvitation> gameInvitation,
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
    Object? gameInvitation = freezed,
    Object? user = freezed,
  }) {
    return _then(LoadSuccess(
      friendRequests: friendRequests == freezed
          ? _value.friendRequests
          : friendRequests // ignore: cast_nullable_to_non_nullable
              as KtList<FriendRequest>,
      gameInvitation: gameInvitation == freezed
          ? _value.gameInvitation
          : gameInvitation // ignore: cast_nullable_to_non_nullable
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
      required this.gameInvitation,
      required this.user});

  @override
  final KtList<FriendRequest> friendRequests;
  @override
  final KtList<GameInvitation> gameInvitation;
  @override
  final User user;

  @override
  String toString() {
    return 'HomeState.loadSuccess(friendRequests: $friendRequests, gameInvitation: $gameInvitation, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.friendRequests, friendRequests) ||
                const DeepCollectionEquality()
                    .equals(other.friendRequests, friendRequests)) &&
            (identical(other.gameInvitation, gameInvitation) ||
                const DeepCollectionEquality()
                    .equals(other.gameInvitation, gameInvitation)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(friendRequests) ^
      const DeepCollectionEquality().hash(gameInvitation) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgess,
    required TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitation, User user)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(friendRequests, gameInvitation, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgess,
    TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitation, User user)?
        loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(friendRequests, gameInvitation, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInProgess value) loadInProgess,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInProgess value)? loadInProgess,
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

abstract class LoadSuccess implements HomeState {
  const factory LoadSuccess(
      {required KtList<FriendRequest> friendRequests,
      required KtList<GameInvitation> gameInvitation,
      required User user}) = _$LoadSuccess;

  KtList<FriendRequest> get friendRequests =>
      throw _privateConstructorUsedError;
  KtList<GameInvitation> get gameInvitation =>
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
    required TResult Function() loadInProgess,
    required TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitation, User user)
        loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgess,
    TResult Function(KtList<FriendRequest> friendRequests,
            KtList<GameInvitation> gameInvitation, User user)?
        loadSuccess,
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
    required TResult Function(LoadInProgess value) loadInProgess,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInProgess value)? loadInProgess,
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

abstract class LoadFailure implements HomeState {
  const factory LoadFailure() = _$LoadFailure;
}
