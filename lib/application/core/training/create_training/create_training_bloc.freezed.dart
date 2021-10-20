// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_training_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateTrainingEventTearOff {
  const _$CreateTrainingEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $CreateTrainingEvent = _$CreateTrainingEventTearOff();

/// @nodoc
mixin _$CreateTrainingEvent {
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
abstract class $CreateTrainingEventCopyWith<$Res> {
  factory $CreateTrainingEventCopyWith(
          CreateTrainingEvent value, $Res Function(CreateTrainingEvent) then) =
      _$CreateTrainingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateTrainingEventCopyWithImpl<$Res>
    implements $CreateTrainingEventCopyWith<$Res> {
  _$CreateTrainingEventCopyWithImpl(this._value, this._then);

  final CreateTrainingEvent _value;
  // ignore: unused_field
  final $Res Function(CreateTrainingEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$CreateTrainingEventCopyWithImpl<$Res>
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
    return 'CreateTrainingEvent.started()';
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

abstract class _Started implements CreateTrainingEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$CreateTrainingStateTearOff {
  const _$CreateTrainingStateTearOff();

  CreateTrainingInitial initial({required TrainingGameSnapshot gameSnapshot}) {
    return CreateTrainingInitial(
      gameSnapshot: gameSnapshot,
    );
  }
}

/// @nodoc
const $CreateTrainingState = _$CreateTrainingStateTearOff();

/// @nodoc
mixin _$CreateTrainingState {
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
    required TResult Function(CreateTrainingInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateTrainingInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTrainingInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateTrainingStateCopyWith<CreateTrainingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTrainingStateCopyWith<$Res> {
  factory $CreateTrainingStateCopyWith(
          CreateTrainingState value, $Res Function(CreateTrainingState) then) =
      _$CreateTrainingStateCopyWithImpl<$Res>;
  $Res call({TrainingGameSnapshot gameSnapshot});
}

/// @nodoc
class _$CreateTrainingStateCopyWithImpl<$Res>
    implements $CreateTrainingStateCopyWith<$Res> {
  _$CreateTrainingStateCopyWithImpl(this._value, this._then);

  final CreateTrainingState _value;
  // ignore: unused_field
  final $Res Function(CreateTrainingState) _then;

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
abstract class $CreateTrainingInitialCopyWith<$Res>
    implements $CreateTrainingStateCopyWith<$Res> {
  factory $CreateTrainingInitialCopyWith(CreateTrainingInitial value,
          $Res Function(CreateTrainingInitial) then) =
      _$CreateTrainingInitialCopyWithImpl<$Res>;
  @override
  $Res call({TrainingGameSnapshot gameSnapshot});
}

/// @nodoc
class _$CreateTrainingInitialCopyWithImpl<$Res>
    extends _$CreateTrainingStateCopyWithImpl<$Res>
    implements $CreateTrainingInitialCopyWith<$Res> {
  _$CreateTrainingInitialCopyWithImpl(
      CreateTrainingInitial _value, $Res Function(CreateTrainingInitial) _then)
      : super(_value, (v) => _then(v as CreateTrainingInitial));

  @override
  CreateTrainingInitial get _value => super._value as CreateTrainingInitial;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(CreateTrainingInitial(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as TrainingGameSnapshot,
    ));
  }
}

/// @nodoc

class _$CreateTrainingInitial implements CreateTrainingInitial {
  const _$CreateTrainingInitial({required this.gameSnapshot});

  @override
  final TrainingGameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'CreateTrainingState.initial(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateTrainingInitial &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $CreateTrainingInitialCopyWith<CreateTrainingInitial> get copyWith =>
      _$CreateTrainingInitialCopyWithImpl<CreateTrainingInitial>(
          this, _$identity);

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
    required TResult Function(CreateTrainingInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateTrainingInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTrainingInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CreateTrainingInitial implements CreateTrainingState {
  const factory CreateTrainingInitial(
      {required TrainingGameSnapshot gameSnapshot}) = _$CreateTrainingInitial;

  @override
  TrainingGameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CreateTrainingInitialCopyWith<CreateTrainingInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
