// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_training_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostTrainingEventTearOff {
  const _$PostTrainingEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $PostTrainingEvent = _$PostTrainingEventTearOff();

/// @nodoc
mixin _$PostTrainingEvent {
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
abstract class $PostTrainingEventCopyWith<$Res> {
  factory $PostTrainingEventCopyWith(
          PostTrainingEvent value, $Res Function(PostTrainingEvent) then) =
      _$PostTrainingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostTrainingEventCopyWithImpl<$Res>
    implements $PostTrainingEventCopyWith<$Res> {
  _$PostTrainingEventCopyWithImpl(this._value, this._then);

  final PostTrainingEvent _value;
  // ignore: unused_field
  final $Res Function(PostTrainingEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$PostTrainingEventCopyWithImpl<$Res>
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
    return 'PostTrainingEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
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

abstract class _Started implements PostTrainingEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$PostTrainingStateTearOff {
  const _$PostTrainingStateTearOff();

  PostTrainingInitial initial({required TrainingGameSnapshot gameSnapshot}) {
    return PostTrainingInitial(
      gameSnapshot: gameSnapshot,
    );
  }
}

/// @nodoc
const $PostTrainingState = _$PostTrainingStateTearOff();

/// @nodoc
mixin _$PostTrainingState {
  TrainingGameSnapshot get gameSnapshot => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TrainingGameSnapshot gameSnapshot) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TrainingGameSnapshot gameSnapshot)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrainingGameSnapshot gameSnapshot)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostTrainingInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostTrainingInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostTrainingInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostTrainingStateCopyWith<PostTrainingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostTrainingStateCopyWith<$Res> {
  factory $PostTrainingStateCopyWith(
          PostTrainingState value, $Res Function(PostTrainingState) then) =
      _$PostTrainingStateCopyWithImpl<$Res>;
  $Res call({TrainingGameSnapshot gameSnapshot});
}

/// @nodoc
class _$PostTrainingStateCopyWithImpl<$Res>
    implements $PostTrainingStateCopyWith<$Res> {
  _$PostTrainingStateCopyWithImpl(this._value, this._then);

  final PostTrainingState _value;
  // ignore: unused_field
  final $Res Function(PostTrainingState) _then;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(_value.copyWith(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as TrainingGameSnapshot,
    ));
  }
}

/// @nodoc
abstract class $PostTrainingInitialCopyWith<$Res>
    implements $PostTrainingStateCopyWith<$Res> {
  factory $PostTrainingInitialCopyWith(
          PostTrainingInitial value, $Res Function(PostTrainingInitial) then) =
      _$PostTrainingInitialCopyWithImpl<$Res>;
  @override
  $Res call({TrainingGameSnapshot gameSnapshot});
}

/// @nodoc
class _$PostTrainingInitialCopyWithImpl<$Res>
    extends _$PostTrainingStateCopyWithImpl<$Res>
    implements $PostTrainingInitialCopyWith<$Res> {
  _$PostTrainingInitialCopyWithImpl(
      PostTrainingInitial _value, $Res Function(PostTrainingInitial) _then)
      : super(_value, (v) => _then(v as PostTrainingInitial));

  @override
  PostTrainingInitial get _value => super._value as PostTrainingInitial;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(PostTrainingInitial(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as TrainingGameSnapshot,
    ));
  }
}

/// @nodoc

class _$PostTrainingInitial implements PostTrainingInitial {
  const _$PostTrainingInitial({required this.gameSnapshot});

  @override
  final TrainingGameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'PostTrainingState.initial(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostTrainingInitial &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $PostTrainingInitialCopyWith<PostTrainingInitial> get copyWith =>
      _$PostTrainingInitialCopyWithImpl<PostTrainingInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TrainingGameSnapshot gameSnapshot) initial,
  }) {
    return initial(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TrainingGameSnapshot gameSnapshot)? initial,
  }) {
    return initial?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrainingGameSnapshot gameSnapshot)? initial,
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
    required TResult Function(PostTrainingInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostTrainingInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostTrainingInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PostTrainingInitial implements PostTrainingState {
  const factory PostTrainingInitial(
      {required TrainingGameSnapshot gameSnapshot}) = _$PostTrainingInitial;

  @override
  TrainingGameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PostTrainingInitialCopyWith<PostTrainingInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
