// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateGameEventTearOff {
  const _$CreateGameEventTearOff();

  _GameCanceled gameCanceled() {
    return const _GameCanceled();
  }

  _PlayerReordered playerReordered(
      {required int oldIndex, required int newIndex}) {
    return _PlayerReordered(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }

  _PlayerAdded playerAdded() {
    return const _PlayerAdded();
  }

  _PlayerRemoved playerRemoved({required int index}) {
    return _PlayerRemoved(
      index: index,
    );
  }

  _PlayerNameUpdated playerNameUpdated(
      {required int index, required String newName}) {
    return _PlayerNameUpdated(
      index: index,
      newName: newName,
    );
  }

  _StartingPointsUpdated startingPointsUpdated(
      {required int newStartingPoints}) {
    return _StartingPointsUpdated(
      newStartingPoints: newStartingPoints,
    );
  }

  _ModeUpdated modeUpdated({required Mode newMode}) {
    return _ModeUpdated(
      newMode: newMode,
    );
  }

  _SizeUpdated sizeUpdated({required int newSize}) {
    return _SizeUpdated(
      newSize: newSize,
    );
  }

  _TypeUpdated typeUpdated({required Type newType}) {
    return _TypeUpdated(
      newType: newType,
    );
  }

  _GameStarted gameStarted() {
    return const _GameStarted();
  }

  _DartBotAdded dartBotAdded() {
    return const _DartBotAdded();
  }

  _DartBotRemoved dartBotRemoved() {
    return const _DartBotRemoved();
  }

  _DartBotTargetAverageUpdated dartBotTargetAverageUpdated(
      {required int newTargetAverage}) {
    return _DartBotTargetAverageUpdated(
      newTargetAverage: newTargetAverage,
    );
  }

  _GameReceived gameReceived({required AbstractGameSnapshot gameSnapshot}) {
    return _GameReceived(
      gameSnapshot: gameSnapshot,
    );
  }
}

/// @nodoc
const $CreateGameEvent = _$CreateGameEventTearOff();

/// @nodoc
mixin _$CreateGameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
    required TResult Function(_DartBotAdded value) dartBotAdded,
    required TResult Function(_DartBotRemoved value) dartBotRemoved,
    required TResult Function(_DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(_GameReceived value) gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGameEventCopyWith<$Res> {
  factory $CreateGameEventCopyWith(
          CreateGameEvent value, $Res Function(CreateGameEvent) then) =
      _$CreateGameEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateGameEventCopyWithImpl<$Res>
    implements $CreateGameEventCopyWith<$Res> {
  _$CreateGameEventCopyWithImpl(this._value, this._then);

  final CreateGameEvent _value;
  // ignore: unused_field
  final $Res Function(CreateGameEvent) _then;
}

/// @nodoc
abstract class _$GameCanceledCopyWith<$Res> {
  factory _$GameCanceledCopyWith(
          _GameCanceled value, $Res Function(_GameCanceled) then) =
      __$GameCanceledCopyWithImpl<$Res>;
}

/// @nodoc
class __$GameCanceledCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res>
    implements _$GameCanceledCopyWith<$Res> {
  __$GameCanceledCopyWithImpl(
      _GameCanceled _value, $Res Function(_GameCanceled) _then)
      : super(_value, (v) => _then(v as _GameCanceled));

  @override
  _GameCanceled get _value => super._value as _GameCanceled;
}

/// @nodoc

class _$_GameCanceled implements _GameCanceled {
  const _$_GameCanceled();

  @override
  String toString() {
    return 'CreateGameEvent.gameCanceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GameCanceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
  }) {
    return gameCanceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return gameCanceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameCanceled != null) {
      return gameCanceled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
    required TResult Function(_DartBotAdded value) dartBotAdded,
    required TResult Function(_DartBotRemoved value) dartBotRemoved,
    required TResult Function(_DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(_GameReceived value) gameReceived,
  }) {
    return gameCanceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
  }) {
    return gameCanceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameCanceled != null) {
      return gameCanceled(this);
    }
    return orElse();
  }
}

abstract class _GameCanceled implements CreateGameEvent {
  const factory _GameCanceled() = _$_GameCanceled;
}

/// @nodoc
abstract class _$PlayerReorderedCopyWith<$Res> {
  factory _$PlayerReorderedCopyWith(
          _PlayerReordered value, $Res Function(_PlayerReordered) then) =
      __$PlayerReorderedCopyWithImpl<$Res>;
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$PlayerReorderedCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res>
    implements _$PlayerReorderedCopyWith<$Res> {
  __$PlayerReorderedCopyWithImpl(
      _PlayerReordered _value, $Res Function(_PlayerReordered) _then)
      : super(_value, (v) => _then(v as _PlayerReordered));

  @override
  _PlayerReordered get _value => super._value as _PlayerReordered;

  @override
  $Res call({
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
  }) {
    return _then(_PlayerReordered(
      oldIndex: oldIndex == freezed
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newIndex: newIndex == freezed
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PlayerReordered implements _PlayerReordered {
  const _$_PlayerReordered({required this.oldIndex, required this.newIndex});

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'CreateGameEvent.playerReordered(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayerReordered &&
            (identical(other.oldIndex, oldIndex) ||
                other.oldIndex == oldIndex) &&
            (identical(other.newIndex, newIndex) ||
                other.newIndex == newIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldIndex, newIndex);

  @JsonKey(ignore: true)
  @override
  _$PlayerReorderedCopyWith<_PlayerReordered> get copyWith =>
      __$PlayerReorderedCopyWithImpl<_PlayerReordered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
  }) {
    return playerReordered(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return playerReordered?.call(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) {
    if (playerReordered != null) {
      return playerReordered(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
    required TResult Function(_DartBotAdded value) dartBotAdded,
    required TResult Function(_DartBotRemoved value) dartBotRemoved,
    required TResult Function(_DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(_GameReceived value) gameReceived,
  }) {
    return playerReordered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
  }) {
    return playerReordered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (playerReordered != null) {
      return playerReordered(this);
    }
    return orElse();
  }
}

abstract class _PlayerReordered implements CreateGameEvent {
  const factory _PlayerReordered(
      {required int oldIndex, required int newIndex}) = _$_PlayerReordered;

  int get oldIndex;
  int get newIndex;
  @JsonKey(ignore: true)
  _$PlayerReorderedCopyWith<_PlayerReordered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PlayerAddedCopyWith<$Res> {
  factory _$PlayerAddedCopyWith(
          _PlayerAdded value, $Res Function(_PlayerAdded) then) =
      __$PlayerAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PlayerAddedCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res>
    implements _$PlayerAddedCopyWith<$Res> {
  __$PlayerAddedCopyWithImpl(
      _PlayerAdded _value, $Res Function(_PlayerAdded) _then)
      : super(_value, (v) => _then(v as _PlayerAdded));

  @override
  _PlayerAdded get _value => super._value as _PlayerAdded;
}

/// @nodoc

class _$_PlayerAdded implements _PlayerAdded {
  const _$_PlayerAdded();

  @override
  String toString() {
    return 'CreateGameEvent.playerAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PlayerAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
  }) {
    return playerAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return playerAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) {
    if (playerAdded != null) {
      return playerAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
    required TResult Function(_DartBotAdded value) dartBotAdded,
    required TResult Function(_DartBotRemoved value) dartBotRemoved,
    required TResult Function(_DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(_GameReceived value) gameReceived,
  }) {
    return playerAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
  }) {
    return playerAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (playerAdded != null) {
      return playerAdded(this);
    }
    return orElse();
  }
}

abstract class _PlayerAdded implements CreateGameEvent {
  const factory _PlayerAdded() = _$_PlayerAdded;
}

/// @nodoc
abstract class _$PlayerRemovedCopyWith<$Res> {
  factory _$PlayerRemovedCopyWith(
          _PlayerRemoved value, $Res Function(_PlayerRemoved) then) =
      __$PlayerRemovedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$PlayerRemovedCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res>
    implements _$PlayerRemovedCopyWith<$Res> {
  __$PlayerRemovedCopyWithImpl(
      _PlayerRemoved _value, $Res Function(_PlayerRemoved) _then)
      : super(_value, (v) => _then(v as _PlayerRemoved));

  @override
  _PlayerRemoved get _value => super._value as _PlayerRemoved;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_PlayerRemoved(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PlayerRemoved implements _PlayerRemoved {
  const _$_PlayerRemoved({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'CreateGameEvent.playerRemoved(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayerRemoved &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  _$PlayerRemovedCopyWith<_PlayerRemoved> get copyWith =>
      __$PlayerRemovedCopyWithImpl<_PlayerRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
  }) {
    return playerRemoved(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return playerRemoved?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) {
    if (playerRemoved != null) {
      return playerRemoved(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
    required TResult Function(_DartBotAdded value) dartBotAdded,
    required TResult Function(_DartBotRemoved value) dartBotRemoved,
    required TResult Function(_DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(_GameReceived value) gameReceived,
  }) {
    return playerRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
  }) {
    return playerRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (playerRemoved != null) {
      return playerRemoved(this);
    }
    return orElse();
  }
}

abstract class _PlayerRemoved implements CreateGameEvent {
  const factory _PlayerRemoved({required int index}) = _$_PlayerRemoved;

  int get index;
  @JsonKey(ignore: true)
  _$PlayerRemovedCopyWith<_PlayerRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PlayerNameUpdatedCopyWith<$Res> {
  factory _$PlayerNameUpdatedCopyWith(
          _PlayerNameUpdated value, $Res Function(_PlayerNameUpdated) then) =
      __$PlayerNameUpdatedCopyWithImpl<$Res>;
  $Res call({int index, String newName});
}

/// @nodoc
class __$PlayerNameUpdatedCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res>
    implements _$PlayerNameUpdatedCopyWith<$Res> {
  __$PlayerNameUpdatedCopyWithImpl(
      _PlayerNameUpdated _value, $Res Function(_PlayerNameUpdated) _then)
      : super(_value, (v) => _then(v as _PlayerNameUpdated));

  @override
  _PlayerNameUpdated get _value => super._value as _PlayerNameUpdated;

  @override
  $Res call({
    Object? index = freezed,
    Object? newName = freezed,
  }) {
    return _then(_PlayerNameUpdated(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      newName: newName == freezed
          ? _value.newName
          : newName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlayerNameUpdated implements _PlayerNameUpdated {
  const _$_PlayerNameUpdated({required this.index, required this.newName});

  @override
  final int index;
  @override
  final String newName;

  @override
  String toString() {
    return 'CreateGameEvent.playerNameUpdated(index: $index, newName: $newName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayerNameUpdated &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.newName, newName) || other.newName == newName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, newName);

  @JsonKey(ignore: true)
  @override
  _$PlayerNameUpdatedCopyWith<_PlayerNameUpdated> get copyWith =>
      __$PlayerNameUpdatedCopyWithImpl<_PlayerNameUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
  }) {
    return playerNameUpdated(index, newName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return playerNameUpdated?.call(index, newName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) {
    if (playerNameUpdated != null) {
      return playerNameUpdated(index, newName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
    required TResult Function(_DartBotAdded value) dartBotAdded,
    required TResult Function(_DartBotRemoved value) dartBotRemoved,
    required TResult Function(_DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(_GameReceived value) gameReceived,
  }) {
    return playerNameUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
  }) {
    return playerNameUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (playerNameUpdated != null) {
      return playerNameUpdated(this);
    }
    return orElse();
  }
}

abstract class _PlayerNameUpdated implements CreateGameEvent {
  const factory _PlayerNameUpdated(
      {required int index, required String newName}) = _$_PlayerNameUpdated;

  int get index;
  String get newName;
  @JsonKey(ignore: true)
  _$PlayerNameUpdatedCopyWith<_PlayerNameUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StartingPointsUpdatedCopyWith<$Res> {
  factory _$StartingPointsUpdatedCopyWith(_StartingPointsUpdated value,
          $Res Function(_StartingPointsUpdated) then) =
      __$StartingPointsUpdatedCopyWithImpl<$Res>;
  $Res call({int newStartingPoints});
}

/// @nodoc
class __$StartingPointsUpdatedCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res>
    implements _$StartingPointsUpdatedCopyWith<$Res> {
  __$StartingPointsUpdatedCopyWithImpl(_StartingPointsUpdated _value,
      $Res Function(_StartingPointsUpdated) _then)
      : super(_value, (v) => _then(v as _StartingPointsUpdated));

  @override
  _StartingPointsUpdated get _value => super._value as _StartingPointsUpdated;

  @override
  $Res call({
    Object? newStartingPoints = freezed,
  }) {
    return _then(_StartingPointsUpdated(
      newStartingPoints: newStartingPoints == freezed
          ? _value.newStartingPoints
          : newStartingPoints // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_StartingPointsUpdated implements _StartingPointsUpdated {
  const _$_StartingPointsUpdated({required this.newStartingPoints});

  @override
  final int newStartingPoints;

  @override
  String toString() {
    return 'CreateGameEvent.startingPointsUpdated(newStartingPoints: $newStartingPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StartingPointsUpdated &&
            (identical(other.newStartingPoints, newStartingPoints) ||
                other.newStartingPoints == newStartingPoints));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newStartingPoints);

  @JsonKey(ignore: true)
  @override
  _$StartingPointsUpdatedCopyWith<_StartingPointsUpdated> get copyWith =>
      __$StartingPointsUpdatedCopyWithImpl<_StartingPointsUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
  }) {
    return startingPointsUpdated(newStartingPoints);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return startingPointsUpdated?.call(newStartingPoints);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) {
    if (startingPointsUpdated != null) {
      return startingPointsUpdated(newStartingPoints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
    required TResult Function(_DartBotAdded value) dartBotAdded,
    required TResult Function(_DartBotRemoved value) dartBotRemoved,
    required TResult Function(_DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(_GameReceived value) gameReceived,
  }) {
    return startingPointsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
  }) {
    return startingPointsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (startingPointsUpdated != null) {
      return startingPointsUpdated(this);
    }
    return orElse();
  }
}

abstract class _StartingPointsUpdated implements CreateGameEvent {
  const factory _StartingPointsUpdated({required int newStartingPoints}) =
      _$_StartingPointsUpdated;

  int get newStartingPoints;
  @JsonKey(ignore: true)
  _$StartingPointsUpdatedCopyWith<_StartingPointsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ModeUpdatedCopyWith<$Res> {
  factory _$ModeUpdatedCopyWith(
          _ModeUpdated value, $Res Function(_ModeUpdated) then) =
      __$ModeUpdatedCopyWithImpl<$Res>;
  $Res call({Mode newMode});
}

/// @nodoc
class __$ModeUpdatedCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res>
    implements _$ModeUpdatedCopyWith<$Res> {
  __$ModeUpdatedCopyWithImpl(
      _ModeUpdated _value, $Res Function(_ModeUpdated) _then)
      : super(_value, (v) => _then(v as _ModeUpdated));

  @override
  _ModeUpdated get _value => super._value as _ModeUpdated;

  @override
  $Res call({
    Object? newMode = freezed,
  }) {
    return _then(_ModeUpdated(
      newMode: newMode == freezed
          ? _value.newMode
          : newMode // ignore: cast_nullable_to_non_nullable
              as Mode,
    ));
  }
}

/// @nodoc

class _$_ModeUpdated implements _ModeUpdated {
  const _$_ModeUpdated({required this.newMode});

  @override
  final Mode newMode;

  @override
  String toString() {
    return 'CreateGameEvent.modeUpdated(newMode: $newMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModeUpdated &&
            (identical(other.newMode, newMode) || other.newMode == newMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newMode);

  @JsonKey(ignore: true)
  @override
  _$ModeUpdatedCopyWith<_ModeUpdated> get copyWith =>
      __$ModeUpdatedCopyWithImpl<_ModeUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
  }) {
    return modeUpdated(newMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return modeUpdated?.call(newMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) {
    if (modeUpdated != null) {
      return modeUpdated(newMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
    required TResult Function(_DartBotAdded value) dartBotAdded,
    required TResult Function(_DartBotRemoved value) dartBotRemoved,
    required TResult Function(_DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(_GameReceived value) gameReceived,
  }) {
    return modeUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
  }) {
    return modeUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (modeUpdated != null) {
      return modeUpdated(this);
    }
    return orElse();
  }
}

abstract class _ModeUpdated implements CreateGameEvent {
  const factory _ModeUpdated({required Mode newMode}) = _$_ModeUpdated;

  Mode get newMode;
  @JsonKey(ignore: true)
  _$ModeUpdatedCopyWith<_ModeUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SizeUpdatedCopyWith<$Res> {
  factory _$SizeUpdatedCopyWith(
          _SizeUpdated value, $Res Function(_SizeUpdated) then) =
      __$SizeUpdatedCopyWithImpl<$Res>;
  $Res call({int newSize});
}

/// @nodoc
class __$SizeUpdatedCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res>
    implements _$SizeUpdatedCopyWith<$Res> {
  __$SizeUpdatedCopyWithImpl(
      _SizeUpdated _value, $Res Function(_SizeUpdated) _then)
      : super(_value, (v) => _then(v as _SizeUpdated));

  @override
  _SizeUpdated get _value => super._value as _SizeUpdated;

  @override
  $Res call({
    Object? newSize = freezed,
  }) {
    return _then(_SizeUpdated(
      newSize: newSize == freezed
          ? _value.newSize
          : newSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SizeUpdated implements _SizeUpdated {
  const _$_SizeUpdated({required this.newSize});

  @override
  final int newSize;

  @override
  String toString() {
    return 'CreateGameEvent.sizeUpdated(newSize: $newSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SizeUpdated &&
            (identical(other.newSize, newSize) || other.newSize == newSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newSize);

  @JsonKey(ignore: true)
  @override
  _$SizeUpdatedCopyWith<_SizeUpdated> get copyWith =>
      __$SizeUpdatedCopyWithImpl<_SizeUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
  }) {
    return sizeUpdated(newSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return sizeUpdated?.call(newSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) {
    if (sizeUpdated != null) {
      return sizeUpdated(newSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
    required TResult Function(_DartBotAdded value) dartBotAdded,
    required TResult Function(_DartBotRemoved value) dartBotRemoved,
    required TResult Function(_DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(_GameReceived value) gameReceived,
  }) {
    return sizeUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
  }) {
    return sizeUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (sizeUpdated != null) {
      return sizeUpdated(this);
    }
    return orElse();
  }
}

abstract class _SizeUpdated implements CreateGameEvent {
  const factory _SizeUpdated({required int newSize}) = _$_SizeUpdated;

  int get newSize;
  @JsonKey(ignore: true)
  _$SizeUpdatedCopyWith<_SizeUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TypeUpdatedCopyWith<$Res> {
  factory _$TypeUpdatedCopyWith(
          _TypeUpdated value, $Res Function(_TypeUpdated) then) =
      __$TypeUpdatedCopyWithImpl<$Res>;
  $Res call({Type newType});
}

/// @nodoc
class __$TypeUpdatedCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res>
    implements _$TypeUpdatedCopyWith<$Res> {
  __$TypeUpdatedCopyWithImpl(
      _TypeUpdated _value, $Res Function(_TypeUpdated) _then)
      : super(_value, (v) => _then(v as _TypeUpdated));

  @override
  _TypeUpdated get _value => super._value as _TypeUpdated;

  @override
  $Res call({
    Object? newType = freezed,
  }) {
    return _then(_TypeUpdated(
      newType: newType == freezed
          ? _value.newType
          : newType // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc

class _$_TypeUpdated implements _TypeUpdated {
  const _$_TypeUpdated({required this.newType});

  @override
  final Type newType;

  @override
  String toString() {
    return 'CreateGameEvent.typeUpdated(newType: $newType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TypeUpdated &&
            (identical(other.newType, newType) || other.newType == newType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newType);

  @JsonKey(ignore: true)
  @override
  _$TypeUpdatedCopyWith<_TypeUpdated> get copyWith =>
      __$TypeUpdatedCopyWithImpl<_TypeUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
  }) {
    return typeUpdated(newType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return typeUpdated?.call(newType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) {
    if (typeUpdated != null) {
      return typeUpdated(newType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
    required TResult Function(_DartBotAdded value) dartBotAdded,
    required TResult Function(_DartBotRemoved value) dartBotRemoved,
    required TResult Function(_DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(_GameReceived value) gameReceived,
  }) {
    return typeUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
  }) {
    return typeUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (typeUpdated != null) {
      return typeUpdated(this);
    }
    return orElse();
  }
}

abstract class _TypeUpdated implements CreateGameEvent {
  const factory _TypeUpdated({required Type newType}) = _$_TypeUpdated;

  Type get newType;
  @JsonKey(ignore: true)
  _$TypeUpdatedCopyWith<_TypeUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GameStartedCopyWith<$Res> {
  factory _$GameStartedCopyWith(
          _GameStarted value, $Res Function(_GameStarted) then) =
      __$GameStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$GameStartedCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res>
    implements _$GameStartedCopyWith<$Res> {
  __$GameStartedCopyWithImpl(
      _GameStarted _value, $Res Function(_GameStarted) _then)
      : super(_value, (v) => _then(v as _GameStarted));

  @override
  _GameStarted get _value => super._value as _GameStarted;
}

/// @nodoc

class _$_GameStarted implements _GameStarted {
  const _$_GameStarted();

  @override
  String toString() {
    return 'CreateGameEvent.gameStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GameStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
  }) {
    return gameStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return gameStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameStarted != null) {
      return gameStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
    required TResult Function(_DartBotAdded value) dartBotAdded,
    required TResult Function(_DartBotRemoved value) dartBotRemoved,
    required TResult Function(_DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(_GameReceived value) gameReceived,
  }) {
    return gameStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
  }) {
    return gameStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameStarted != null) {
      return gameStarted(this);
    }
    return orElse();
  }
}

abstract class _GameStarted implements CreateGameEvent {
  const factory _GameStarted() = _$_GameStarted;
}

/// @nodoc
abstract class _$DartBotAddedCopyWith<$Res> {
  factory _$DartBotAddedCopyWith(
          _DartBotAdded value, $Res Function(_DartBotAdded) then) =
      __$DartBotAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DartBotAddedCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res>
    implements _$DartBotAddedCopyWith<$Res> {
  __$DartBotAddedCopyWithImpl(
      _DartBotAdded _value, $Res Function(_DartBotAdded) _then)
      : super(_value, (v) => _then(v as _DartBotAdded));

  @override
  _DartBotAdded get _value => super._value as _DartBotAdded;
}

/// @nodoc

class _$_DartBotAdded implements _DartBotAdded {
  const _$_DartBotAdded();

  @override
  String toString() {
    return 'CreateGameEvent.dartBotAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DartBotAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
  }) {
    return dartBotAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return dartBotAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) {
    if (dartBotAdded != null) {
      return dartBotAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
    required TResult Function(_DartBotAdded value) dartBotAdded,
    required TResult Function(_DartBotRemoved value) dartBotRemoved,
    required TResult Function(_DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(_GameReceived value) gameReceived,
  }) {
    return dartBotAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
  }) {
    return dartBotAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (dartBotAdded != null) {
      return dartBotAdded(this);
    }
    return orElse();
  }
}

abstract class _DartBotAdded implements CreateGameEvent {
  const factory _DartBotAdded() = _$_DartBotAdded;
}

/// @nodoc
abstract class _$DartBotRemovedCopyWith<$Res> {
  factory _$DartBotRemovedCopyWith(
          _DartBotRemoved value, $Res Function(_DartBotRemoved) then) =
      __$DartBotRemovedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DartBotRemovedCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res>
    implements _$DartBotRemovedCopyWith<$Res> {
  __$DartBotRemovedCopyWithImpl(
      _DartBotRemoved _value, $Res Function(_DartBotRemoved) _then)
      : super(_value, (v) => _then(v as _DartBotRemoved));

  @override
  _DartBotRemoved get _value => super._value as _DartBotRemoved;
}

/// @nodoc

class _$_DartBotRemoved implements _DartBotRemoved {
  const _$_DartBotRemoved();

  @override
  String toString() {
    return 'CreateGameEvent.dartBotRemoved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DartBotRemoved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
  }) {
    return dartBotRemoved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return dartBotRemoved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) {
    if (dartBotRemoved != null) {
      return dartBotRemoved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
    required TResult Function(_DartBotAdded value) dartBotAdded,
    required TResult Function(_DartBotRemoved value) dartBotRemoved,
    required TResult Function(_DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(_GameReceived value) gameReceived,
  }) {
    return dartBotRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
  }) {
    return dartBotRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (dartBotRemoved != null) {
      return dartBotRemoved(this);
    }
    return orElse();
  }
}

abstract class _DartBotRemoved implements CreateGameEvent {
  const factory _DartBotRemoved() = _$_DartBotRemoved;
}

/// @nodoc
abstract class _$DartBotTargetAverageUpdatedCopyWith<$Res> {
  factory _$DartBotTargetAverageUpdatedCopyWith(
          _DartBotTargetAverageUpdated value,
          $Res Function(_DartBotTargetAverageUpdated) then) =
      __$DartBotTargetAverageUpdatedCopyWithImpl<$Res>;
  $Res call({int newTargetAverage});
}

/// @nodoc
class __$DartBotTargetAverageUpdatedCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res>
    implements _$DartBotTargetAverageUpdatedCopyWith<$Res> {
  __$DartBotTargetAverageUpdatedCopyWithImpl(
      _DartBotTargetAverageUpdated _value,
      $Res Function(_DartBotTargetAverageUpdated) _then)
      : super(_value, (v) => _then(v as _DartBotTargetAverageUpdated));

  @override
  _DartBotTargetAverageUpdated get _value =>
      super._value as _DartBotTargetAverageUpdated;

  @override
  $Res call({
    Object? newTargetAverage = freezed,
  }) {
    return _then(_DartBotTargetAverageUpdated(
      newTargetAverage: newTargetAverage == freezed
          ? _value.newTargetAverage
          : newTargetAverage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DartBotTargetAverageUpdated implements _DartBotTargetAverageUpdated {
  const _$_DartBotTargetAverageUpdated({required this.newTargetAverage});

  @override
  final int newTargetAverage;

  @override
  String toString() {
    return 'CreateGameEvent.dartBotTargetAverageUpdated(newTargetAverage: $newTargetAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DartBotTargetAverageUpdated &&
            (identical(other.newTargetAverage, newTargetAverage) ||
                other.newTargetAverage == newTargetAverage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newTargetAverage);

  @JsonKey(ignore: true)
  @override
  _$DartBotTargetAverageUpdatedCopyWith<_DartBotTargetAverageUpdated>
      get copyWith => __$DartBotTargetAverageUpdatedCopyWithImpl<
          _DartBotTargetAverageUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
  }) {
    return dartBotTargetAverageUpdated(newTargetAverage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return dartBotTargetAverageUpdated?.call(newTargetAverage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) {
    if (dartBotTargetAverageUpdated != null) {
      return dartBotTargetAverageUpdated(newTargetAverage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
    required TResult Function(_DartBotAdded value) dartBotAdded,
    required TResult Function(_DartBotRemoved value) dartBotRemoved,
    required TResult Function(_DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(_GameReceived value) gameReceived,
  }) {
    return dartBotTargetAverageUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
  }) {
    return dartBotTargetAverageUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (dartBotTargetAverageUpdated != null) {
      return dartBotTargetAverageUpdated(this);
    }
    return orElse();
  }
}

abstract class _DartBotTargetAverageUpdated implements CreateGameEvent {
  const factory _DartBotTargetAverageUpdated({required int newTargetAverage}) =
      _$_DartBotTargetAverageUpdated;

  int get newTargetAverage;
  @JsonKey(ignore: true)
  _$DartBotTargetAverageUpdatedCopyWith<_DartBotTargetAverageUpdated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GameReceivedCopyWith<$Res> {
  factory _$GameReceivedCopyWith(
          _GameReceived value, $Res Function(_GameReceived) then) =
      __$GameReceivedCopyWithImpl<$Res>;
  $Res call({AbstractGameSnapshot gameSnapshot});
}

/// @nodoc
class __$GameReceivedCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res>
    implements _$GameReceivedCopyWith<$Res> {
  __$GameReceivedCopyWithImpl(
      _GameReceived _value, $Res Function(_GameReceived) _then)
      : super(_value, (v) => _then(v as _GameReceived));

  @override
  _GameReceived get _value => super._value as _GameReceived;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(_GameReceived(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as AbstractGameSnapshot,
    ));
  }
}

/// @nodoc

class _$_GameReceived implements _GameReceived {
  const _$_GameReceived({required this.gameSnapshot});

  @override
  final AbstractGameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'CreateGameEvent.gameReceived(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameReceived &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                other.gameSnapshot == gameSnapshot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameSnapshot);

  @JsonKey(ignore: true)
  @override
  _$GameReceivedCopyWith<_GameReceived> get copyWith =>
      __$GameReceivedCopyWithImpl<_GameReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsUpdated,
    required TResult Function(Mode newMode) modeUpdated,
    required TResult Function(int newSize) sizeUpdated,
    required TResult Function(Type newType) typeUpdated,
    required TResult Function() gameStarted,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(AbstractGameSnapshot gameSnapshot) gameReceived,
  }) {
    return gameReceived(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
  }) {
    return gameReceived?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsUpdated,
    TResult Function(Mode newMode)? modeUpdated,
    TResult Function(int newSize)? sizeUpdated,
    TResult Function(Type newType)? typeUpdated,
    TResult Function()? gameStarted,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(AbstractGameSnapshot gameSnapshot)? gameReceived,
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
    required TResult Function(_GameCanceled value) gameCanceled,
    required TResult Function(_PlayerReordered value) playerReordered,
    required TResult Function(_PlayerAdded value) playerAdded,
    required TResult Function(_PlayerRemoved value) playerRemoved,
    required TResult Function(_PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(_StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(_ModeUpdated value) modeUpdated,
    required TResult Function(_SizeUpdated value) sizeUpdated,
    required TResult Function(_TypeUpdated value) typeUpdated,
    required TResult Function(_GameStarted value) gameStarted,
    required TResult Function(_DartBotAdded value) dartBotAdded,
    required TResult Function(_DartBotRemoved value) dartBotRemoved,
    required TResult Function(_DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(_GameReceived value) gameReceived,
  }) {
    return gameReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
  }) {
    return gameReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameCanceled value)? gameCanceled,
    TResult Function(_PlayerReordered value)? playerReordered,
    TResult Function(_PlayerAdded value)? playerAdded,
    TResult Function(_PlayerRemoved value)? playerRemoved,
    TResult Function(_PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(_StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(_ModeUpdated value)? modeUpdated,
    TResult Function(_SizeUpdated value)? sizeUpdated,
    TResult Function(_TypeUpdated value)? typeUpdated,
    TResult Function(_GameStarted value)? gameStarted,
    TResult Function(_DartBotAdded value)? dartBotAdded,
    TResult Function(_DartBotRemoved value)? dartBotRemoved,
    TResult Function(_DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(_GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(this);
    }
    return orElse();
  }
}

abstract class _GameReceived implements CreateGameEvent {
  const factory _GameReceived({required AbstractGameSnapshot gameSnapshot}) =
      _$_GameReceived;

  AbstractGameSnapshot get gameSnapshot;
  @JsonKey(ignore: true)
  _$GameReceivedCopyWith<_GameReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreateGameStateTearOff {
  const _$CreateGameStateTearOff();

  CreateGameInitial initial({required AbstractGameSnapshot gameSnapshot}) {
    return CreateGameInitial(
      gameSnapshot: gameSnapshot,
    );
  }
}

/// @nodoc
const $CreateGameState = _$CreateGameStateTearOff();

/// @nodoc
mixin _$CreateGameState {
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
    required TResult Function(CreateGameInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateGameInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateGameInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateGameStateCopyWith<CreateGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGameStateCopyWith<$Res> {
  factory $CreateGameStateCopyWith(
          CreateGameState value, $Res Function(CreateGameState) then) =
      _$CreateGameStateCopyWithImpl<$Res>;
  $Res call({AbstractGameSnapshot gameSnapshot});
}

/// @nodoc
class _$CreateGameStateCopyWithImpl<$Res>
    implements $CreateGameStateCopyWith<$Res> {
  _$CreateGameStateCopyWithImpl(this._value, this._then);

  final CreateGameState _value;
  // ignore: unused_field
  final $Res Function(CreateGameState) _then;

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
abstract class $CreateGameInitialCopyWith<$Res>
    implements $CreateGameStateCopyWith<$Res> {
  factory $CreateGameInitialCopyWith(
          CreateGameInitial value, $Res Function(CreateGameInitial) then) =
      _$CreateGameInitialCopyWithImpl<$Res>;
  @override
  $Res call({AbstractGameSnapshot gameSnapshot});
}

/// @nodoc
class _$CreateGameInitialCopyWithImpl<$Res>
    extends _$CreateGameStateCopyWithImpl<$Res>
    implements $CreateGameInitialCopyWith<$Res> {
  _$CreateGameInitialCopyWithImpl(
      CreateGameInitial _value, $Res Function(CreateGameInitial) _then)
      : super(_value, (v) => _then(v as CreateGameInitial));

  @override
  CreateGameInitial get _value => super._value as CreateGameInitial;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(CreateGameInitial(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as AbstractGameSnapshot,
    ));
  }
}

/// @nodoc

class _$CreateGameInitial implements CreateGameInitial {
  const _$CreateGameInitial({required this.gameSnapshot});

  @override
  final AbstractGameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'CreateGameState.initial(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateGameInitial &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                other.gameSnapshot == gameSnapshot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $CreateGameInitialCopyWith<CreateGameInitial> get copyWith =>
      _$CreateGameInitialCopyWithImpl<CreateGameInitial>(this, _$identity);

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
    required TResult Function(CreateGameInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateGameInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateGameInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CreateGameInitial implements CreateGameState {
  const factory CreateGameInitial(
      {required AbstractGameSnapshot gameSnapshot}) = _$CreateGameInitial;

  @override
  AbstractGameSnapshot get gameSnapshot;
  @override
  @JsonKey(ignore: true)
  $CreateGameInitialCopyWith<CreateGameInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
