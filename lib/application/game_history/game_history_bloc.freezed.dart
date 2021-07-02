// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'game_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameHistoryEventTearOff {
  const _$GameHistoryEventTearOff();

  WatchStarted watchStarted() {
    return const WatchStarted();
  }

  UserReceived userReceived({required User user}) {
    return UserReceived(
      user: user,
    );
  }
}

/// @nodoc
const $GameHistoryEvent = _$GameHistoryEventTearOff();

/// @nodoc
mixin _$GameHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(User user) userReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(User user)? userReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(UserReceived value) userReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(UserReceived value)? userReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameHistoryEventCopyWith<$Res> {
  factory $GameHistoryEventCopyWith(
          GameHistoryEvent value, $Res Function(GameHistoryEvent) then) =
      _$GameHistoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameHistoryEventCopyWithImpl<$Res>
    implements $GameHistoryEventCopyWith<$Res> {
  _$GameHistoryEventCopyWithImpl(this._value, this._then);

  final GameHistoryEvent _value;
  // ignore: unused_field
  final $Res Function(GameHistoryEvent) _then;
}

/// @nodoc
abstract class $WatchStartedCopyWith<$Res> {
  factory $WatchStartedCopyWith(
          WatchStarted value, $Res Function(WatchStarted) then) =
      _$WatchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchStartedCopyWithImpl<$Res>
    extends _$GameHistoryEventCopyWithImpl<$Res>
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
    return 'GameHistoryEvent.watchStarted()';
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
    required TResult Function(User user) userReceived,
  }) {
    return watchStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(User user)? userReceived,
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
    required TResult Function(UserReceived value) userReceived,
  }) {
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(UserReceived value)? userReceived,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted(this);
    }
    return orElse();
  }
}

abstract class WatchStarted implements GameHistoryEvent {
  const factory WatchStarted() = _$WatchStarted;
}

/// @nodoc
abstract class $UserReceivedCopyWith<$Res> {
  factory $UserReceivedCopyWith(
          UserReceived value, $Res Function(UserReceived) then) =
      _$UserReceivedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserReceivedCopyWithImpl<$Res>
    extends _$GameHistoryEventCopyWithImpl<$Res>
    implements $UserReceivedCopyWith<$Res> {
  _$UserReceivedCopyWithImpl(
      UserReceived _value, $Res Function(UserReceived) _then)
      : super(_value, (v) => _then(v as UserReceived));

  @override
  UserReceived get _value => super._value as UserReceived;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(UserReceived(
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

class _$UserReceived implements UserReceived {
  const _$UserReceived({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'GameHistoryEvent.userReceived(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserReceived &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $UserReceivedCopyWith<UserReceived> get copyWith =>
      _$UserReceivedCopyWithImpl<UserReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(User user) userReceived,
  }) {
    return userReceived(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(User user)? userReceived,
    required TResult orElse(),
  }) {
    if (userReceived != null) {
      return userReceived(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(UserReceived value) userReceived,
  }) {
    return userReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(UserReceived value)? userReceived,
    required TResult orElse(),
  }) {
    if (userReceived != null) {
      return userReceived(this);
    }
    return orElse();
  }
}

abstract class UserReceived implements GameHistoryEvent {
  const factory UserReceived({required User user}) = _$UserReceived;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserReceivedCopyWith<UserReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GameHistoryStateTearOff {
  const _$GameHistoryStateTearOff();

  _GameHistoryState call({required User user}) {
    return _GameHistoryState(
      user: user,
    );
  }
}

/// @nodoc
const $GameHistoryState = _$GameHistoryStateTearOff();

/// @nodoc
mixin _$GameHistoryState {
  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameHistoryStateCopyWith<GameHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameHistoryStateCopyWith<$Res> {
  factory $GameHistoryStateCopyWith(
          GameHistoryState value, $Res Function(GameHistoryState) then) =
      _$GameHistoryStateCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$GameHistoryStateCopyWithImpl<$Res>
    implements $GameHistoryStateCopyWith<$Res> {
  _$GameHistoryStateCopyWithImpl(this._value, this._then);

  final GameHistoryState _value;
  // ignore: unused_field
  final $Res Function(GameHistoryState) _then;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$GameHistoryStateCopyWith<$Res>
    implements $GameHistoryStateCopyWith<$Res> {
  factory _$GameHistoryStateCopyWith(
          _GameHistoryState value, $Res Function(_GameHistoryState) then) =
      __$GameHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$GameHistoryStateCopyWithImpl<$Res>
    extends _$GameHistoryStateCopyWithImpl<$Res>
    implements _$GameHistoryStateCopyWith<$Res> {
  __$GameHistoryStateCopyWithImpl(
      _GameHistoryState _value, $Res Function(_GameHistoryState) _then)
      : super(_value, (v) => _then(v as _GameHistoryState));

  @override
  _GameHistoryState get _value => super._value as _GameHistoryState;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_GameHistoryState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_GameHistoryState implements _GameHistoryState {
  const _$_GameHistoryState({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'GameHistoryState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameHistoryState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$GameHistoryStateCopyWith<_GameHistoryState> get copyWith =>
      __$GameHistoryStateCopyWithImpl<_GameHistoryState>(this, _$identity);
}

abstract class _GameHistoryState implements GameHistoryState {
  const factory _GameHistoryState({required User user}) = _$_GameHistoryState;

  @override
  User get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GameHistoryStateCopyWith<_GameHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
