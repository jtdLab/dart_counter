// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'play_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayEventTearOff {
  const _$PlayEventTearOff();

  PlayGameCreated gameCreated({required bool online}) {
    return PlayGameCreated(
      online: online,
    );
  }

  PlayGameJoined gameJoined() {
    return const PlayGameJoined();
  }

  PlayGameSnapshotReceived gameSnapshotReceived(
      {required GameSnapshot gameSnapshot}) {
    return PlayGameSnapshotReceived(
      gameSnapshot: gameSnapshot,
    );
  }

  PlayResetRequested resetRequested() {
    return const PlayResetRequested();
  }
}

/// @nodoc
const $PlayEvent = _$PlayEventTearOff();

/// @nodoc
mixin _$PlayEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function() gameJoined,
    required TResult Function(GameSnapshot gameSnapshot) gameSnapshotReceived,
    required TResult Function() resetRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function()? gameJoined,
    TResult Function(GameSnapshot gameSnapshot)? gameSnapshotReceived,
    TResult Function()? resetRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function()? gameJoined,
    TResult Function(GameSnapshot gameSnapshot)? gameSnapshotReceived,
    TResult Function()? resetRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayGameCreated value) gameCreated,
    required TResult Function(PlayGameJoined value) gameJoined,
    required TResult Function(PlayGameSnapshotReceived value)
        gameSnapshotReceived,
    required TResult Function(PlayResetRequested value) resetRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayGameCreated value)? gameCreated,
    TResult Function(PlayGameJoined value)? gameJoined,
    TResult Function(PlayGameSnapshotReceived value)? gameSnapshotReceived,
    TResult Function(PlayResetRequested value)? resetRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayGameCreated value)? gameCreated,
    TResult Function(PlayGameJoined value)? gameJoined,
    TResult Function(PlayGameSnapshotReceived value)? gameSnapshotReceived,
    TResult Function(PlayResetRequested value)? resetRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayEventCopyWith<$Res> {
  factory $PlayEventCopyWith(PlayEvent value, $Res Function(PlayEvent) then) =
      _$PlayEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayEventCopyWithImpl<$Res> implements $PlayEventCopyWith<$Res> {
  _$PlayEventCopyWithImpl(this._value, this._then);

  final PlayEvent _value;
  // ignore: unused_field
  final $Res Function(PlayEvent) _then;
}

/// @nodoc
abstract class $PlayGameCreatedCopyWith<$Res> {
  factory $PlayGameCreatedCopyWith(
          PlayGameCreated value, $Res Function(PlayGameCreated) then) =
      _$PlayGameCreatedCopyWithImpl<$Res>;
  $Res call({bool online});
}

/// @nodoc
class _$PlayGameCreatedCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $PlayGameCreatedCopyWith<$Res> {
  _$PlayGameCreatedCopyWithImpl(
      PlayGameCreated _value, $Res Function(PlayGameCreated) _then)
      : super(_value, (v) => _then(v as PlayGameCreated));

  @override
  PlayGameCreated get _value => super._value as PlayGameCreated;

  @override
  $Res call({
    Object? online = freezed,
  }) {
    return _then(PlayGameCreated(
      online: online == freezed
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PlayGameCreated implements PlayGameCreated {
  const _$PlayGameCreated({required this.online});

  @override
  final bool online;

  @override
  String toString() {
    return 'PlayEvent.gameCreated(online: $online)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlayGameCreated &&
            (identical(other.online, online) ||
                const DeepCollectionEquality().equals(other.online, online)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(online);

  @JsonKey(ignore: true)
  @override
  $PlayGameCreatedCopyWith<PlayGameCreated> get copyWith =>
      _$PlayGameCreatedCopyWithImpl<PlayGameCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function() gameJoined,
    required TResult Function(GameSnapshot gameSnapshot) gameSnapshotReceived,
    required TResult Function() resetRequested,
  }) {
    return gameCreated(online);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function()? gameJoined,
    TResult Function(GameSnapshot gameSnapshot)? gameSnapshotReceived,
    TResult Function()? resetRequested,
  }) {
    return gameCreated?.call(online);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function()? gameJoined,
    TResult Function(GameSnapshot gameSnapshot)? gameSnapshotReceived,
    TResult Function()? resetRequested,
    required TResult orElse(),
  }) {
    if (gameCreated != null) {
      return gameCreated(online);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayGameCreated value) gameCreated,
    required TResult Function(PlayGameJoined value) gameJoined,
    required TResult Function(PlayGameSnapshotReceived value)
        gameSnapshotReceived,
    required TResult Function(PlayResetRequested value) resetRequested,
  }) {
    return gameCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayGameCreated value)? gameCreated,
    TResult Function(PlayGameJoined value)? gameJoined,
    TResult Function(PlayGameSnapshotReceived value)? gameSnapshotReceived,
    TResult Function(PlayResetRequested value)? resetRequested,
  }) {
    return gameCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayGameCreated value)? gameCreated,
    TResult Function(PlayGameJoined value)? gameJoined,
    TResult Function(PlayGameSnapshotReceived value)? gameSnapshotReceived,
    TResult Function(PlayResetRequested value)? resetRequested,
    required TResult orElse(),
  }) {
    if (gameCreated != null) {
      return gameCreated(this);
    }
    return orElse();
  }
}

abstract class PlayGameCreated implements PlayEvent {
  const factory PlayGameCreated({required bool online}) = _$PlayGameCreated;

  bool get online => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayGameCreatedCopyWith<PlayGameCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayGameJoinedCopyWith<$Res> {
  factory $PlayGameJoinedCopyWith(
          PlayGameJoined value, $Res Function(PlayGameJoined) then) =
      _$PlayGameJoinedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayGameJoinedCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $PlayGameJoinedCopyWith<$Res> {
  _$PlayGameJoinedCopyWithImpl(
      PlayGameJoined _value, $Res Function(PlayGameJoined) _then)
      : super(_value, (v) => _then(v as PlayGameJoined));

  @override
  PlayGameJoined get _value => super._value as PlayGameJoined;
}

/// @nodoc

class _$PlayGameJoined implements PlayGameJoined {
  const _$PlayGameJoined();

  @override
  String toString() {
    return 'PlayEvent.gameJoined()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PlayGameJoined);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function() gameJoined,
    required TResult Function(GameSnapshot gameSnapshot) gameSnapshotReceived,
    required TResult Function() resetRequested,
  }) {
    return gameJoined();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function()? gameJoined,
    TResult Function(GameSnapshot gameSnapshot)? gameSnapshotReceived,
    TResult Function()? resetRequested,
  }) {
    return gameJoined?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function()? gameJoined,
    TResult Function(GameSnapshot gameSnapshot)? gameSnapshotReceived,
    TResult Function()? resetRequested,
    required TResult orElse(),
  }) {
    if (gameJoined != null) {
      return gameJoined();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayGameCreated value) gameCreated,
    required TResult Function(PlayGameJoined value) gameJoined,
    required TResult Function(PlayGameSnapshotReceived value)
        gameSnapshotReceived,
    required TResult Function(PlayResetRequested value) resetRequested,
  }) {
    return gameJoined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayGameCreated value)? gameCreated,
    TResult Function(PlayGameJoined value)? gameJoined,
    TResult Function(PlayGameSnapshotReceived value)? gameSnapshotReceived,
    TResult Function(PlayResetRequested value)? resetRequested,
  }) {
    return gameJoined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayGameCreated value)? gameCreated,
    TResult Function(PlayGameJoined value)? gameJoined,
    TResult Function(PlayGameSnapshotReceived value)? gameSnapshotReceived,
    TResult Function(PlayResetRequested value)? resetRequested,
    required TResult orElse(),
  }) {
    if (gameJoined != null) {
      return gameJoined(this);
    }
    return orElse();
  }
}

abstract class PlayGameJoined implements PlayEvent {
  const factory PlayGameJoined() = _$PlayGameJoined;
}

/// @nodoc
abstract class $PlayGameSnapshotReceivedCopyWith<$Res> {
  factory $PlayGameSnapshotReceivedCopyWith(PlayGameSnapshotReceived value,
          $Res Function(PlayGameSnapshotReceived) then) =
      _$PlayGameSnapshotReceivedCopyWithImpl<$Res>;
  $Res call({GameSnapshot gameSnapshot});
}

/// @nodoc
class _$PlayGameSnapshotReceivedCopyWithImpl<$Res>
    extends _$PlayEventCopyWithImpl<$Res>
    implements $PlayGameSnapshotReceivedCopyWith<$Res> {
  _$PlayGameSnapshotReceivedCopyWithImpl(PlayGameSnapshotReceived _value,
      $Res Function(PlayGameSnapshotReceived) _then)
      : super(_value, (v) => _then(v as PlayGameSnapshotReceived));

  @override
  PlayGameSnapshotReceived get _value =>
      super._value as PlayGameSnapshotReceived;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(PlayGameSnapshotReceived(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as GameSnapshot,
    ));
  }
}

/// @nodoc

class _$PlayGameSnapshotReceived implements PlayGameSnapshotReceived {
  const _$PlayGameSnapshotReceived({required this.gameSnapshot});

  @override
  final GameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'PlayEvent.gameSnapshotReceived(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlayGameSnapshotReceived &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $PlayGameSnapshotReceivedCopyWith<PlayGameSnapshotReceived> get copyWith =>
      _$PlayGameSnapshotReceivedCopyWithImpl<PlayGameSnapshotReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function() gameJoined,
    required TResult Function(GameSnapshot gameSnapshot) gameSnapshotReceived,
    required TResult Function() resetRequested,
  }) {
    return gameSnapshotReceived(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function()? gameJoined,
    TResult Function(GameSnapshot gameSnapshot)? gameSnapshotReceived,
    TResult Function()? resetRequested,
  }) {
    return gameSnapshotReceived?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function()? gameJoined,
    TResult Function(GameSnapshot gameSnapshot)? gameSnapshotReceived,
    TResult Function()? resetRequested,
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
    required TResult Function(PlayGameCreated value) gameCreated,
    required TResult Function(PlayGameJoined value) gameJoined,
    required TResult Function(PlayGameSnapshotReceived value)
        gameSnapshotReceived,
    required TResult Function(PlayResetRequested value) resetRequested,
  }) {
    return gameSnapshotReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayGameCreated value)? gameCreated,
    TResult Function(PlayGameJoined value)? gameJoined,
    TResult Function(PlayGameSnapshotReceived value)? gameSnapshotReceived,
    TResult Function(PlayResetRequested value)? resetRequested,
  }) {
    return gameSnapshotReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayGameCreated value)? gameCreated,
    TResult Function(PlayGameJoined value)? gameJoined,
    TResult Function(PlayGameSnapshotReceived value)? gameSnapshotReceived,
    TResult Function(PlayResetRequested value)? resetRequested,
    required TResult orElse(),
  }) {
    if (gameSnapshotReceived != null) {
      return gameSnapshotReceived(this);
    }
    return orElse();
  }
}

abstract class PlayGameSnapshotReceived implements PlayEvent {
  const factory PlayGameSnapshotReceived({required GameSnapshot gameSnapshot}) =
      _$PlayGameSnapshotReceived;

  GameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayGameSnapshotReceivedCopyWith<PlayGameSnapshotReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayResetRequestedCopyWith<$Res> {
  factory $PlayResetRequestedCopyWith(
          PlayResetRequested value, $Res Function(PlayResetRequested) then) =
      _$PlayResetRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayResetRequestedCopyWithImpl<$Res>
    extends _$PlayEventCopyWithImpl<$Res>
    implements $PlayResetRequestedCopyWith<$Res> {
  _$PlayResetRequestedCopyWithImpl(
      PlayResetRequested _value, $Res Function(PlayResetRequested) _then)
      : super(_value, (v) => _then(v as PlayResetRequested));

  @override
  PlayResetRequested get _value => super._value as PlayResetRequested;
}

/// @nodoc

class _$PlayResetRequested implements PlayResetRequested {
  const _$PlayResetRequested();

  @override
  String toString() {
    return 'PlayEvent.resetRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PlayResetRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function() gameJoined,
    required TResult Function(GameSnapshot gameSnapshot) gameSnapshotReceived,
    required TResult Function() resetRequested,
  }) {
    return resetRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function()? gameJoined,
    TResult Function(GameSnapshot gameSnapshot)? gameSnapshotReceived,
    TResult Function()? resetRequested,
  }) {
    return resetRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function()? gameJoined,
    TResult Function(GameSnapshot gameSnapshot)? gameSnapshotReceived,
    TResult Function()? resetRequested,
    required TResult orElse(),
  }) {
    if (resetRequested != null) {
      return resetRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayGameCreated value) gameCreated,
    required TResult Function(PlayGameJoined value) gameJoined,
    required TResult Function(PlayGameSnapshotReceived value)
        gameSnapshotReceived,
    required TResult Function(PlayResetRequested value) resetRequested,
  }) {
    return resetRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayGameCreated value)? gameCreated,
    TResult Function(PlayGameJoined value)? gameJoined,
    TResult Function(PlayGameSnapshotReceived value)? gameSnapshotReceived,
    TResult Function(PlayResetRequested value)? resetRequested,
  }) {
    return resetRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayGameCreated value)? gameCreated,
    TResult Function(PlayGameJoined value)? gameJoined,
    TResult Function(PlayGameSnapshotReceived value)? gameSnapshotReceived,
    TResult Function(PlayResetRequested value)? resetRequested,
    required TResult orElse(),
  }) {
    if (resetRequested != null) {
      return resetRequested(this);
    }
    return orElse();
  }
}

abstract class PlayResetRequested implements PlayEvent {
  const factory PlayResetRequested() = _$PlayResetRequested;
}

/// @nodoc
class _$PlayStateTearOff {
  const _$PlayStateTearOff();

  PlayInitial initial() {
    return const PlayInitial();
  }

  PlayGameInProgress gameInProgress({required GameSnapshot gameSnapshot}) {
    return PlayGameInProgress(
      gameSnapshot: gameSnapshot,
    );
  }
}

/// @nodoc
const $PlayState = _$PlayStateTearOff();

/// @nodoc
mixin _$PlayState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GameSnapshot gameSnapshot) gameInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GameSnapshot gameSnapshot)? gameInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GameSnapshot gameSnapshot)? gameInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayInitial value) initial,
    required TResult Function(PlayGameInProgress value) gameInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayInitial value)? initial,
    TResult Function(PlayGameInProgress value)? gameInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayInitial value)? initial,
    TResult Function(PlayGameInProgress value)? gameInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayStateCopyWith<$Res> {
  factory $PlayStateCopyWith(PlayState value, $Res Function(PlayState) then) =
      _$PlayStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayStateCopyWithImpl<$Res> implements $PlayStateCopyWith<$Res> {
  _$PlayStateCopyWithImpl(this._value, this._then);

  final PlayState _value;
  // ignore: unused_field
  final $Res Function(PlayState) _then;
}

/// @nodoc
abstract class $PlayInitialCopyWith<$Res> {
  factory $PlayInitialCopyWith(
          PlayInitial value, $Res Function(PlayInitial) then) =
      _$PlayInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayInitialCopyWithImpl<$Res> extends _$PlayStateCopyWithImpl<$Res>
    implements $PlayInitialCopyWith<$Res> {
  _$PlayInitialCopyWithImpl(
      PlayInitial _value, $Res Function(PlayInitial) _then)
      : super(_value, (v) => _then(v as PlayInitial));

  @override
  PlayInitial get _value => super._value as PlayInitial;
}

/// @nodoc

class _$PlayInitial implements PlayInitial {
  const _$PlayInitial();

  @override
  String toString() {
    return 'PlayState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PlayInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GameSnapshot gameSnapshot) gameInProgress,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GameSnapshot gameSnapshot)? gameInProgress,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GameSnapshot gameSnapshot)? gameInProgress,
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
    required TResult Function(PlayInitial value) initial,
    required TResult Function(PlayGameInProgress value) gameInProgress,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayInitial value)? initial,
    TResult Function(PlayGameInProgress value)? gameInProgress,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayInitial value)? initial,
    TResult Function(PlayGameInProgress value)? gameInProgress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PlayInitial implements PlayState {
  const factory PlayInitial() = _$PlayInitial;
}

/// @nodoc
abstract class $PlayGameInProgressCopyWith<$Res> {
  factory $PlayGameInProgressCopyWith(
          PlayGameInProgress value, $Res Function(PlayGameInProgress) then) =
      _$PlayGameInProgressCopyWithImpl<$Res>;
  $Res call({GameSnapshot gameSnapshot});
}

/// @nodoc
class _$PlayGameInProgressCopyWithImpl<$Res>
    extends _$PlayStateCopyWithImpl<$Res>
    implements $PlayGameInProgressCopyWith<$Res> {
  _$PlayGameInProgressCopyWithImpl(
      PlayGameInProgress _value, $Res Function(PlayGameInProgress) _then)
      : super(_value, (v) => _then(v as PlayGameInProgress));

  @override
  PlayGameInProgress get _value => super._value as PlayGameInProgress;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(PlayGameInProgress(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as GameSnapshot,
    ));
  }
}

/// @nodoc

class _$PlayGameInProgress implements PlayGameInProgress {
  const _$PlayGameInProgress({required this.gameSnapshot});

  @override
  final GameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'PlayState.gameInProgress(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlayGameInProgress &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $PlayGameInProgressCopyWith<PlayGameInProgress> get copyWith =>
      _$PlayGameInProgressCopyWithImpl<PlayGameInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GameSnapshot gameSnapshot) gameInProgress,
  }) {
    return gameInProgress(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GameSnapshot gameSnapshot)? gameInProgress,
  }) {
    return gameInProgress?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GameSnapshot gameSnapshot)? gameInProgress,
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
    required TResult Function(PlayInitial value) initial,
    required TResult Function(PlayGameInProgress value) gameInProgress,
  }) {
    return gameInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayInitial value)? initial,
    TResult Function(PlayGameInProgress value)? gameInProgress,
  }) {
    return gameInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayInitial value)? initial,
    TResult Function(PlayGameInProgress value)? gameInProgress,
    required TResult orElse(),
  }) {
    if (gameInProgress != null) {
      return gameInProgress(this);
    }
    return orElse();
  }
}

abstract class PlayGameInProgress implements PlayState {
  const factory PlayGameInProgress({required GameSnapshot gameSnapshot}) =
      _$PlayGameInProgress;

  GameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayGameInProgressCopyWith<PlayGameInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
