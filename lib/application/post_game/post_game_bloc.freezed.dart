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

  GameReceived gameReceived({required GameSnapshot game}) {
    return GameReceived(
      game: game,
    );
  }
}

/// @nodoc
const $PostGameEvent = _$PostGameEventTearOff();

/// @nodoc
mixin _$PostGameEvent {
  GameSnapshot get game => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSnapshot game) gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSnapshot game)? gameReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameReceived value) gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameReceived value)? gameReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostGameEventCopyWith<PostGameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostGameEventCopyWith<$Res> {
  factory $PostGameEventCopyWith(
          PostGameEvent value, $Res Function(PostGameEvent) then) =
      _$PostGameEventCopyWithImpl<$Res>;
  $Res call({GameSnapshot game});
}

/// @nodoc
class _$PostGameEventCopyWithImpl<$Res>
    implements $PostGameEventCopyWith<$Res> {
  _$PostGameEventCopyWithImpl(this._value, this._then);

  final PostGameEvent _value;
  // ignore: unused_field
  final $Res Function(PostGameEvent) _then;

  @override
  $Res call({
    Object? game = freezed,
  }) {
    return _then(_value.copyWith(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GameSnapshot,
    ));
  }
}

/// @nodoc
abstract class $GameReceivedCopyWith<$Res>
    implements $PostGameEventCopyWith<$Res> {
  factory $GameReceivedCopyWith(
          GameReceived value, $Res Function(GameReceived) then) =
      _$GameReceivedCopyWithImpl<$Res>;
  @override
  $Res call({GameSnapshot game});
}

/// @nodoc
class _$GameReceivedCopyWithImpl<$Res> extends _$PostGameEventCopyWithImpl<$Res>
    implements $GameReceivedCopyWith<$Res> {
  _$GameReceivedCopyWithImpl(
      GameReceived _value, $Res Function(GameReceived) _then)
      : super(_value, (v) => _then(v as GameReceived));

  @override
  GameReceived get _value => super._value as GameReceived;

  @override
  $Res call({
    Object? game = freezed,
  }) {
    return _then(GameReceived(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GameSnapshot,
    ));
  }
}

/// @nodoc

class _$GameReceived implements GameReceived {
  const _$GameReceived({required this.game});

  @override
  final GameSnapshot game;

  @override
  String toString() {
    return 'PostGameEvent.gameReceived(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameReceived &&
            (identical(other.game, game) ||
                const DeepCollectionEquality().equals(other.game, game)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(game);

  @JsonKey(ignore: true)
  @override
  $GameReceivedCopyWith<GameReceived> get copyWith =>
      _$GameReceivedCopyWithImpl<GameReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSnapshot game) gameReceived,
  }) {
    return gameReceived(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSnapshot game)? gameReceived,
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
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return gameReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(this);
    }
    return orElse();
  }
}

abstract class GameReceived implements PostGameEvent {
  const factory GameReceived({required GameSnapshot game}) = _$GameReceived;

  @override
  GameSnapshot get game => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GameReceivedCopyWith<GameReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PostGameStateTearOff {
  const _$PostGameStateTearOff();

  _PostGameState call({required GameSnapshot game}) {
    return _PostGameState(
      game: game,
    );
  }
}

/// @nodoc
const $PostGameState = _$PostGameStateTearOff();

/// @nodoc
mixin _$PostGameState {
  GameSnapshot get game => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostGameStateCopyWith<PostGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostGameStateCopyWith<$Res> {
  factory $PostGameStateCopyWith(
          PostGameState value, $Res Function(PostGameState) then) =
      _$PostGameStateCopyWithImpl<$Res>;
  $Res call({GameSnapshot game});
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
              as GameSnapshot,
    ));
  }
}

/// @nodoc
abstract class _$PostGameStateCopyWith<$Res>
    implements $PostGameStateCopyWith<$Res> {
  factory _$PostGameStateCopyWith(
          _PostGameState value, $Res Function(_PostGameState) then) =
      __$PostGameStateCopyWithImpl<$Res>;
  @override
  $Res call({GameSnapshot game});
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
              as GameSnapshot,
    ));
  }
}

/// @nodoc

class _$_PostGameState implements _PostGameState {
  const _$_PostGameState({required this.game});

  @override
  final GameSnapshot game;

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
  const factory _PostGameState({required GameSnapshot game}) = _$_PostGameState;

  @override
  GameSnapshot get game => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostGameStateCopyWith<_PostGameState> get copyWith =>
      throw _privateConstructorUsedError;
}
