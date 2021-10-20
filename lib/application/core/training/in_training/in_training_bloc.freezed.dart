// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'in_training_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InTrainingEventTearOff {
  const _$InTrainingEventTearOff();

  InTrainingGameReceived gameReceived(
      {required TrainingGameSnapshot gameSnapshot}) {
    return InTrainingGameReceived(
      gameSnapshot: gameSnapshot,
    );
  }
}

/// @nodoc
const $InTrainingEvent = _$InTrainingEventTearOff();

/// @nodoc
mixin _$InTrainingEvent {
  TrainingGameSnapshot get gameSnapshot => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InTrainingGameReceived value) gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InTrainingGameReceived value)? gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InTrainingGameReceived value)? gameReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InTrainingEventCopyWith<InTrainingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InTrainingEventCopyWith<$Res> {
  factory $InTrainingEventCopyWith(
          InTrainingEvent value, $Res Function(InTrainingEvent) then) =
      _$InTrainingEventCopyWithImpl<$Res>;
  $Res call({TrainingGameSnapshot gameSnapshot});
}

/// @nodoc
class _$InTrainingEventCopyWithImpl<$Res>
    implements $InTrainingEventCopyWith<$Res> {
  _$InTrainingEventCopyWithImpl(this._value, this._then);

  final InTrainingEvent _value;
  // ignore: unused_field
  final $Res Function(InTrainingEvent) _then;

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
abstract class $InTrainingGameReceivedCopyWith<$Res>
    implements $InTrainingEventCopyWith<$Res> {
  factory $InTrainingGameReceivedCopyWith(InTrainingGameReceived value,
          $Res Function(InTrainingGameReceived) then) =
      _$InTrainingGameReceivedCopyWithImpl<$Res>;
  @override
  $Res call({TrainingGameSnapshot gameSnapshot});
}

/// @nodoc
class _$InTrainingGameReceivedCopyWithImpl<$Res>
    extends _$InTrainingEventCopyWithImpl<$Res>
    implements $InTrainingGameReceivedCopyWith<$Res> {
  _$InTrainingGameReceivedCopyWithImpl(InTrainingGameReceived _value,
      $Res Function(InTrainingGameReceived) _then)
      : super(_value, (v) => _then(v as InTrainingGameReceived));

  @override
  InTrainingGameReceived get _value => super._value as InTrainingGameReceived;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(InTrainingGameReceived(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as TrainingGameSnapshot,
    ));
  }
}

/// @nodoc

class _$InTrainingGameReceived implements InTrainingGameReceived {
  const _$InTrainingGameReceived({required this.gameSnapshot});

  @override
  final TrainingGameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'InTrainingEvent.gameReceived(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InTrainingGameReceived &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $InTrainingGameReceivedCopyWith<InTrainingGameReceived> get copyWith =>
      _$InTrainingGameReceivedCopyWithImpl<InTrainingGameReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameReceived,
  }) {
    return gameReceived(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return gameReceived?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameReceived,
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
    required TResult Function(InTrainingGameReceived value) gameReceived,
  }) {
    return gameReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InTrainingGameReceived value)? gameReceived,
  }) {
    return gameReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InTrainingGameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(this);
    }
    return orElse();
  }
}

abstract class InTrainingGameReceived implements InTrainingEvent {
  const factory InTrainingGameReceived(
      {required TrainingGameSnapshot gameSnapshot}) = _$InTrainingGameReceived;

  @override
  TrainingGameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InTrainingGameReceivedCopyWith<InTrainingGameReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InTrainingStateTearOff {
  const _$InTrainingStateTearOff();

  InTrainingInitial initial({required TrainingGameSnapshot gameSnapshot}) {
    return InTrainingInitial(
      gameSnapshot: gameSnapshot,
    );
  }
}

/// @nodoc
const $InTrainingState = _$InTrainingStateTearOff();

/// @nodoc
mixin _$InTrainingState {
//GameSnapshot? prevGameSnapshot,
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
    required TResult Function(InTrainingInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InTrainingInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InTrainingInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InTrainingStateCopyWith<InTrainingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InTrainingStateCopyWith<$Res> {
  factory $InTrainingStateCopyWith(
          InTrainingState value, $Res Function(InTrainingState) then) =
      _$InTrainingStateCopyWithImpl<$Res>;
  $Res call({TrainingGameSnapshot gameSnapshot});
}

/// @nodoc
class _$InTrainingStateCopyWithImpl<$Res>
    implements $InTrainingStateCopyWith<$Res> {
  _$InTrainingStateCopyWithImpl(this._value, this._then);

  final InTrainingState _value;
  // ignore: unused_field
  final $Res Function(InTrainingState) _then;

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
abstract class $InTrainingInitialCopyWith<$Res>
    implements $InTrainingStateCopyWith<$Res> {
  factory $InTrainingInitialCopyWith(
          InTrainingInitial value, $Res Function(InTrainingInitial) then) =
      _$InTrainingInitialCopyWithImpl<$Res>;
  @override
  $Res call({TrainingGameSnapshot gameSnapshot});
}

/// @nodoc
class _$InTrainingInitialCopyWithImpl<$Res>
    extends _$InTrainingStateCopyWithImpl<$Res>
    implements $InTrainingInitialCopyWith<$Res> {
  _$InTrainingInitialCopyWithImpl(
      InTrainingInitial _value, $Res Function(InTrainingInitial) _then)
      : super(_value, (v) => _then(v as InTrainingInitial));

  @override
  InTrainingInitial get _value => super._value as InTrainingInitial;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(InTrainingInitial(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as TrainingGameSnapshot,
    ));
  }
}

/// @nodoc

class _$InTrainingInitial implements InTrainingInitial {
  const _$InTrainingInitial({required this.gameSnapshot});

  @override //GameSnapshot? prevGameSnapshot,
  final TrainingGameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'InTrainingState.initial(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InTrainingInitial &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $InTrainingInitialCopyWith<InTrainingInitial> get copyWith =>
      _$InTrainingInitialCopyWithImpl<InTrainingInitial>(this, _$identity);

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
    required TResult Function(InTrainingInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InTrainingInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InTrainingInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InTrainingInitial implements InTrainingState {
  const factory InTrainingInitial(
      {required TrainingGameSnapshot gameSnapshot}) = _$InTrainingInitial;

  @override //GameSnapshot? prevGameSnapshot,
  TrainingGameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InTrainingInitialCopyWith<InTrainingInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
