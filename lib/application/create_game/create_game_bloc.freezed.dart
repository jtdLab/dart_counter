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

  _GameCreated gameCreated({required bool online}) {
    return _GameCreated(
      online: online,
    );
  }

  _GameReceived gameReceived({required Game game}) {
    return _GameReceived(
      game: game,
    );
  }
}

/// @nodoc
const $CreateGameEvent = _$CreateGameEventTearOff();

/// @nodoc
mixin _$CreateGameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(Game game) gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(Game game)? gameReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCreated value) gameCreated,
    required TResult Function(_GameReceived value) gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCreated value)? gameCreated,
    TResult Function(_GameReceived value)? gameReceived,
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
abstract class _$GameCreatedCopyWith<$Res> {
  factory _$GameCreatedCopyWith(
          _GameCreated value, $Res Function(_GameCreated) then) =
      __$GameCreatedCopyWithImpl<$Res>;
  $Res call({bool online});
}

/// @nodoc
class __$GameCreatedCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res>
    implements _$GameCreatedCopyWith<$Res> {
  __$GameCreatedCopyWithImpl(
      _GameCreated _value, $Res Function(_GameCreated) _then)
      : super(_value, (v) => _then(v as _GameCreated));

  @override
  _GameCreated get _value => super._value as _GameCreated;

  @override
  $Res call({
    Object? online = freezed,
  }) {
    return _then(_GameCreated(
      online: online == freezed
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GameCreated implements _GameCreated {
  const _$_GameCreated({required this.online});

  @override
  final bool online;

  @override
  String toString() {
    return 'CreateGameEvent.gameCreated(online: $online)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameCreated &&
            (identical(other.online, online) ||
                const DeepCollectionEquality().equals(other.online, online)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(online);

  @JsonKey(ignore: true)
  @override
  _$GameCreatedCopyWith<_GameCreated> get copyWith =>
      __$GameCreatedCopyWithImpl<_GameCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(Game game) gameReceived,
  }) {
    return gameCreated(online);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(Game game)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameCreated != null) {
      return gameCreated(online);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCreated value) gameCreated,
    required TResult Function(_GameReceived value) gameReceived,
  }) {
    return gameCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCreated value)? gameCreated,
    TResult Function(_GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameCreated != null) {
      return gameCreated(this);
    }
    return orElse();
  }
}

abstract class _GameCreated implements CreateGameEvent {
  const factory _GameCreated({required bool online}) = _$_GameCreated;

  bool get online => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GameCreatedCopyWith<_GameCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GameReceivedCopyWith<$Res> {
  factory _$GameReceivedCopyWith(
          _GameReceived value, $Res Function(_GameReceived) then) =
      __$GameReceivedCopyWithImpl<$Res>;
  $Res call({Game game});

  $GameCopyWith<$Res> get game;
}

/// @nodoc
class __$GameReceivedCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res>
    implements _$GameReceivedCopyWith<$Res> {
  __$GameReceivedCopyWithImpl(
      _GameReceived _value, $Res Function(_GameReceived) _then)
      : super(_value, (v) => _then(v as _GameReceived));

  @override
  _GameReceived get _value => super._value as _GameReceived;

  @override
  $Res call({
    Object? game = freezed,
  }) {
    return _then(_GameReceived(
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

class _$_GameReceived implements _GameReceived {
  const _$_GameReceived({required this.game});

  @override
  final Game game;

  @override
  String toString() {
    return 'CreateGameEvent.gameReceived(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameReceived &&
            (identical(other.game, game) ||
                const DeepCollectionEquality().equals(other.game, game)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(game);

  @JsonKey(ignore: true)
  @override
  _$GameReceivedCopyWith<_GameReceived> get copyWith =>
      __$GameReceivedCopyWithImpl<_GameReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(Game game) gameReceived,
  }) {
    return gameReceived(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(Game game)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCreated value) gameCreated,
    required TResult Function(_GameReceived value) gameReceived,
  }) {
    return gameReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCreated value)? gameCreated,
    TResult Function(_GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(this);
    }
    return orElse();
  }
}

abstract class _GameReceived implements CreateGameEvent {
  const factory _GameReceived({required Game game}) = _$_GameReceived;

  Game get game => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GameReceivedCopyWith<_GameReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreateGameStateTearOff {
  const _$CreateGameStateTearOff();

  _CreateGame call(
      {required bool loading, required bool isOnline, Game? game}) {
    return _CreateGame(
      loading: loading,
      isOnline: isOnline,
      game: game,
    );
  }
}

/// @nodoc
const $CreateGameState = _$CreateGameStateTearOff();

/// @nodoc
mixin _$CreateGameState {
  bool get loading => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;
  Game? get game => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateGameStateCopyWith<CreateGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGameStateCopyWith<$Res> {
  factory $CreateGameStateCopyWith(
          CreateGameState value, $Res Function(CreateGameState) then) =
      _$CreateGameStateCopyWithImpl<$Res>;
  $Res call({bool loading, bool isOnline, Game? game});

  $GameCopyWith<$Res>? get game;
}

/// @nodoc
class _$CreateGameStateCopyWithImpl<$Res>
    implements $CreateGameStateCopyWith<$Res> {
  _$CreateGameStateCopyWithImpl(this._value, this._then);

  final CreateGameState _value;
  // ignore: unused_field
  final $Res Function(CreateGameState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? isOnline = freezed,
    Object? game = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game?,
    ));
  }

  @override
  $GameCopyWith<$Res>? get game {
    if (_value.game == null) {
      return null;
    }

    return $GameCopyWith<$Res>(_value.game!, (value) {
      return _then(_value.copyWith(game: value));
    });
  }
}

/// @nodoc
abstract class _$CreateGameCopyWith<$Res>
    implements $CreateGameStateCopyWith<$Res> {
  factory _$CreateGameCopyWith(
          _CreateGame value, $Res Function(_CreateGame) then) =
      __$CreateGameCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, bool isOnline, Game? game});

  @override
  $GameCopyWith<$Res>? get game;
}

/// @nodoc
class __$CreateGameCopyWithImpl<$Res>
    extends _$CreateGameStateCopyWithImpl<$Res>
    implements _$CreateGameCopyWith<$Res> {
  __$CreateGameCopyWithImpl(
      _CreateGame _value, $Res Function(_CreateGame) _then)
      : super(_value, (v) => _then(v as _CreateGame));

  @override
  _CreateGame get _value => super._value as _CreateGame;

  @override
  $Res call({
    Object? loading = freezed,
    Object? isOnline = freezed,
    Object? game = freezed,
  }) {
    return _then(_CreateGame(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game?,
    ));
  }
}

/// @nodoc

class _$_CreateGame implements _CreateGame {
  const _$_CreateGame(
      {required this.loading, required this.isOnline, this.game});

  @override
  final bool loading;
  @override
  final bool isOnline;
  @override
  final Game? game;

  @override
  String toString() {
    return 'CreateGameState(loading: $loading, isOnline: $isOnline, game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateGame &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.isOnline, isOnline) ||
                const DeepCollectionEquality()
                    .equals(other.isOnline, isOnline)) &&
            (identical(other.game, game) ||
                const DeepCollectionEquality().equals(other.game, game)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(isOnline) ^
      const DeepCollectionEquality().hash(game);

  @JsonKey(ignore: true)
  @override
  _$CreateGameCopyWith<_CreateGame> get copyWith =>
      __$CreateGameCopyWithImpl<_CreateGame>(this, _$identity);
}

abstract class _CreateGame implements CreateGameState {
  const factory _CreateGame(
      {required bool loading,
      required bool isOnline,
      Game? game}) = _$_CreateGame;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get isOnline => throw _privateConstructorUsedError;
  @override
  Game? get game => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateGameCopyWith<_CreateGame> get copyWith =>
      throw _privateConstructorUsedError;
}
