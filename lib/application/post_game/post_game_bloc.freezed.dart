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

  _PostGameDummy dummy({required GameSnapshot gameSnapshot}) {
    return _PostGameDummy(
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
    required TResult Function(GameSnapshot gameSnapshot) dummy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GameSnapshot gameSnapshot)? dummy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSnapshot gameSnapshot)? dummy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostGameDummy value) dummy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostGameDummy value)? dummy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostGameDummy value)? dummy,
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
abstract class _$PostGameDummyCopyWith<$Res>
    implements $PostGameEventCopyWith<$Res> {
  factory _$PostGameDummyCopyWith(
          _PostGameDummy value, $Res Function(_PostGameDummy) then) =
      __$PostGameDummyCopyWithImpl<$Res>;
  @override
  $Res call({GameSnapshot gameSnapshot});
}

/// @nodoc
class __$PostGameDummyCopyWithImpl<$Res>
    extends _$PostGameEventCopyWithImpl<$Res>
    implements _$PostGameDummyCopyWith<$Res> {
  __$PostGameDummyCopyWithImpl(
      _PostGameDummy _value, $Res Function(_PostGameDummy) _then)
      : super(_value, (v) => _then(v as _PostGameDummy));

  @override
  _PostGameDummy get _value => super._value as _PostGameDummy;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(_PostGameDummy(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as GameSnapshot,
    ));
  }
}

/// @nodoc

class _$_PostGameDummy implements _PostGameDummy {
  const _$_PostGameDummy({required this.gameSnapshot});

  @override
  final GameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'PostGameEvent.dummy(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostGameDummy &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameSnapshot);

  @JsonKey(ignore: true)
  @override
  _$PostGameDummyCopyWith<_PostGameDummy> get copyWith =>
      __$PostGameDummyCopyWithImpl<_PostGameDummy>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSnapshot gameSnapshot) dummy,
  }) {
    return dummy(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GameSnapshot gameSnapshot)? dummy,
  }) {
    return dummy?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSnapshot gameSnapshot)? dummy,
    required TResult orElse(),
  }) {
    if (dummy != null) {
      return dummy(gameSnapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostGameDummy value) dummy,
  }) {
    return dummy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostGameDummy value)? dummy,
  }) {
    return dummy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostGameDummy value)? dummy,
    required TResult orElse(),
  }) {
    if (dummy != null) {
      return dummy(this);
    }
    return orElse();
  }
}

abstract class _PostGameDummy implements PostGameEvent {
  const factory _PostGameDummy({required GameSnapshot gameSnapshot}) =
      _$_PostGameDummy;

  @override
  GameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostGameDummyCopyWith<_PostGameDummy> get copyWith =>
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
