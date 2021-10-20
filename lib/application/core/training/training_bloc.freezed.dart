// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'training_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrainingEventTearOff {
  const _$TrainingEventTearOff();

  TrainingGameSnapshotReceived gameSnapshotReceived(
      {required TrainingGameSnapshot gameSnapshot}) {
    return TrainingGameSnapshotReceived(
      gameSnapshot: gameSnapshot,
    );
  }
}

/// @nodoc
const $TrainingEvent = _$TrainingEventTearOff();

/// @nodoc
mixin _$TrainingEvent {
  TrainingGameSnapshot get gameSnapshot => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TrainingGameSnapshot gameSnapshot)
        gameSnapshotReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrainingGameSnapshotReceived value)
        gameSnapshotReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrainingEventCopyWith<TrainingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingEventCopyWith<$Res> {
  factory $TrainingEventCopyWith(
          TrainingEvent value, $Res Function(TrainingEvent) then) =
      _$TrainingEventCopyWithImpl<$Res>;
  $Res call({TrainingGameSnapshot gameSnapshot});
}

/// @nodoc
class _$TrainingEventCopyWithImpl<$Res>
    implements $TrainingEventCopyWith<$Res> {
  _$TrainingEventCopyWithImpl(this._value, this._then);

  final TrainingEvent _value;
  // ignore: unused_field
  final $Res Function(TrainingEvent) _then;

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
abstract class $TrainingGameSnapshotReceivedCopyWith<$Res>
    implements $TrainingEventCopyWith<$Res> {
  factory $TrainingGameSnapshotReceivedCopyWith(
          TrainingGameSnapshotReceived value,
          $Res Function(TrainingGameSnapshotReceived) then) =
      _$TrainingGameSnapshotReceivedCopyWithImpl<$Res>;
  @override
  $Res call({TrainingGameSnapshot gameSnapshot});
}

/// @nodoc
class _$TrainingGameSnapshotReceivedCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res>
    implements $TrainingGameSnapshotReceivedCopyWith<$Res> {
  _$TrainingGameSnapshotReceivedCopyWithImpl(
      TrainingGameSnapshotReceived _value,
      $Res Function(TrainingGameSnapshotReceived) _then)
      : super(_value, (v) => _then(v as TrainingGameSnapshotReceived));

  @override
  TrainingGameSnapshotReceived get _value =>
      super._value as TrainingGameSnapshotReceived;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(TrainingGameSnapshotReceived(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as TrainingGameSnapshot,
    ));
  }
}

/// @nodoc

class _$TrainingGameSnapshotReceived implements TrainingGameSnapshotReceived {
  const _$TrainingGameSnapshotReceived({required this.gameSnapshot});

  @override
  final TrainingGameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'TrainingEvent.gameSnapshotReceived(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrainingGameSnapshotReceived &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $TrainingGameSnapshotReceivedCopyWith<TrainingGameSnapshotReceived>
      get copyWith => _$TrainingGameSnapshotReceivedCopyWithImpl<
          TrainingGameSnapshotReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TrainingGameSnapshot gameSnapshot)
        gameSnapshotReceived,
  }) {
    return gameSnapshotReceived(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
  }) {
    return gameSnapshotReceived?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameSnapshotReceived,
    required TResult orElse(),
  }) {
    if (gameSnapshotReceived != null) {
      return gameSnapshotReceived(gameSnapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrainingGameSnapshotReceived value)
        gameSnapshotReceived,
  }) {
    return gameSnapshotReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
  }) {
    return gameSnapshotReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingGameSnapshotReceived value)? gameSnapshotReceived,
    required TResult orElse(),
  }) {
    if (gameSnapshotReceived != null) {
      return gameSnapshotReceived(this);
    }
    return orElse();
  }
}

abstract class TrainingGameSnapshotReceived implements TrainingEvent {
  const factory TrainingGameSnapshotReceived(
          {required TrainingGameSnapshot gameSnapshot}) =
      _$TrainingGameSnapshotReceived;

  @override
  TrainingGameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TrainingGameSnapshotReceivedCopyWith<TrainingGameSnapshotReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$TrainingStateTearOff {
  const _$TrainingStateTearOff();

  TrainingInitial initial() {
    return const TrainingInitial();
  }

  TrainingInProgress gameInProgress(
      {required TrainingGameSnapshot gameSnapshot}) {
    return TrainingInProgress(
      gameSnapshot: gameSnapshot,
    );
  }
}

/// @nodoc
const $TrainingState = _$TrainingStateTearOff();

/// @nodoc
mixin _$TrainingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrainingInitial value) initial,
    required TResult Function(TrainingInProgress value) gameInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingInitial value)? initial,
    TResult Function(TrainingInProgress value)? gameInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingInitial value)? initial,
    TResult Function(TrainingInProgress value)? gameInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingStateCopyWith<$Res> {
  factory $TrainingStateCopyWith(
          TrainingState value, $Res Function(TrainingState) then) =
      _$TrainingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrainingStateCopyWithImpl<$Res>
    implements $TrainingStateCopyWith<$Res> {
  _$TrainingStateCopyWithImpl(this._value, this._then);

  final TrainingState _value;
  // ignore: unused_field
  final $Res Function(TrainingState) _then;
}

/// @nodoc
abstract class $TrainingInitialCopyWith<$Res> {
  factory $TrainingInitialCopyWith(
          TrainingInitial value, $Res Function(TrainingInitial) then) =
      _$TrainingInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrainingInitialCopyWithImpl<$Res>
    extends _$TrainingStateCopyWithImpl<$Res>
    implements $TrainingInitialCopyWith<$Res> {
  _$TrainingInitialCopyWithImpl(
      TrainingInitial _value, $Res Function(TrainingInitial) _then)
      : super(_value, (v) => _then(v as TrainingInitial));

  @override
  TrainingInitial get _value => super._value as TrainingInitial;
}

/// @nodoc

class _$TrainingInitial implements TrainingInitial {
  const _$TrainingInitial();

  @override
  String toString() {
    return 'TrainingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TrainingInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameInProgress,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameInProgress,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameInProgress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrainingInitial value) initial,
    required TResult Function(TrainingInProgress value) gameInProgress,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingInitial value)? initial,
    TResult Function(TrainingInProgress value)? gameInProgress,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingInitial value)? initial,
    TResult Function(TrainingInProgress value)? gameInProgress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TrainingInitial implements TrainingState {
  const factory TrainingInitial() = _$TrainingInitial;
}

/// @nodoc
abstract class $TrainingInProgressCopyWith<$Res> {
  factory $TrainingInProgressCopyWith(
          TrainingInProgress value, $Res Function(TrainingInProgress) then) =
      _$TrainingInProgressCopyWithImpl<$Res>;
  $Res call({TrainingGameSnapshot gameSnapshot});
}

/// @nodoc
class _$TrainingInProgressCopyWithImpl<$Res>
    extends _$TrainingStateCopyWithImpl<$Res>
    implements $TrainingInProgressCopyWith<$Res> {
  _$TrainingInProgressCopyWithImpl(
      TrainingInProgress _value, $Res Function(TrainingInProgress) _then)
      : super(_value, (v) => _then(v as TrainingInProgress));

  @override
  TrainingInProgress get _value => super._value as TrainingInProgress;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(TrainingInProgress(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as TrainingGameSnapshot,
    ));
  }
}

/// @nodoc

class _$TrainingInProgress implements TrainingInProgress {
  const _$TrainingInProgress({required this.gameSnapshot});

  @override
  final TrainingGameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'TrainingState.gameInProgress(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrainingInProgress &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $TrainingInProgressCopyWith<TrainingInProgress> get copyWith =>
      _$TrainingInProgressCopyWithImpl<TrainingInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TrainingGameSnapshot gameSnapshot) gameInProgress,
  }) {
    return gameInProgress(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameInProgress,
  }) {
    return gameInProgress?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TrainingGameSnapshot gameSnapshot)? gameInProgress,
    required TResult orElse(),
  }) {
    if (gameInProgress != null) {
      return gameInProgress(gameSnapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrainingInitial value) initial,
    required TResult Function(TrainingInProgress value) gameInProgress,
  }) {
    return gameInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainingInitial value)? initial,
    TResult Function(TrainingInProgress value)? gameInProgress,
  }) {
    return gameInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainingInitial value)? initial,
    TResult Function(TrainingInProgress value)? gameInProgress,
    required TResult orElse(),
  }) {
    if (gameInProgress != null) {
      return gameInProgress(this);
    }
    return orElse();
  }
}

abstract class TrainingInProgress implements TrainingState {
  const factory TrainingInProgress(
      {required TrainingGameSnapshot gameSnapshot}) = _$TrainingInProgress;

  TrainingGameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingInProgressCopyWith<TrainingInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
