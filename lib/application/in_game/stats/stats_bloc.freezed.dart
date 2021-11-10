// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StatsEventTearOff {
  const _$StatsEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $StatsEvent = _$StatsEventTearOff();

/// @nodoc
mixin _$StatsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsEventCopyWith<$Res> {
  factory $StatsEventCopyWith(
          StatsEvent value, $Res Function(StatsEvent) then) =
      _$StatsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatsEventCopyWithImpl<$Res> implements $StatsEventCopyWith<$Res> {
  _$StatsEventCopyWithImpl(this._value, this._then);

  final StatsEvent _value;
  // ignore: unused_field
  final $Res Function(StatsEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$StatsEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'StatsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements StatsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$StatsStateTearOff {
  const _$StatsStateTearOff();

  StatsInitial initial({required AbstractGameSnapshot gameSnapshot}) {
    return StatsInitial(
      gameSnapshot: gameSnapshot,
    );
  }
}

/// @nodoc
const $StatsState = _$StatsStateTearOff();

/// @nodoc
mixin _$StatsState {
  AbstractGameSnapshot get gameSnapshot => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AbstractGameSnapshot gameSnapshot) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AbstractGameSnapshot gameSnapshot)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AbstractGameSnapshot gameSnapshot)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatsInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatsInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatsStateCopyWith<StatsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsStateCopyWith<$Res> {
  factory $StatsStateCopyWith(
          StatsState value, $Res Function(StatsState) then) =
      _$StatsStateCopyWithImpl<$Res>;
  $Res call({AbstractGameSnapshot gameSnapshot});
}

/// @nodoc
class _$StatsStateCopyWithImpl<$Res> implements $StatsStateCopyWith<$Res> {
  _$StatsStateCopyWithImpl(this._value, this._then);

  final StatsState _value;
  // ignore: unused_field
  final $Res Function(StatsState) _then;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(_value.copyWith(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as AbstractGameSnapshot,
    ));
  }
}

/// @nodoc
abstract class $StatsInitialCopyWith<$Res>
    implements $StatsStateCopyWith<$Res> {
  factory $StatsInitialCopyWith(
          StatsInitial value, $Res Function(StatsInitial) then) =
      _$StatsInitialCopyWithImpl<$Res>;
  @override
  $Res call({AbstractGameSnapshot gameSnapshot});
}

/// @nodoc
class _$StatsInitialCopyWithImpl<$Res> extends _$StatsStateCopyWithImpl<$Res>
    implements $StatsInitialCopyWith<$Res> {
  _$StatsInitialCopyWithImpl(
      StatsInitial _value, $Res Function(StatsInitial) _then)
      : super(_value, (v) => _then(v as StatsInitial));

  @override
  StatsInitial get _value => super._value as StatsInitial;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(StatsInitial(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as AbstractGameSnapshot,
    ));
  }
}

/// @nodoc

class _$StatsInitial implements StatsInitial {
  const _$StatsInitial({required this.gameSnapshot});

  @override
  final AbstractGameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'StatsState.initial(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StatsInitial &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                other.gameSnapshot == gameSnapshot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $StatsInitialCopyWith<StatsInitial> get copyWith =>
      _$StatsInitialCopyWithImpl<StatsInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AbstractGameSnapshot gameSnapshot) initial,
  }) {
    return initial(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AbstractGameSnapshot gameSnapshot)? initial,
  }) {
    return initial?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AbstractGameSnapshot gameSnapshot)? initial,
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
    required TResult Function(StatsInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatsInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StatsInitial implements StatsState {
  const factory StatsInitial({required AbstractGameSnapshot gameSnapshot}) =
      _$StatsInitial;

  @override
  AbstractGameSnapshot get gameSnapshot;
  @override
  @JsonKey(ignore: true)
  $StatsInitialCopyWith<StatsInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
