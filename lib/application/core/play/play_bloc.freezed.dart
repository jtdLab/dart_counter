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

  GameCreated gameCreated({required bool online}) {
    return GameCreated(
      online: online,
    );
  }

  GameJoined gameJoined({required UniqueId gameId}) {
    return GameJoined(
      gameId: gameId,
    );
  }

  GameCanceled gameCanceled() {
    return const GameCanceled();
  }

  PlayerReordered playerReordered(
      {required int oldIndex, required int newIndex}) {
    return PlayerReordered(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }

  PlayerAdded playerAdded() {
    return const PlayerAdded();
  }

  PlayerRemoved playerRemoved({required int index}) {
    return PlayerRemoved(
      index: index,
    );
  }

  PlayerNameUpdated playerNameUpdated(
      {required int index, required String newName}) {
    return PlayerNameUpdated(
      index: index,
      newName: newName,
    );
  }

  StartingPointsUpdated startingPointsUpdated(
      {required int newStartingPoints}) {
    return StartingPointsUpdated(
      newStartingPoints: newStartingPoints,
    );
  }

  ModeUpdated modeUpdated({required Mode newMode}) {
    return ModeUpdated(
      newMode: newMode,
    );
  }

  SizeUpdated sizeUpdated({required int newSize}) {
    return SizeUpdated(
      newSize: newSize,
    );
  }

  TypeUpdated typeUpdated({required Type newType}) {
    return TypeUpdated(
      newType: newType,
    );
  }

  GameStarted gameStarted() {
    return const GameStarted();
  }

  ThrowPerformed throwPerformed({required Throw t}) {
    return ThrowPerformed(
      t: t,
    );
  }

  ThrowUndone throwUndone() {
    return const ThrowUndone();
  }

  DartBotAdded dartBotAdded() {
    return const DartBotAdded();
  }

  DartBotRemoved dartBotRemoved() {
    return const DartBotRemoved();
  }

  DartBotTargetAverageUpdated dartBotTargetAverageUpdated(
      {required int newTargetAverage}) {
    return DartBotTargetAverageUpdated(
      newTargetAverage: newTargetAverage,
    );
  }

  GameReceived gameReceived({required GameSnapshot game}) {
    return GameReceived(
      game: game,
    );
  }

  FailureReceived failureReceived({required PlayFailure failure}) {
    return FailureReceived(
      failure: failure,
    );
  }
}

/// @nodoc
const $PlayEvent = _$PlayEventTearOff();

/// @nodoc
mixin _$PlayEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(UniqueId gameId) gameJoined,
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
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(PlayFailure failure) failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(ModeUpdated value) modeUpdated,
    required TResult Function(SizeUpdated value) sizeUpdated,
    required TResult Function(TypeUpdated value) typeUpdated,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
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
abstract class $GameCreatedCopyWith<$Res> {
  factory $GameCreatedCopyWith(
          GameCreated value, $Res Function(GameCreated) then) =
      _$GameCreatedCopyWithImpl<$Res>;
  $Res call({bool online});
}

/// @nodoc
class _$GameCreatedCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $GameCreatedCopyWith<$Res> {
  _$GameCreatedCopyWithImpl(
      GameCreated _value, $Res Function(GameCreated) _then)
      : super(_value, (v) => _then(v as GameCreated));

  @override
  GameCreated get _value => super._value as GameCreated;

  @override
  $Res call({
    Object? online = freezed,
  }) {
    return _then(GameCreated(
      online: online == freezed
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GameCreated implements GameCreated {
  const _$GameCreated({required this.online});

  @override
  final bool online;

  @override
  String toString() {
    return 'PlayEvent.gameCreated(online: $online)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameCreated &&
            (identical(other.online, online) ||
                const DeepCollectionEquality().equals(other.online, online)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(online);

  @JsonKey(ignore: true)
  @override
  $GameCreatedCopyWith<GameCreated> get copyWith =>
      _$GameCreatedCopyWithImpl<GameCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(UniqueId gameId) gameJoined,
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
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(PlayFailure failure) failureReceived,
  }) {
    return gameCreated(online);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
  }) {
    return gameCreated?.call(online);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
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
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(ModeUpdated value) modeUpdated,
    required TResult Function(SizeUpdated value) sizeUpdated,
    required TResult Function(TypeUpdated value) typeUpdated,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return gameCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return gameCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (gameCreated != null) {
      return gameCreated(this);
    }
    return orElse();
  }
}

abstract class GameCreated implements PlayEvent {
  const factory GameCreated({required bool online}) = _$GameCreated;

  bool get online => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameCreatedCopyWith<GameCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameJoinedCopyWith<$Res> {
  factory $GameJoinedCopyWith(
          GameJoined value, $Res Function(GameJoined) then) =
      _$GameJoinedCopyWithImpl<$Res>;
  $Res call({UniqueId gameId});
}

/// @nodoc
class _$GameJoinedCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $GameJoinedCopyWith<$Res> {
  _$GameJoinedCopyWithImpl(GameJoined _value, $Res Function(GameJoined) _then)
      : super(_value, (v) => _then(v as GameJoined));

  @override
  GameJoined get _value => super._value as GameJoined;

  @override
  $Res call({
    Object? gameId = freezed,
  }) {
    return _then(GameJoined(
      gameId: gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$GameJoined implements GameJoined {
  const _$GameJoined({required this.gameId});

  @override
  final UniqueId gameId;

  @override
  String toString() {
    return 'PlayEvent.gameJoined(gameId: $gameId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameJoined &&
            (identical(other.gameId, gameId) ||
                const DeepCollectionEquality().equals(other.gameId, gameId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameId);

  @JsonKey(ignore: true)
  @override
  $GameJoinedCopyWith<GameJoined> get copyWith =>
      _$GameJoinedCopyWithImpl<GameJoined>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(UniqueId gameId) gameJoined,
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
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(PlayFailure failure) failureReceived,
  }) {
    return gameJoined(gameId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
  }) {
    return gameJoined?.call(gameId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
    required TResult orElse(),
  }) {
    if (gameJoined != null) {
      return gameJoined(gameId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(ModeUpdated value) modeUpdated,
    required TResult Function(SizeUpdated value) sizeUpdated,
    required TResult Function(TypeUpdated value) typeUpdated,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return gameJoined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return gameJoined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (gameJoined != null) {
      return gameJoined(this);
    }
    return orElse();
  }
}

abstract class GameJoined implements PlayEvent {
  const factory GameJoined({required UniqueId gameId}) = _$GameJoined;

  UniqueId get gameId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameJoinedCopyWith<GameJoined> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCanceledCopyWith<$Res> {
  factory $GameCanceledCopyWith(
          GameCanceled value, $Res Function(GameCanceled) then) =
      _$GameCanceledCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameCanceledCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $GameCanceledCopyWith<$Res> {
  _$GameCanceledCopyWithImpl(
      GameCanceled _value, $Res Function(GameCanceled) _then)
      : super(_value, (v) => _then(v as GameCanceled));

  @override
  GameCanceled get _value => super._value as GameCanceled;
}

/// @nodoc

class _$GameCanceled implements GameCanceled {
  const _$GameCanceled();

  @override
  String toString() {
    return 'PlayEvent.gameCanceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GameCanceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(UniqueId gameId) gameJoined,
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
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(PlayFailure failure) failureReceived,
  }) {
    return gameCanceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
  }) {
    return gameCanceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
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
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(ModeUpdated value) modeUpdated,
    required TResult Function(SizeUpdated value) sizeUpdated,
    required TResult Function(TypeUpdated value) typeUpdated,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return gameCanceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return gameCanceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (gameCanceled != null) {
      return gameCanceled(this);
    }
    return orElse();
  }
}

abstract class GameCanceled implements PlayEvent {
  const factory GameCanceled() = _$GameCanceled;
}

/// @nodoc
abstract class $PlayerReorderedCopyWith<$Res> {
  factory $PlayerReorderedCopyWith(
          PlayerReordered value, $Res Function(PlayerReordered) then) =
      _$PlayerReorderedCopyWithImpl<$Res>;
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class _$PlayerReorderedCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $PlayerReorderedCopyWith<$Res> {
  _$PlayerReorderedCopyWithImpl(
      PlayerReordered _value, $Res Function(PlayerReordered) _then)
      : super(_value, (v) => _then(v as PlayerReordered));

  @override
  PlayerReordered get _value => super._value as PlayerReordered;

  @override
  $Res call({
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
  }) {
    return _then(PlayerReordered(
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

class _$PlayerReordered implements PlayerReordered {
  const _$PlayerReordered({required this.oldIndex, required this.newIndex});

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'PlayEvent.playerReordered(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlayerReordered &&
            (identical(other.oldIndex, oldIndex) ||
                const DeepCollectionEquality()
                    .equals(other.oldIndex, oldIndex)) &&
            (identical(other.newIndex, newIndex) ||
                const DeepCollectionEquality()
                    .equals(other.newIndex, newIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(oldIndex) ^
      const DeepCollectionEquality().hash(newIndex);

  @JsonKey(ignore: true)
  @override
  $PlayerReorderedCopyWith<PlayerReordered> get copyWith =>
      _$PlayerReorderedCopyWithImpl<PlayerReordered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(UniqueId gameId) gameJoined,
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
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(PlayFailure failure) failureReceived,
  }) {
    return playerReordered(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
  }) {
    return playerReordered?.call(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
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
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(ModeUpdated value) modeUpdated,
    required TResult Function(SizeUpdated value) sizeUpdated,
    required TResult Function(TypeUpdated value) typeUpdated,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return playerReordered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return playerReordered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (playerReordered != null) {
      return playerReordered(this);
    }
    return orElse();
  }
}

abstract class PlayerReordered implements PlayEvent {
  const factory PlayerReordered(
      {required int oldIndex, required int newIndex}) = _$PlayerReordered;

  int get oldIndex => throw _privateConstructorUsedError;
  int get newIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerReorderedCopyWith<PlayerReordered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerAddedCopyWith<$Res> {
  factory $PlayerAddedCopyWith(
          PlayerAdded value, $Res Function(PlayerAdded) then) =
      _$PlayerAddedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerAddedCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $PlayerAddedCopyWith<$Res> {
  _$PlayerAddedCopyWithImpl(
      PlayerAdded _value, $Res Function(PlayerAdded) _then)
      : super(_value, (v) => _then(v as PlayerAdded));

  @override
  PlayerAdded get _value => super._value as PlayerAdded;
}

/// @nodoc

class _$PlayerAdded implements PlayerAdded {
  const _$PlayerAdded();

  @override
  String toString() {
    return 'PlayEvent.playerAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PlayerAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(UniqueId gameId) gameJoined,
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
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(PlayFailure failure) failureReceived,
  }) {
    return playerAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
  }) {
    return playerAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
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
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(ModeUpdated value) modeUpdated,
    required TResult Function(SizeUpdated value) sizeUpdated,
    required TResult Function(TypeUpdated value) typeUpdated,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return playerAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return playerAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (playerAdded != null) {
      return playerAdded(this);
    }
    return orElse();
  }
}

abstract class PlayerAdded implements PlayEvent {
  const factory PlayerAdded() = _$PlayerAdded;
}

/// @nodoc
abstract class $PlayerRemovedCopyWith<$Res> {
  factory $PlayerRemovedCopyWith(
          PlayerRemoved value, $Res Function(PlayerRemoved) then) =
      _$PlayerRemovedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$PlayerRemovedCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $PlayerRemovedCopyWith<$Res> {
  _$PlayerRemovedCopyWithImpl(
      PlayerRemoved _value, $Res Function(PlayerRemoved) _then)
      : super(_value, (v) => _then(v as PlayerRemoved));

  @override
  PlayerRemoved get _value => super._value as PlayerRemoved;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(PlayerRemoved(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlayerRemoved implements PlayerRemoved {
  const _$PlayerRemoved({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'PlayEvent.playerRemoved(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlayerRemoved &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $PlayerRemovedCopyWith<PlayerRemoved> get copyWith =>
      _$PlayerRemovedCopyWithImpl<PlayerRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(UniqueId gameId) gameJoined,
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
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(PlayFailure failure) failureReceived,
  }) {
    return playerRemoved(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
  }) {
    return playerRemoved?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
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
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(ModeUpdated value) modeUpdated,
    required TResult Function(SizeUpdated value) sizeUpdated,
    required TResult Function(TypeUpdated value) typeUpdated,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return playerRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return playerRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (playerRemoved != null) {
      return playerRemoved(this);
    }
    return orElse();
  }
}

abstract class PlayerRemoved implements PlayEvent {
  const factory PlayerRemoved({required int index}) = _$PlayerRemoved;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerRemovedCopyWith<PlayerRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerNameUpdatedCopyWith<$Res> {
  factory $PlayerNameUpdatedCopyWith(
          PlayerNameUpdated value, $Res Function(PlayerNameUpdated) then) =
      _$PlayerNameUpdatedCopyWithImpl<$Res>;
  $Res call({int index, String newName});
}

/// @nodoc
class _$PlayerNameUpdatedCopyWithImpl<$Res>
    extends _$PlayEventCopyWithImpl<$Res>
    implements $PlayerNameUpdatedCopyWith<$Res> {
  _$PlayerNameUpdatedCopyWithImpl(
      PlayerNameUpdated _value, $Res Function(PlayerNameUpdated) _then)
      : super(_value, (v) => _then(v as PlayerNameUpdated));

  @override
  PlayerNameUpdated get _value => super._value as PlayerNameUpdated;

  @override
  $Res call({
    Object? index = freezed,
    Object? newName = freezed,
  }) {
    return _then(PlayerNameUpdated(
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

class _$PlayerNameUpdated implements PlayerNameUpdated {
  const _$PlayerNameUpdated({required this.index, required this.newName});

  @override
  final int index;
  @override
  final String newName;

  @override
  String toString() {
    return 'PlayEvent.playerNameUpdated(index: $index, newName: $newName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlayerNameUpdated &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.newName, newName) ||
                const DeepCollectionEquality().equals(other.newName, newName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(newName);

  @JsonKey(ignore: true)
  @override
  $PlayerNameUpdatedCopyWith<PlayerNameUpdated> get copyWith =>
      _$PlayerNameUpdatedCopyWithImpl<PlayerNameUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(UniqueId gameId) gameJoined,
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
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(PlayFailure failure) failureReceived,
  }) {
    return playerNameUpdated(index, newName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
  }) {
    return playerNameUpdated?.call(index, newName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
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
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(ModeUpdated value) modeUpdated,
    required TResult Function(SizeUpdated value) sizeUpdated,
    required TResult Function(TypeUpdated value) typeUpdated,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return playerNameUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return playerNameUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (playerNameUpdated != null) {
      return playerNameUpdated(this);
    }
    return orElse();
  }
}

abstract class PlayerNameUpdated implements PlayEvent {
  const factory PlayerNameUpdated(
      {required int index, required String newName}) = _$PlayerNameUpdated;

  int get index => throw _privateConstructorUsedError;
  String get newName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerNameUpdatedCopyWith<PlayerNameUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartingPointsUpdatedCopyWith<$Res> {
  factory $StartingPointsUpdatedCopyWith(StartingPointsUpdated value,
          $Res Function(StartingPointsUpdated) then) =
      _$StartingPointsUpdatedCopyWithImpl<$Res>;
  $Res call({int newStartingPoints});
}

/// @nodoc
class _$StartingPointsUpdatedCopyWithImpl<$Res>
    extends _$PlayEventCopyWithImpl<$Res>
    implements $StartingPointsUpdatedCopyWith<$Res> {
  _$StartingPointsUpdatedCopyWithImpl(
      StartingPointsUpdated _value, $Res Function(StartingPointsUpdated) _then)
      : super(_value, (v) => _then(v as StartingPointsUpdated));

  @override
  StartingPointsUpdated get _value => super._value as StartingPointsUpdated;

  @override
  $Res call({
    Object? newStartingPoints = freezed,
  }) {
    return _then(StartingPointsUpdated(
      newStartingPoints: newStartingPoints == freezed
          ? _value.newStartingPoints
          : newStartingPoints // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartingPointsUpdated implements StartingPointsUpdated {
  const _$StartingPointsUpdated({required this.newStartingPoints});

  @override
  final int newStartingPoints;

  @override
  String toString() {
    return 'PlayEvent.startingPointsUpdated(newStartingPoints: $newStartingPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StartingPointsUpdated &&
            (identical(other.newStartingPoints, newStartingPoints) ||
                const DeepCollectionEquality()
                    .equals(other.newStartingPoints, newStartingPoints)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newStartingPoints);

  @JsonKey(ignore: true)
  @override
  $StartingPointsUpdatedCopyWith<StartingPointsUpdated> get copyWith =>
      _$StartingPointsUpdatedCopyWithImpl<StartingPointsUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(UniqueId gameId) gameJoined,
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
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(PlayFailure failure) failureReceived,
  }) {
    return startingPointsUpdated(newStartingPoints);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
  }) {
    return startingPointsUpdated?.call(newStartingPoints);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
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
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(ModeUpdated value) modeUpdated,
    required TResult Function(SizeUpdated value) sizeUpdated,
    required TResult Function(TypeUpdated value) typeUpdated,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return startingPointsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return startingPointsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (startingPointsUpdated != null) {
      return startingPointsUpdated(this);
    }
    return orElse();
  }
}

abstract class StartingPointsUpdated implements PlayEvent {
  const factory StartingPointsUpdated({required int newStartingPoints}) =
      _$StartingPointsUpdated;

  int get newStartingPoints => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartingPointsUpdatedCopyWith<StartingPointsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModeUpdatedCopyWith<$Res> {
  factory $ModeUpdatedCopyWith(
          ModeUpdated value, $Res Function(ModeUpdated) then) =
      _$ModeUpdatedCopyWithImpl<$Res>;
  $Res call({Mode newMode});
}

/// @nodoc
class _$ModeUpdatedCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $ModeUpdatedCopyWith<$Res> {
  _$ModeUpdatedCopyWithImpl(
      ModeUpdated _value, $Res Function(ModeUpdated) _then)
      : super(_value, (v) => _then(v as ModeUpdated));

  @override
  ModeUpdated get _value => super._value as ModeUpdated;

  @override
  $Res call({
    Object? newMode = freezed,
  }) {
    return _then(ModeUpdated(
      newMode: newMode == freezed
          ? _value.newMode
          : newMode // ignore: cast_nullable_to_non_nullable
              as Mode,
    ));
  }
}

/// @nodoc

class _$ModeUpdated implements ModeUpdated {
  const _$ModeUpdated({required this.newMode});

  @override
  final Mode newMode;

  @override
  String toString() {
    return 'PlayEvent.modeUpdated(newMode: $newMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModeUpdated &&
            (identical(other.newMode, newMode) ||
                const DeepCollectionEquality().equals(other.newMode, newMode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newMode);

  @JsonKey(ignore: true)
  @override
  $ModeUpdatedCopyWith<ModeUpdated> get copyWith =>
      _$ModeUpdatedCopyWithImpl<ModeUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(UniqueId gameId) gameJoined,
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
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(PlayFailure failure) failureReceived,
  }) {
    return modeUpdated(newMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
  }) {
    return modeUpdated?.call(newMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
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
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(ModeUpdated value) modeUpdated,
    required TResult Function(SizeUpdated value) sizeUpdated,
    required TResult Function(TypeUpdated value) typeUpdated,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return modeUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return modeUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (modeUpdated != null) {
      return modeUpdated(this);
    }
    return orElse();
  }
}

abstract class ModeUpdated implements PlayEvent {
  const factory ModeUpdated({required Mode newMode}) = _$ModeUpdated;

  Mode get newMode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModeUpdatedCopyWith<ModeUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeUpdatedCopyWith<$Res> {
  factory $SizeUpdatedCopyWith(
          SizeUpdated value, $Res Function(SizeUpdated) then) =
      _$SizeUpdatedCopyWithImpl<$Res>;
  $Res call({int newSize});
}

/// @nodoc
class _$SizeUpdatedCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $SizeUpdatedCopyWith<$Res> {
  _$SizeUpdatedCopyWithImpl(
      SizeUpdated _value, $Res Function(SizeUpdated) _then)
      : super(_value, (v) => _then(v as SizeUpdated));

  @override
  SizeUpdated get _value => super._value as SizeUpdated;

  @override
  $Res call({
    Object? newSize = freezed,
  }) {
    return _then(SizeUpdated(
      newSize: newSize == freezed
          ? _value.newSize
          : newSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SizeUpdated implements SizeUpdated {
  const _$SizeUpdated({required this.newSize});

  @override
  final int newSize;

  @override
  String toString() {
    return 'PlayEvent.sizeUpdated(newSize: $newSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SizeUpdated &&
            (identical(other.newSize, newSize) ||
                const DeepCollectionEquality().equals(other.newSize, newSize)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newSize);

  @JsonKey(ignore: true)
  @override
  $SizeUpdatedCopyWith<SizeUpdated> get copyWith =>
      _$SizeUpdatedCopyWithImpl<SizeUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(UniqueId gameId) gameJoined,
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
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(PlayFailure failure) failureReceived,
  }) {
    return sizeUpdated(newSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
  }) {
    return sizeUpdated?.call(newSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
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
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(ModeUpdated value) modeUpdated,
    required TResult Function(SizeUpdated value) sizeUpdated,
    required TResult Function(TypeUpdated value) typeUpdated,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return sizeUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return sizeUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (sizeUpdated != null) {
      return sizeUpdated(this);
    }
    return orElse();
  }
}

abstract class SizeUpdated implements PlayEvent {
  const factory SizeUpdated({required int newSize}) = _$SizeUpdated;

  int get newSize => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SizeUpdatedCopyWith<SizeUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeUpdatedCopyWith<$Res> {
  factory $TypeUpdatedCopyWith(
          TypeUpdated value, $Res Function(TypeUpdated) then) =
      _$TypeUpdatedCopyWithImpl<$Res>;
  $Res call({Type newType});
}

/// @nodoc
class _$TypeUpdatedCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $TypeUpdatedCopyWith<$Res> {
  _$TypeUpdatedCopyWithImpl(
      TypeUpdated _value, $Res Function(TypeUpdated) _then)
      : super(_value, (v) => _then(v as TypeUpdated));

  @override
  TypeUpdated get _value => super._value as TypeUpdated;

  @override
  $Res call({
    Object? newType = freezed,
  }) {
    return _then(TypeUpdated(
      newType: newType == freezed
          ? _value.newType
          : newType // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc

class _$TypeUpdated implements TypeUpdated {
  const _$TypeUpdated({required this.newType});

  @override
  final Type newType;

  @override
  String toString() {
    return 'PlayEvent.typeUpdated(newType: $newType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TypeUpdated &&
            (identical(other.newType, newType) ||
                const DeepCollectionEquality().equals(other.newType, newType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newType);

  @JsonKey(ignore: true)
  @override
  $TypeUpdatedCopyWith<TypeUpdated> get copyWith =>
      _$TypeUpdatedCopyWithImpl<TypeUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(UniqueId gameId) gameJoined,
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
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(PlayFailure failure) failureReceived,
  }) {
    return typeUpdated(newType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
  }) {
    return typeUpdated?.call(newType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
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
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(ModeUpdated value) modeUpdated,
    required TResult Function(SizeUpdated value) sizeUpdated,
    required TResult Function(TypeUpdated value) typeUpdated,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return typeUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return typeUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (typeUpdated != null) {
      return typeUpdated(this);
    }
    return orElse();
  }
}

abstract class TypeUpdated implements PlayEvent {
  const factory TypeUpdated({required Type newType}) = _$TypeUpdated;

  Type get newType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeUpdatedCopyWith<TypeUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStartedCopyWith<$Res> {
  factory $GameStartedCopyWith(
          GameStarted value, $Res Function(GameStarted) then) =
      _$GameStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameStartedCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $GameStartedCopyWith<$Res> {
  _$GameStartedCopyWithImpl(
      GameStarted _value, $Res Function(GameStarted) _then)
      : super(_value, (v) => _then(v as GameStarted));

  @override
  GameStarted get _value => super._value as GameStarted;
}

/// @nodoc

class _$GameStarted implements GameStarted {
  const _$GameStarted();

  @override
  String toString() {
    return 'PlayEvent.gameStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GameStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(UniqueId gameId) gameJoined,
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
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(PlayFailure failure) failureReceived,
  }) {
    return gameStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
  }) {
    return gameStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
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
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(ModeUpdated value) modeUpdated,
    required TResult Function(SizeUpdated value) sizeUpdated,
    required TResult Function(TypeUpdated value) typeUpdated,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return gameStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return gameStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (gameStarted != null) {
      return gameStarted(this);
    }
    return orElse();
  }
}

abstract class GameStarted implements PlayEvent {
  const factory GameStarted() = _$GameStarted;
}

/// @nodoc
abstract class $ThrowPerformedCopyWith<$Res> {
  factory $ThrowPerformedCopyWith(
          ThrowPerformed value, $Res Function(ThrowPerformed) then) =
      _$ThrowPerformedCopyWithImpl<$Res>;
  $Res call({Throw t});

  $ThrowCopyWith<$Res> get t;
}

/// @nodoc
class _$ThrowPerformedCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $ThrowPerformedCopyWith<$Res> {
  _$ThrowPerformedCopyWithImpl(
      ThrowPerformed _value, $Res Function(ThrowPerformed) _then)
      : super(_value, (v) => _then(v as ThrowPerformed));

  @override
  ThrowPerformed get _value => super._value as ThrowPerformed;

  @override
  $Res call({
    Object? t = freezed,
  }) {
    return _then(ThrowPerformed(
      t: t == freezed
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as Throw,
    ));
  }

  @override
  $ThrowCopyWith<$Res> get t {
    return $ThrowCopyWith<$Res>(_value.t, (value) {
      return _then(_value.copyWith(t: value));
    });
  }
}

/// @nodoc

class _$ThrowPerformed implements ThrowPerformed {
  const _$ThrowPerformed({required this.t});

  @override
  final Throw t;

  @override
  String toString() {
    return 'PlayEvent.throwPerformed(t: $t)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ThrowPerformed &&
            (identical(other.t, t) ||
                const DeepCollectionEquality().equals(other.t, t)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(t);

  @JsonKey(ignore: true)
  @override
  $ThrowPerformedCopyWith<ThrowPerformed> get copyWith =>
      _$ThrowPerformedCopyWithImpl<ThrowPerformed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(UniqueId gameId) gameJoined,
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
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(PlayFailure failure) failureReceived,
  }) {
    return throwPerformed(t);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
  }) {
    return throwPerformed?.call(t);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
    required TResult orElse(),
  }) {
    if (throwPerformed != null) {
      return throwPerformed(t);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(ModeUpdated value) modeUpdated,
    required TResult Function(SizeUpdated value) sizeUpdated,
    required TResult Function(TypeUpdated value) typeUpdated,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return throwPerformed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return throwPerformed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (throwPerformed != null) {
      return throwPerformed(this);
    }
    return orElse();
  }
}

abstract class ThrowPerformed implements PlayEvent {
  const factory ThrowPerformed({required Throw t}) = _$ThrowPerformed;

  Throw get t => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThrowPerformedCopyWith<ThrowPerformed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThrowUndoneCopyWith<$Res> {
  factory $ThrowUndoneCopyWith(
          ThrowUndone value, $Res Function(ThrowUndone) then) =
      _$ThrowUndoneCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThrowUndoneCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $ThrowUndoneCopyWith<$Res> {
  _$ThrowUndoneCopyWithImpl(
      ThrowUndone _value, $Res Function(ThrowUndone) _then)
      : super(_value, (v) => _then(v as ThrowUndone));

  @override
  ThrowUndone get _value => super._value as ThrowUndone;
}

/// @nodoc

class _$ThrowUndone implements ThrowUndone {
  const _$ThrowUndone();

  @override
  String toString() {
    return 'PlayEvent.throwUndone()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ThrowUndone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(UniqueId gameId) gameJoined,
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
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(PlayFailure failure) failureReceived,
  }) {
    return throwUndone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
  }) {
    return throwUndone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
    required TResult orElse(),
  }) {
    if (throwUndone != null) {
      return throwUndone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(ModeUpdated value) modeUpdated,
    required TResult Function(SizeUpdated value) sizeUpdated,
    required TResult Function(TypeUpdated value) typeUpdated,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return throwUndone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return throwUndone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (throwUndone != null) {
      return throwUndone(this);
    }
    return orElse();
  }
}

abstract class ThrowUndone implements PlayEvent {
  const factory ThrowUndone() = _$ThrowUndone;
}

/// @nodoc
abstract class $DartBotAddedCopyWith<$Res> {
  factory $DartBotAddedCopyWith(
          DartBotAdded value, $Res Function(DartBotAdded) then) =
      _$DartBotAddedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DartBotAddedCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $DartBotAddedCopyWith<$Res> {
  _$DartBotAddedCopyWithImpl(
      DartBotAdded _value, $Res Function(DartBotAdded) _then)
      : super(_value, (v) => _then(v as DartBotAdded));

  @override
  DartBotAdded get _value => super._value as DartBotAdded;
}

/// @nodoc

class _$DartBotAdded implements DartBotAdded {
  const _$DartBotAdded();

  @override
  String toString() {
    return 'PlayEvent.dartBotAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DartBotAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(UniqueId gameId) gameJoined,
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
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(PlayFailure failure) failureReceived,
  }) {
    return dartBotAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
  }) {
    return dartBotAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
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
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(ModeUpdated value) modeUpdated,
    required TResult Function(SizeUpdated value) sizeUpdated,
    required TResult Function(TypeUpdated value) typeUpdated,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return dartBotAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return dartBotAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (dartBotAdded != null) {
      return dartBotAdded(this);
    }
    return orElse();
  }
}

abstract class DartBotAdded implements PlayEvent {
  const factory DartBotAdded() = _$DartBotAdded;
}

/// @nodoc
abstract class $DartBotRemovedCopyWith<$Res> {
  factory $DartBotRemovedCopyWith(
          DartBotRemoved value, $Res Function(DartBotRemoved) then) =
      _$DartBotRemovedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DartBotRemovedCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $DartBotRemovedCopyWith<$Res> {
  _$DartBotRemovedCopyWithImpl(
      DartBotRemoved _value, $Res Function(DartBotRemoved) _then)
      : super(_value, (v) => _then(v as DartBotRemoved));

  @override
  DartBotRemoved get _value => super._value as DartBotRemoved;
}

/// @nodoc

class _$DartBotRemoved implements DartBotRemoved {
  const _$DartBotRemoved();

  @override
  String toString() {
    return 'PlayEvent.dartBotRemoved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DartBotRemoved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(UniqueId gameId) gameJoined,
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
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(PlayFailure failure) failureReceived,
  }) {
    return dartBotRemoved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
  }) {
    return dartBotRemoved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
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
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(ModeUpdated value) modeUpdated,
    required TResult Function(SizeUpdated value) sizeUpdated,
    required TResult Function(TypeUpdated value) typeUpdated,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return dartBotRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return dartBotRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (dartBotRemoved != null) {
      return dartBotRemoved(this);
    }
    return orElse();
  }
}

abstract class DartBotRemoved implements PlayEvent {
  const factory DartBotRemoved() = _$DartBotRemoved;
}

/// @nodoc
abstract class $DartBotTargetAverageUpdatedCopyWith<$Res> {
  factory $DartBotTargetAverageUpdatedCopyWith(
          DartBotTargetAverageUpdated value,
          $Res Function(DartBotTargetAverageUpdated) then) =
      _$DartBotTargetAverageUpdatedCopyWithImpl<$Res>;
  $Res call({int newTargetAverage});
}

/// @nodoc
class _$DartBotTargetAverageUpdatedCopyWithImpl<$Res>
    extends _$PlayEventCopyWithImpl<$Res>
    implements $DartBotTargetAverageUpdatedCopyWith<$Res> {
  _$DartBotTargetAverageUpdatedCopyWithImpl(DartBotTargetAverageUpdated _value,
      $Res Function(DartBotTargetAverageUpdated) _then)
      : super(_value, (v) => _then(v as DartBotTargetAverageUpdated));

  @override
  DartBotTargetAverageUpdated get _value =>
      super._value as DartBotTargetAverageUpdated;

  @override
  $Res call({
    Object? newTargetAverage = freezed,
  }) {
    return _then(DartBotTargetAverageUpdated(
      newTargetAverage: newTargetAverage == freezed
          ? _value.newTargetAverage
          : newTargetAverage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DartBotTargetAverageUpdated implements DartBotTargetAverageUpdated {
  const _$DartBotTargetAverageUpdated({required this.newTargetAverage});

  @override
  final int newTargetAverage;

  @override
  String toString() {
    return 'PlayEvent.dartBotTargetAverageUpdated(newTargetAverage: $newTargetAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DartBotTargetAverageUpdated &&
            (identical(other.newTargetAverage, newTargetAverage) ||
                const DeepCollectionEquality()
                    .equals(other.newTargetAverage, newTargetAverage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newTargetAverage);

  @JsonKey(ignore: true)
  @override
  $DartBotTargetAverageUpdatedCopyWith<DartBotTargetAverageUpdated>
      get copyWith => _$DartBotTargetAverageUpdatedCopyWithImpl<
          DartBotTargetAverageUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(UniqueId gameId) gameJoined,
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
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(PlayFailure failure) failureReceived,
  }) {
    return dartBotTargetAverageUpdated(newTargetAverage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
  }) {
    return dartBotTargetAverageUpdated?.call(newTargetAverage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
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
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(ModeUpdated value) modeUpdated,
    required TResult Function(SizeUpdated value) sizeUpdated,
    required TResult Function(TypeUpdated value) typeUpdated,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return dartBotTargetAverageUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return dartBotTargetAverageUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (dartBotTargetAverageUpdated != null) {
      return dartBotTargetAverageUpdated(this);
    }
    return orElse();
  }
}

abstract class DartBotTargetAverageUpdated implements PlayEvent {
  const factory DartBotTargetAverageUpdated({required int newTargetAverage}) =
      _$DartBotTargetAverageUpdated;

  int get newTargetAverage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DartBotTargetAverageUpdatedCopyWith<DartBotTargetAverageUpdated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameReceivedCopyWith<$Res> {
  factory $GameReceivedCopyWith(
          GameReceived value, $Res Function(GameReceived) then) =
      _$GameReceivedCopyWithImpl<$Res>;
  $Res call({GameSnapshot game});
}

/// @nodoc
class _$GameReceivedCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $GameReceivedCopyWith<$Res> {
  _$GameReceivedCopyWithImpl(
      GameReceived _value, $Res Function(GameReceived) _then)
      : super(_value, (v) => _then(v as GameReceived));

  @override
  GameReceived get _value => super._value as GameReceived;

  @override
  $Res call({
    Object? game = freezed,
  }) {
    return _then(GameReceived(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GameSnapshot,
    ));
  }
}

/// @nodoc

class _$GameReceived implements GameReceived {
  const _$GameReceived({required this.game});

  @override
  final GameSnapshot game;

  @override
  String toString() {
    return 'PlayEvent.gameReceived(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameReceived &&
            (identical(other.game, game) ||
                const DeepCollectionEquality().equals(other.game, game)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(game);

  @JsonKey(ignore: true)
  @override
  $GameReceivedCopyWith<GameReceived> get copyWith =>
      _$GameReceivedCopyWithImpl<GameReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(UniqueId gameId) gameJoined,
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
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(PlayFailure failure) failureReceived,
  }) {
    return gameReceived(game);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
  }) {
    return gameReceived?.call(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(ModeUpdated value) modeUpdated,
    required TResult Function(SizeUpdated value) sizeUpdated,
    required TResult Function(TypeUpdated value) typeUpdated,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return gameReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return gameReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(this);
    }
    return orElse();
  }
}

abstract class GameReceived implements PlayEvent {
  const factory GameReceived({required GameSnapshot game}) = _$GameReceived;

  GameSnapshot get game => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameReceivedCopyWith<GameReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureReceivedCopyWith<$Res> {
  factory $FailureReceivedCopyWith(
          FailureReceived value, $Res Function(FailureReceived) then) =
      _$FailureReceivedCopyWithImpl<$Res>;
  $Res call({PlayFailure failure});

  $PlayFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$FailureReceivedCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $FailureReceivedCopyWith<$Res> {
  _$FailureReceivedCopyWithImpl(
      FailureReceived _value, $Res Function(FailureReceived) _then)
      : super(_value, (v) => _then(v as FailureReceived));

  @override
  FailureReceived get _value => super._value as FailureReceived;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(FailureReceived(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as PlayFailure,
    ));
  }

  @override
  $PlayFailureCopyWith<$Res> get failure {
    return $PlayFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FailureReceived implements FailureReceived {
  const _$FailureReceived({required this.failure});

  @override
  final PlayFailure failure;

  @override
  String toString() {
    return 'PlayEvent.failureReceived(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FailureReceived &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $FailureReceivedCopyWith<FailureReceived> get copyWith =>
      _$FailureReceivedCopyWithImpl<FailureReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online) gameCreated,
    required TResult Function(UniqueId gameId) gameJoined,
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
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageUpdated,
    required TResult Function(GameSnapshot game) gameReceived,
    required TResult Function(PlayFailure failure) failureReceived,
  }) {
    return failureReceived(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
  }) {
    return failureReceived?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online)? gameCreated,
    TResult Function(UniqueId gameId)? gameJoined,
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
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageUpdated,
    TResult Function(GameSnapshot game)? gameReceived,
    TResult Function(PlayFailure failure)? failureReceived,
    required TResult orElse(),
  }) {
    if (failureReceived != null) {
      return failureReceived(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsUpdated value)
        startingPointsUpdated,
    required TResult Function(ModeUpdated value) modeUpdated,
    required TResult Function(SizeUpdated value) sizeUpdated,
    required TResult Function(TypeUpdated value) typeUpdated,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageUpdated value)
        dartBotTargetAverageUpdated,
    required TResult Function(GameReceived value) gameReceived,
    required TResult Function(FailureReceived value) failureReceived,
  }) {
    return failureReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
  }) {
    return failureReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsUpdated value)? startingPointsUpdated,
    TResult Function(ModeUpdated value)? modeUpdated,
    TResult Function(SizeUpdated value)? sizeUpdated,
    TResult Function(TypeUpdated value)? typeUpdated,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageUpdated value)?
        dartBotTargetAverageUpdated,
    TResult Function(GameReceived value)? gameReceived,
    TResult Function(FailureReceived value)? failureReceived,
    required TResult orElse(),
  }) {
    if (failureReceived != null) {
      return failureReceived(this);
    }
    return orElse();
  }
}

abstract class FailureReceived implements PlayEvent {
  const factory FailureReceived({required PlayFailure failure}) =
      _$FailureReceived;

  PlayFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureReceivedCopyWith<FailureReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PlayStateTearOff {
  const _$PlayStateTearOff();

  Loading loading({bool? online}) {
    return Loading(
      online: online,
    );
  }

  Success success({required bool online, required GameSnapshot game}) {
    return Success(
      online: online,
      game: game,
    );
  }
}

/// @nodoc
const $PlayState = _$PlayStateTearOff();

/// @nodoc
mixin _$PlayState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? online) loading,
    required TResult Function(bool online, GameSnapshot game) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? online)? loading,
    TResult Function(bool online, GameSnapshot game)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? online)? loading,
    TResult Function(bool online, GameSnapshot game)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
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
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  $Res call({bool? online});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$PlayStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;

  @override
  $Res call({
    Object? online = freezed,
  }) {
    return _then(Loading(
      online: online == freezed
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading({this.online});

  @override
  final bool? online;

  @override
  String toString() {
    return 'PlayState.loading(online: $online)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loading &&
            (identical(other.online, online) ||
                const DeepCollectionEquality().equals(other.online, online)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(online);

  @JsonKey(ignore: true)
  @override
  $LoadingCopyWith<Loading> get copyWith =>
      _$LoadingCopyWithImpl<Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? online) loading,
    required TResult Function(bool online, GameSnapshot game) success,
  }) {
    return loading(online);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? online)? loading,
    TResult Function(bool online, GameSnapshot game)? success,
  }) {
    return loading?.call(online);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? online)? loading,
    TResult Function(bool online, GameSnapshot game)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(online);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements PlayState {
  const factory Loading({bool? online}) = _$Loading;

  bool? get online => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({bool online, GameSnapshot game});
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res> extends _$PlayStateCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object? online = freezed,
    Object? game = freezed,
  }) {
    return _then(Success(
      online: online == freezed
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GameSnapshot,
    ));
  }
}

/// @nodoc

class _$Success implements Success {
  const _$Success({required this.online, required this.game});

  @override
  final bool online;
  @override
  final GameSnapshot game;

  @override
  String toString() {
    return 'PlayState.success(online: $online, game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success &&
            (identical(other.online, online) ||
                const DeepCollectionEquality().equals(other.online, online)) &&
            (identical(other.game, game) ||
                const DeepCollectionEquality().equals(other.game, game)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(online) ^
      const DeepCollectionEquality().hash(game);

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? online) loading,
    required TResult Function(bool online, GameSnapshot game) success,
  }) {
    return success(online, game);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? online)? loading,
    TResult Function(bool online, GameSnapshot game)? success,
  }) {
    return success?.call(online, game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? online)? loading,
    TResult Function(bool online, GameSnapshot game)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(online, game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements PlayState {
  const factory Success({required bool online, required GameSnapshot game}) =
      _$Success;

  bool get online => throw _privateConstructorUsedError;
  GameSnapshot get game => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessCopyWith<Success> get copyWith => throw _privateConstructorUsedError;
}
