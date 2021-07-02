// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'post_game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostGameEventTearOff {
  const _$PostGameEventTearOff();

  WatchStarted watchStarted() {
    return const WatchStarted();
  }

  ReceivedGame receivedGame({required Game game}) {
    return ReceivedGame(
      game: game,
    );
  }
}

/// @nodoc
const $PostGameEvent = _$PostGameEventTearOff();

/// @nodoc
mixin _$PostGameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(Game game) receivedGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(Game game)? receivedGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(ReceivedGame value) receivedGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(ReceivedGame value)? receivedGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostGameEventCopyWith<$Res> {
  factory $PostGameEventCopyWith(
          PostGameEvent value, $Res Function(PostGameEvent) then) =
      _$PostGameEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostGameEventCopyWithImpl<$Res>
    implements $PostGameEventCopyWith<$Res> {
  _$PostGameEventCopyWithImpl(this._value, this._then);

  final PostGameEvent _value;
  // ignore: unused_field
  final $Res Function(PostGameEvent) _then;
}

/// @nodoc
abstract class $WatchStartedCopyWith<$Res> {
  factory $WatchStartedCopyWith(
          WatchStarted value, $Res Function(WatchStarted) then) =
      _$WatchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchStartedCopyWithImpl<$Res> extends _$PostGameEventCopyWithImpl<$Res>
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
    return 'PostGameEvent.watchStarted()';
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
    required TResult Function(Game game) receivedGame,
  }) {
    return watchStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(Game game)? receivedGame,
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
    required TResult Function(ReceivedGame value) receivedGame,
  }) {
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(ReceivedGame value)? receivedGame,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted(this);
    }
    return orElse();
  }
}

abstract class WatchStarted implements PostGameEvent {
  const factory WatchStarted() = _$WatchStarted;
}

/// @nodoc
abstract class $ReceivedGameCopyWith<$Res> {
  factory $ReceivedGameCopyWith(
          ReceivedGame value, $Res Function(ReceivedGame) then) =
      _$ReceivedGameCopyWithImpl<$Res>;
  $Res call({Game game});

  $GameCopyWith<$Res> get game;
}

/// @nodoc
class _$ReceivedGameCopyWithImpl<$Res> extends _$PostGameEventCopyWithImpl<$Res>
    implements $ReceivedGameCopyWith<$Res> {
  _$ReceivedGameCopyWithImpl(
      ReceivedGame _value, $Res Function(ReceivedGame) _then)
      : super(_value, (v) => _then(v as ReceivedGame));

  @override
  ReceivedGame get _value => super._value as ReceivedGame;

  @override
  $Res call({
    Object? game = freezed,
  }) {
    return _then(ReceivedGame(
      game: game == freezed
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

class _$ReceivedGame implements ReceivedGame {
  const _$ReceivedGame({required this.game});

  @override
  final Game game;

  @override
  String toString() {
    return 'PostGameEvent.receivedGame(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReceivedGame &&
            (identical(other.game, game) ||
                const DeepCollectionEquality().equals(other.game, game)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(game);

  @JsonKey(ignore: true)
  @override
  $ReceivedGameCopyWith<ReceivedGame> get copyWith =>
      _$ReceivedGameCopyWithImpl<ReceivedGame>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(Game game) receivedGame,
  }) {
    return receivedGame(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(Game game)? receivedGame,
    required TResult orElse(),
  }) {
    if (receivedGame != null) {
      return receivedGame(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(ReceivedGame value) receivedGame,
  }) {
    return receivedGame(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(ReceivedGame value)? receivedGame,
    required TResult orElse(),
  }) {
    if (receivedGame != null) {
      return receivedGame(this);
    }
    return orElse();
  }
}

abstract class ReceivedGame implements PostGameEvent {
  const factory ReceivedGame({required Game game}) = _$ReceivedGame;

  Game get game => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceivedGameCopyWith<ReceivedGame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PostGameStateTearOff {
  const _$PostGameStateTearOff();

  _PostGameState call({required Game game}) {
    return _PostGameState(
      game: game,
    );
  }
}

/// @nodoc
const $PostGameState = _$PostGameStateTearOff();

/// @nodoc
mixin _$PostGameState {
  Game get game => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostGameStateCopyWith<PostGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostGameStateCopyWith<$Res> {
  factory $PostGameStateCopyWith(
          PostGameState value, $Res Function(PostGameState) then) =
      _$PostGameStateCopyWithImpl<$Res>;
  $Res call({Game game});

  $GameCopyWith<$Res> get game;
}

/// @nodoc
class _$PostGameStateCopyWithImpl<$Res>
    implements $PostGameStateCopyWith<$Res> {
  _$PostGameStateCopyWithImpl(this._value, this._then);

  final PostGameState _value;
  // ignore: unused_field
  final $Res Function(PostGameState) _then;

  @override
  $Res call({
    Object? game = freezed,
  }) {
    return _then(_value.copyWith(
      game: game == freezed
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
abstract class _$PostGameStateCopyWith<$Res>
    implements $PostGameStateCopyWith<$Res> {
  factory _$PostGameStateCopyWith(
          _PostGameState value, $Res Function(_PostGameState) then) =
      __$PostGameStateCopyWithImpl<$Res>;
  @override
  $Res call({Game game});

  @override
  $GameCopyWith<$Res> get game;
}

/// @nodoc
class __$PostGameStateCopyWithImpl<$Res>
    extends _$PostGameStateCopyWithImpl<$Res>
    implements _$PostGameStateCopyWith<$Res> {
  __$PostGameStateCopyWithImpl(
      _PostGameState _value, $Res Function(_PostGameState) _then)
      : super(_value, (v) => _then(v as _PostGameState));

  @override
  _PostGameState get _value => super._value as _PostGameState;

  @override
  $Res call({
    Object? game = freezed,
  }) {
    return _then(_PostGameState(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
    ));
  }
}

/// @nodoc

class _$_PostGameState implements _PostGameState {
  const _$_PostGameState({required this.game});

  @override
  final Game game;

  @override
  String toString() {
    return 'PostGameState(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostGameState &&
            (identical(other.game, game) ||
                const DeepCollectionEquality().equals(other.game, game)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(game);

  @JsonKey(ignore: true)
  @override
  _$PostGameStateCopyWith<_PostGameState> get copyWith =>
      __$PostGameStateCopyWithImpl<_PostGameState>(this, _$identity);
}

abstract class _PostGameState implements PostGameState {
  const factory _PostGameState({required Game game}) = _$_PostGameState;

  @override
  Game get game => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostGameStateCopyWith<_PostGameState> get copyWith =>
      throw _privateConstructorUsedError;
}
