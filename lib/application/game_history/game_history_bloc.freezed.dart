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

  GameHistoryReceived gameHistoryReceived({required List10<Game> gameHistory}) {
    return GameHistoryReceived(
      gameHistory: gameHistory,
    );
  }

  GameSelected gameSelected({required Game game}) {
    return GameSelected(
      game: game,
    );
  }
}

/// @nodoc
const $GameHistoryEvent = _$GameHistoryEventTearOff();

/// @nodoc
mixin _$GameHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List10<Game> gameHistory) gameHistoryReceived,
    required TResult Function(Game game) gameSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List10<Game> gameHistory)? gameHistoryReceived,
    TResult Function(Game game)? gameSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameHistoryReceived value) gameHistoryReceived,
    required TResult Function(GameSelected value) gameSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameHistoryReceived value)? gameHistoryReceived,
    TResult Function(GameSelected value)? gameSelected,
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
abstract class $GameHistoryReceivedCopyWith<$Res> {
  factory $GameHistoryReceivedCopyWith(
          GameHistoryReceived value, $Res Function(GameHistoryReceived) then) =
      _$GameHistoryReceivedCopyWithImpl<$Res>;
  $Res call({List10<Game> gameHistory});
}

/// @nodoc
class _$GameHistoryReceivedCopyWithImpl<$Res>
    extends _$GameHistoryEventCopyWithImpl<$Res>
    implements $GameHistoryReceivedCopyWith<$Res> {
  _$GameHistoryReceivedCopyWithImpl(
      GameHistoryReceived _value, $Res Function(GameHistoryReceived) _then)
      : super(_value, (v) => _then(v as GameHistoryReceived));

  @override
  GameHistoryReceived get _value => super._value as GameHistoryReceived;

  @override
  $Res call({
    Object? gameHistory = freezed,
  }) {
    return _then(GameHistoryReceived(
      gameHistory: gameHistory == freezed
          ? _value.gameHistory
          : gameHistory // ignore: cast_nullable_to_non_nullable
              as List10<Game>,
    ));
  }
}

/// @nodoc

class _$GameHistoryReceived implements GameHistoryReceived {
  const _$GameHistoryReceived({required this.gameHistory});

  @override
  final List10<Game> gameHistory;

  @override
  String toString() {
    return 'GameHistoryEvent.gameHistoryReceived(gameHistory: $gameHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameHistoryReceived &&
            (identical(other.gameHistory, gameHistory) ||
                const DeepCollectionEquality()
                    .equals(other.gameHistory, gameHistory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameHistory);

  @JsonKey(ignore: true)
  @override
  $GameHistoryReceivedCopyWith<GameHistoryReceived> get copyWith =>
      _$GameHistoryReceivedCopyWithImpl<GameHistoryReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List10<Game> gameHistory) gameHistoryReceived,
    required TResult Function(Game game) gameSelected,
  }) {
    return gameHistoryReceived(gameHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List10<Game> gameHistory)? gameHistoryReceived,
    TResult Function(Game game)? gameSelected,
    required TResult orElse(),
  }) {
    if (gameHistoryReceived != null) {
      return gameHistoryReceived(gameHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameHistoryReceived value) gameHistoryReceived,
    required TResult Function(GameSelected value) gameSelected,
  }) {
    return gameHistoryReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameHistoryReceived value)? gameHistoryReceived,
    TResult Function(GameSelected value)? gameSelected,
    required TResult orElse(),
  }) {
    if (gameHistoryReceived != null) {
      return gameHistoryReceived(this);
    }
    return orElse();
  }
}

abstract class GameHistoryReceived implements GameHistoryEvent {
  const factory GameHistoryReceived({required List10<Game> gameHistory}) =
      _$GameHistoryReceived;

  List10<Game> get gameHistory => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameHistoryReceivedCopyWith<GameHistoryReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSelectedCopyWith<$Res> {
  factory $GameSelectedCopyWith(
          GameSelected value, $Res Function(GameSelected) then) =
      _$GameSelectedCopyWithImpl<$Res>;
  $Res call({Game game});

  $GameCopyWith<$Res> get game;
}

/// @nodoc
class _$GameSelectedCopyWithImpl<$Res>
    extends _$GameHistoryEventCopyWithImpl<$Res>
    implements $GameSelectedCopyWith<$Res> {
  _$GameSelectedCopyWithImpl(
      GameSelected _value, $Res Function(GameSelected) _then)
      : super(_value, (v) => _then(v as GameSelected));

  @override
  GameSelected get _value => super._value as GameSelected;

  @override
  $Res call({
    Object? game = freezed,
  }) {
    return _then(GameSelected(
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

class _$GameSelected implements GameSelected {
  const _$GameSelected({required this.game});

  @override
  final Game game;

  @override
  String toString() {
    return 'GameHistoryEvent.gameSelected(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameSelected &&
            (identical(other.game, game) ||
                const DeepCollectionEquality().equals(other.game, game)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(game);

  @JsonKey(ignore: true)
  @override
  $GameSelectedCopyWith<GameSelected> get copyWith =>
      _$GameSelectedCopyWithImpl<GameSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List10<Game> gameHistory) gameHistoryReceived,
    required TResult Function(Game game) gameSelected,
  }) {
    return gameSelected(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List10<Game> gameHistory)? gameHistoryReceived,
    TResult Function(Game game)? gameSelected,
    required TResult orElse(),
  }) {
    if (gameSelected != null) {
      return gameSelected(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameHistoryReceived value) gameHistoryReceived,
    required TResult Function(GameSelected value) gameSelected,
  }) {
    return gameSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameHistoryReceived value)? gameHistoryReceived,
    TResult Function(GameSelected value)? gameSelected,
    required TResult orElse(),
  }) {
    if (gameSelected != null) {
      return gameSelected(this);
    }
    return orElse();
  }
}

abstract class GameSelected implements GameHistoryEvent {
  const factory GameSelected({required Game game}) = _$GameSelected;

  Game get game => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameSelectedCopyWith<GameSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GameHistoryStateTearOff {
  const _$GameHistoryStateTearOff();

  _GameHistoryState call(
      {required List10<Game> gameHistory, Game? selectedGame}) {
    return _GameHistoryState(
      gameHistory: gameHistory,
      selectedGame: selectedGame,
    );
  }
}

/// @nodoc
const $GameHistoryState = _$GameHistoryStateTearOff();

/// @nodoc
mixin _$GameHistoryState {
  List10<Game> get gameHistory => throw _privateConstructorUsedError;
  Game? get selectedGame => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameHistoryStateCopyWith<GameHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameHistoryStateCopyWith<$Res> {
  factory $GameHistoryStateCopyWith(
          GameHistoryState value, $Res Function(GameHistoryState) then) =
      _$GameHistoryStateCopyWithImpl<$Res>;
  $Res call({List10<Game> gameHistory, Game? selectedGame});

  $GameCopyWith<$Res>? get selectedGame;
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
    Object? gameHistory = freezed,
    Object? selectedGame = freezed,
  }) {
    return _then(_value.copyWith(
      gameHistory: gameHistory == freezed
          ? _value.gameHistory
          : gameHistory // ignore: cast_nullable_to_non_nullable
              as List10<Game>,
      selectedGame: selectedGame == freezed
          ? _value.selectedGame
          : selectedGame // ignore: cast_nullable_to_non_nullable
              as Game?,
    ));
  }

  @override
  $GameCopyWith<$Res>? get selectedGame {
    if (_value.selectedGame == null) {
      return null;
    }

    return $GameCopyWith<$Res>(_value.selectedGame!, (value) {
      return _then(_value.copyWith(selectedGame: value));
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
  $Res call({List10<Game> gameHistory, Game? selectedGame});

  @override
  $GameCopyWith<$Res>? get selectedGame;
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
    Object? gameHistory = freezed,
    Object? selectedGame = freezed,
  }) {
    return _then(_GameHistoryState(
      gameHistory: gameHistory == freezed
          ? _value.gameHistory
          : gameHistory // ignore: cast_nullable_to_non_nullable
              as List10<Game>,
      selectedGame: selectedGame == freezed
          ? _value.selectedGame
          : selectedGame // ignore: cast_nullable_to_non_nullable
              as Game?,
    ));
  }
}

/// @nodoc

class _$_GameHistoryState implements _GameHistoryState {
  const _$_GameHistoryState({required this.gameHistory, this.selectedGame});

  @override
  final List10<Game> gameHistory;
  @override
  final Game? selectedGame;

  @override
  String toString() {
    return 'GameHistoryState(gameHistory: $gameHistory, selectedGame: $selectedGame)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameHistoryState &&
            (identical(other.gameHistory, gameHistory) ||
                const DeepCollectionEquality()
                    .equals(other.gameHistory, gameHistory)) &&
            (identical(other.selectedGame, selectedGame) ||
                const DeepCollectionEquality()
                    .equals(other.selectedGame, selectedGame)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gameHistory) ^
      const DeepCollectionEquality().hash(selectedGame);

  @JsonKey(ignore: true)
  @override
  _$GameHistoryStateCopyWith<_GameHistoryState> get copyWith =>
      __$GameHistoryStateCopyWithImpl<_GameHistoryState>(this, _$identity);
}

abstract class _GameHistoryState implements GameHistoryState {
  const factory _GameHistoryState(
      {required List10<Game> gameHistory,
      Game? selectedGame}) = _$_GameHistoryState;

  @override
  List10<Game> get gameHistory => throw _privateConstructorUsedError;
  @override
  Game? get selectedGame => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GameHistoryStateCopyWith<_GameHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
