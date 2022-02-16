// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'play_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayStateTearOff {
  const _$PlayStateTearOff();

  PlayInactive<T> inactive<T extends AbstractGameSnapshot>() {
    return PlayInactive<T>();
  }

  PlayActive<T> active<T extends AbstractGameSnapshot>(
      {required T gameSnapshot}) {
    return PlayActive<T>(
      gameSnapshot: gameSnapshot,
    );
  }
}

/// @nodoc
const $PlayState = _$PlayStateTearOff();

/// @nodoc
mixin _$PlayState<T extends AbstractGameSnapshot> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inactive,
    required TResult Function(T gameSnapshot) active,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function(T gameSnapshot)? active,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function(T gameSnapshot)? active,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayInactive<T> value) inactive,
    required TResult Function(PlayActive<T> value) active,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayInactive<T> value)? inactive,
    TResult Function(PlayActive<T> value)? active,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayInactive<T> value)? inactive,
    TResult Function(PlayActive<T> value)? active,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayStateCopyWith<T extends AbstractGameSnapshot, $Res> {
  factory $PlayStateCopyWith(
          PlayState<T> value, $Res Function(PlayState<T>) then) =
      _$PlayStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$PlayStateCopyWithImpl<T extends AbstractGameSnapshot, $Res>
    implements $PlayStateCopyWith<T, $Res> {
  _$PlayStateCopyWithImpl(this._value, this._then);

  final PlayState<T> _value;
  // ignore: unused_field
  final $Res Function(PlayState<T>) _then;
}

/// @nodoc
abstract class $PlayInactiveCopyWith<T extends AbstractGameSnapshot, $Res> {
  factory $PlayInactiveCopyWith(
          PlayInactive<T> value, $Res Function(PlayInactive<T>) then) =
      _$PlayInactiveCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$PlayInactiveCopyWithImpl<T extends AbstractGameSnapshot, $Res>
    extends _$PlayStateCopyWithImpl<T, $Res>
    implements $PlayInactiveCopyWith<T, $Res> {
  _$PlayInactiveCopyWithImpl(
      PlayInactive<T> _value, $Res Function(PlayInactive<T>) _then)
      : super(_value, (v) => _then(v as PlayInactive<T>));

  @override
  PlayInactive<T> get _value => super._value as PlayInactive<T>;
}

/// @nodoc

class _$PlayInactive<T extends AbstractGameSnapshot> extends PlayInactive<T> {
  const _$PlayInactive() : super._();

  @override
  String toString() {
    return 'PlayState<$T>.inactive()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PlayInactive<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inactive,
    required TResult Function(T gameSnapshot) active,
  }) {
    return inactive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function(T gameSnapshot)? active,
  }) {
    return inactive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function(T gameSnapshot)? active,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayInactive<T> value) inactive,
    required TResult Function(PlayActive<T> value) active,
  }) {
    return inactive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayInactive<T> value)? inactive,
    TResult Function(PlayActive<T> value)? active,
  }) {
    return inactive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayInactive<T> value)? inactive,
    TResult Function(PlayActive<T> value)? active,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive(this);
    }
    return orElse();
  }
}

abstract class PlayInactive<T extends AbstractGameSnapshot>
    extends PlayState<T> {
  const factory PlayInactive() = _$PlayInactive<T>;
  const PlayInactive._() : super._();
}

/// @nodoc
abstract class $PlayActiveCopyWith<T extends AbstractGameSnapshot, $Res> {
  factory $PlayActiveCopyWith(
          PlayActive<T> value, $Res Function(PlayActive<T>) then) =
      _$PlayActiveCopyWithImpl<T, $Res>;
  $Res call({T gameSnapshot});
}

/// @nodoc
class _$PlayActiveCopyWithImpl<T extends AbstractGameSnapshot, $Res>
    extends _$PlayStateCopyWithImpl<T, $Res>
    implements $PlayActiveCopyWith<T, $Res> {
  _$PlayActiveCopyWithImpl(
      PlayActive<T> _value, $Res Function(PlayActive<T>) _then)
      : super(_value, (v) => _then(v as PlayActive<T>));

  @override
  PlayActive<T> get _value => super._value as PlayActive<T>;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(PlayActive<T>(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$PlayActive<T extends AbstractGameSnapshot> extends PlayActive<T> {
  const _$PlayActive({required this.gameSnapshot}) : super._();

  @override
  final T gameSnapshot;

  @override
  String toString() {
    return 'PlayState<$T>.active(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlayActive<T> &&
            const DeepCollectionEquality()
                .equals(other.gameSnapshot, gameSnapshot));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(gameSnapshot));

  @JsonKey(ignore: true)
  @override
  $PlayActiveCopyWith<T, PlayActive<T>> get copyWith =>
      _$PlayActiveCopyWithImpl<T, PlayActive<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inactive,
    required TResult Function(T gameSnapshot) active,
  }) {
    return active(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function(T gameSnapshot)? active,
  }) {
    return active?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function(T gameSnapshot)? active,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(gameSnapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayInactive<T> value) inactive,
    required TResult Function(PlayActive<T> value) active,
  }) {
    return active(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayInactive<T> value)? inactive,
    TResult Function(PlayActive<T> value)? active,
  }) {
    return active?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayInactive<T> value)? inactive,
    TResult Function(PlayActive<T> value)? active,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(this);
    }
    return orElse();
  }
}

abstract class PlayActive<T extends AbstractGameSnapshot> extends PlayState<T> {
  const factory PlayActive({required T gameSnapshot}) = _$PlayActive<T>;
  const PlayActive._() : super._();

  T get gameSnapshot;
  @JsonKey(ignore: true)
  $PlayActiveCopyWith<T, PlayActive<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
