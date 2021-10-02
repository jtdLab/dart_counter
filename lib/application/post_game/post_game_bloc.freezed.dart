// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  GameReceived gameReceived({required GameSnapshot gameSnapshot}) {
    return GameReceived(
      gameSnapshot: gameSnapshot,
    );
  }
}

/// @nodoc
const $PostGameEvent = _$PostGameEventTearOff();

/// @nodoc
mixin _$PostGameEvent {
  GameSnapshot get gameSnapshot => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSnapshot gameSnapshot) gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameReceived value) gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameReceived value)? gameReceived,
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
  $Res call({GameSnapshot gameSnapshot});
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
    Object? gameSnapshot = freezed,
  }) {
    return _then(_value.copyWith(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
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
  $Res call({GameSnapshot gameSnapshot});
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
    Object? gameSnapshot = freezed,
  }) {
    return _then(GameReceived(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as GameSnapshot,
    ));
  }
}

/// @nodoc

class _$GameReceived implements GameReceived {
  const _$GameReceived({required this.gameSnapshot});

  @override
  final GameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'PostGameEvent.gameReceived(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameReceived &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $GameReceivedCopyWith<GameReceived> get copyWith =>
      _$GameReceivedCopyWithImpl<GameReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSnapshot gameSnapshot) gameReceived,
  }) {
    return gameReceived(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
  }) {
    return gameReceived?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(gameSnapshot);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameReceived value)? gameReceived,
  }) {
    return gameReceived?.call(this);
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
  const factory GameReceived({required GameSnapshot gameSnapshot}) =
      _$GameReceived;

  @override
  GameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GameReceivedCopyWith<GameReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PostGameStateTearOff {
  const _$PostGameStateTearOff();

  PostGameInitial initial({required GameSnapshot gameSnapshot}) {
    return PostGameInitial(
      gameSnapshot: gameSnapshot,
    );
  }
}

/// @nodoc
const $PostGameState = _$PostGameStateTearOff();

/// @nodoc
mixin _$PostGameState {
  GameSnapshot get gameSnapshot => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSnapshot gameSnapshot) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GameSnapshot gameSnapshot)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSnapshot gameSnapshot)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostGameInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostGameInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostGameInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostGameStateCopyWith<PostGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostGameStateCopyWith<$Res> {
  factory $PostGameStateCopyWith(
          PostGameState value, $Res Function(PostGameState) then) =
      _$PostGameStateCopyWithImpl<$Res>;
  $Res call({GameSnapshot gameSnapshot});
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
    Object? gameSnapshot = freezed,
  }) {
    return _then(_value.copyWith(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as GameSnapshot,
    ));
  }
}

/// @nodoc
abstract class $PostGameInitialCopyWith<$Res>
    implements $PostGameStateCopyWith<$Res> {
  factory $PostGameInitialCopyWith(
          PostGameInitial value, $Res Function(PostGameInitial) then) =
      _$PostGameInitialCopyWithImpl<$Res>;
  @override
  $Res call({GameSnapshot gameSnapshot});
}

/// @nodoc
class _$PostGameInitialCopyWithImpl<$Res>
    extends _$PostGameStateCopyWithImpl<$Res>
    implements $PostGameInitialCopyWith<$Res> {
  _$PostGameInitialCopyWithImpl(
      PostGameInitial _value, $Res Function(PostGameInitial) _then)
      : super(_value, (v) => _then(v as PostGameInitial));

  @override
  PostGameInitial get _value => super._value as PostGameInitial;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(PostGameInitial(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as GameSnapshot,
    ));
  }
}

/// @nodoc

class _$PostGameInitial implements PostGameInitial {
  const _$PostGameInitial({required this.gameSnapshot});

  @override
  final GameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'PostGameState.initial(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostGameInitial &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $PostGameInitialCopyWith<PostGameInitial> get copyWith =>
      _$PostGameInitialCopyWithImpl<PostGameInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSnapshot gameSnapshot) initial,
  }) {
    return initial(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GameSnapshot gameSnapshot)? initial,
  }) {
    return initial?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSnapshot gameSnapshot)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(gameSnapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostGameInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostGameInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostGameInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PostGameInitial implements PostGameState {
  const factory PostGameInitial({required GameSnapshot gameSnapshot}) =
      _$PostGameInitial;

  @override
  GameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PostGameInitialCopyWith<PostGameInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
