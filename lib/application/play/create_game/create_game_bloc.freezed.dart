// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateGameEventTearOff {
  const _$CreateGameEventTearOff();

  _WatchDataStarted watchDataStarted() {
    return const _WatchDataStarted();
  }

  _SnapshotReceived snapshotReceived(Game game) {
    return _SnapshotReceived(
      game,
    );
  }
}

/// @nodoc
const $CreateGameEvent = _$CreateGameEventTearOff();

/// @nodoc
mixin _$CreateGameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(Game game) snapshotReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(Game game)? snapshotReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGameEventCopyWith<$Res> {
  factory $CreateGameEventCopyWith(
          CreateGameEvent value, $Res Function(CreateGameEvent) then) =
      _$CreateGameEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateGameEventCopyWithImpl<$Res>
    implements $CreateGameEventCopyWith<$Res> {
  _$CreateGameEventCopyWithImpl(this._value, this._then);

  final CreateGameEvent _value;
  // ignore: unused_field
  final $Res Function(CreateGameEvent) _then;
}

/// @nodoc
abstract class _$WatchDataStartedCopyWith<$Res> {
  factory _$WatchDataStartedCopyWith(
          _WatchDataStarted value, $Res Function(_WatchDataStarted) then) =
      __$WatchDataStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchDataStartedCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res>
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
    return 'CreateGameEvent.watchDataStarted()';
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
    required TResult Function(Game game) snapshotReceived,
  }) {
    return watchDataStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(Game game)? snapshotReceived,
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
    required TResult Function(_SnapshotReceived value) snapshotReceived,
  }) {
    return watchDataStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (watchDataStarted != null) {
      return watchDataStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchDataStarted implements CreateGameEvent {
  const factory _WatchDataStarted() = _$_WatchDataStarted;
}

/// @nodoc
abstract class _$SnapshotReceivedCopyWith<$Res> {
  factory _$SnapshotReceivedCopyWith(
          _SnapshotReceived value, $Res Function(_SnapshotReceived) then) =
      __$SnapshotReceivedCopyWithImpl<$Res>;
  $Res call({Game game});

  $GameCopyWith<$Res> get game;
}

/// @nodoc
class __$SnapshotReceivedCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res>
    implements _$SnapshotReceivedCopyWith<$Res> {
  __$SnapshotReceivedCopyWithImpl(
      _SnapshotReceived _value, $Res Function(_SnapshotReceived) _then)
      : super(_value, (v) => _then(v as _SnapshotReceived));

  @override
  _SnapshotReceived get _value => super._value as _SnapshotReceived;

  @override
  $Res call({
    Object? game = freezed,
  }) {
    return _then(_SnapshotReceived(
      game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
    ));
  }

  @override
  $GameCopyWith<$Res> get game {
    return $GameCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value));
    });
  }
}

/// @nodoc
class _$_SnapshotReceived implements _SnapshotReceived {
  const _$_SnapshotReceived(this.game);

  @override
  final Game game;

  @override
  String toString() {
    return 'CreateGameEvent.snapshotReceived(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SnapshotReceived &&
            (identical(other.game, game) ||
                const DeepCollectionEquality().equals(other.game, game)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(game);

  @JsonKey(ignore: true)
  @override
  _$SnapshotReceivedCopyWith<_SnapshotReceived> get copyWith =>
      __$SnapshotReceivedCopyWithImpl<_SnapshotReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(Game game) snapshotReceived,
  }) {
    return snapshotReceived(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(Game game)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (snapshotReceived != null) {
      return snapshotReceived(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
  }) {
    return snapshotReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    required TResult orElse(),
  }) {
    if (snapshotReceived != null) {
      return snapshotReceived(this);
    }
    return orElse();
  }
}

abstract class _SnapshotReceived implements CreateGameEvent {
  const factory _SnapshotReceived(Game game) = _$_SnapshotReceived;

  Game get game => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SnapshotReceivedCopyWith<_SnapshotReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreateGameStateTearOff {
  const _$CreateGameStateTearOff();

  _Initial initial() {
    return const _Initial();
  }
}

/// @nodoc
const $CreateGameState = _$CreateGameStateTearOff();

/// @nodoc
mixin _$CreateGameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGameStateCopyWith<$Res> {
  factory $CreateGameStateCopyWith(
          CreateGameState value, $Res Function(CreateGameState) then) =
      _$CreateGameStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateGameStateCopyWithImpl<$Res>
    implements $CreateGameStateCopyWith<$Res> {
  _$CreateGameStateCopyWithImpl(this._value, this._then);

  final CreateGameState _value;
  // ignore: unused_field
  final $Res Function(CreateGameState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CreateGameStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CreateGameState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateGameState {
  const factory _Initial() = _$_Initial;
}
