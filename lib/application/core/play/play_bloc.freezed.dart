// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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

  GameJoined gameJoined({required GameInvitation invitation}) {
    return GameJoined(
      invitation: invitation,
    );
  }

  GameCreated gameCreated({required bool online}) {
    return GameCreated(
      online: online,
    );
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

  StartingPointsSet startingPointsSet({required int newStartingPoints}) {
    return StartingPointsSet(
      newStartingPoints: newStartingPoints,
    );
  }

  ModeSet modeSet({required Mode newMode}) {
    return ModeSet(
      newMode: newMode,
    );
  }

  SizeSet sizeSet({required int newSize}) {
    return SizeSet(
      newSize: newSize,
    );
  }

  TypeSet typeSet({required Type newType}) {
    return TypeSet(
      newType: newType,
    );
  }

  GameStarted gameStarted() {
    return const GameStarted();
  }

  GameCanceled gameCanceled() {
    return const GameCanceled();
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

  DartBotTargetAverageSet dartBotTargetAverageSet(
      {required int newTargetAverage}) {
    return DartBotTargetAverageSet(
      newTargetAverage: newTargetAverage,
    );
  }

  GameReceived gameReceived({required Game game}) {
    return GameReceived(
      game: game,
    );
  }
}

/// @nodoc
const $PlayEvent = _$PlayEventTearOff();

/// @nodoc
mixin _$PlayEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameInvitation invitation) gameJoined,
    required TResult Function(bool online) gameCreated,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsSet,
    required TResult Function(Mode newMode) modeSet,
    required TResult Function(int newSize) sizeSet,
    required TResult Function(Type newType) typeSet,
    required TResult Function() gameStarted,
    required TResult Function() gameCanceled,
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageSet,
    required TResult Function(Game game) gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameInvitation invitation)? gameJoined,
    TResult Function(bool online)? gameCreated,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsSet,
    TResult Function(Mode newMode)? modeSet,
    TResult Function(int newSize)? sizeSet,
    TResult Function(Type newType)? typeSet,
    TResult Function()? gameStarted,
    TResult Function()? gameCanceled,
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageSet,
    TResult Function(Game game)? gameReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsSet value) startingPointsSet,
    required TResult Function(ModeSet value) modeSet,
    required TResult Function(SizeSet value) sizeSet,
    required TResult Function(TypeSet value) typeSet,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageSet value)
        dartBotTargetAverageSet,
    required TResult Function(GameReceived value) gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsSet value)? startingPointsSet,
    TResult Function(ModeSet value)? modeSet,
    TResult Function(SizeSet value)? sizeSet,
    TResult Function(TypeSet value)? typeSet,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageSet value)? dartBotTargetAverageSet,
    TResult Function(GameReceived value)? gameReceived,
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
abstract class $GameJoinedCopyWith<$Res> {
  factory $GameJoinedCopyWith(
          GameJoined value, $Res Function(GameJoined) then) =
      _$GameJoinedCopyWithImpl<$Res>;
  $Res call({GameInvitation invitation});

  $GameInvitationCopyWith<$Res> get invitation;
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
    Object? invitation = freezed,
  }) {
    return _then(GameJoined(
      invitation: invitation == freezed
          ? _value.invitation
          : invitation // ignore: cast_nullable_to_non_nullable
              as GameInvitation,
    ));
  }

  @override
  $GameInvitationCopyWith<$Res> get invitation {
    return $GameInvitationCopyWith<$Res>(_value.invitation, (value) {
      return _then(_value.copyWith(invitation: value));
    });
  }
}

/// @nodoc

class _$GameJoined implements GameJoined {
  const _$GameJoined({required this.invitation});

  @override
  final GameInvitation invitation;

  @override
  String toString() {
    return 'PlayEvent.gameJoined(invitation: $invitation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameJoined &&
            (identical(other.invitation, invitation) ||
                const DeepCollectionEquality()
                    .equals(other.invitation, invitation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invitation);

  @JsonKey(ignore: true)
  @override
  $GameJoinedCopyWith<GameJoined> get copyWith =>
      _$GameJoinedCopyWithImpl<GameJoined>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameInvitation invitation) gameJoined,
    required TResult Function(bool online) gameCreated,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsSet,
    required TResult Function(Mode newMode) modeSet,
    required TResult Function(int newSize) sizeSet,
    required TResult Function(Type newType) typeSet,
    required TResult Function() gameStarted,
    required TResult Function() gameCanceled,
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageSet,
    required TResult Function(Game game) gameReceived,
  }) {
    return gameJoined(invitation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameInvitation invitation)? gameJoined,
    TResult Function(bool online)? gameCreated,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsSet,
    TResult Function(Mode newMode)? modeSet,
    TResult Function(int newSize)? sizeSet,
    TResult Function(Type newType)? typeSet,
    TResult Function()? gameStarted,
    TResult Function()? gameCanceled,
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageSet,
    TResult Function(Game game)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameJoined != null) {
      return gameJoined(invitation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsSet value) startingPointsSet,
    required TResult Function(ModeSet value) modeSet,
    required TResult Function(SizeSet value) sizeSet,
    required TResult Function(TypeSet value) typeSet,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageSet value)
        dartBotTargetAverageSet,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return gameJoined(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsSet value)? startingPointsSet,
    TResult Function(ModeSet value)? modeSet,
    TResult Function(SizeSet value)? sizeSet,
    TResult Function(TypeSet value)? typeSet,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageSet value)? dartBotTargetAverageSet,
    TResult Function(GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameJoined != null) {
      return gameJoined(this);
    }
    return orElse();
  }
}

abstract class GameJoined implements PlayEvent {
  const factory GameJoined({required GameInvitation invitation}) = _$GameJoined;

  GameInvitation get invitation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameJoinedCopyWith<GameJoined> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(GameInvitation invitation) gameJoined,
    required TResult Function(bool online) gameCreated,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsSet,
    required TResult Function(Mode newMode) modeSet,
    required TResult Function(int newSize) sizeSet,
    required TResult Function(Type newType) typeSet,
    required TResult Function() gameStarted,
    required TResult Function() gameCanceled,
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageSet,
    required TResult Function(Game game) gameReceived,
  }) {
    return gameCreated(online);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameInvitation invitation)? gameJoined,
    TResult Function(bool online)? gameCreated,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsSet,
    TResult Function(Mode newMode)? modeSet,
    TResult Function(int newSize)? sizeSet,
    TResult Function(Type newType)? typeSet,
    TResult Function()? gameStarted,
    TResult Function()? gameCanceled,
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageSet,
    TResult Function(Game game)? gameReceived,
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
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsSet value) startingPointsSet,
    required TResult Function(ModeSet value) modeSet,
    required TResult Function(SizeSet value) sizeSet,
    required TResult Function(TypeSet value) typeSet,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageSet value)
        dartBotTargetAverageSet,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return gameCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsSet value)? startingPointsSet,
    TResult Function(ModeSet value)? modeSet,
    TResult Function(SizeSet value)? sizeSet,
    TResult Function(TypeSet value)? typeSet,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageSet value)? dartBotTargetAverageSet,
    TResult Function(GameReceived value)? gameReceived,
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
    required TResult Function(GameInvitation invitation) gameJoined,
    required TResult Function(bool online) gameCreated,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsSet,
    required TResult Function(Mode newMode) modeSet,
    required TResult Function(int newSize) sizeSet,
    required TResult Function(Type newType) typeSet,
    required TResult Function() gameStarted,
    required TResult Function() gameCanceled,
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageSet,
    required TResult Function(Game game) gameReceived,
  }) {
    return playerReordered(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameInvitation invitation)? gameJoined,
    TResult Function(bool online)? gameCreated,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsSet,
    TResult Function(Mode newMode)? modeSet,
    TResult Function(int newSize)? sizeSet,
    TResult Function(Type newType)? typeSet,
    TResult Function()? gameStarted,
    TResult Function()? gameCanceled,
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageSet,
    TResult Function(Game game)? gameReceived,
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
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsSet value) startingPointsSet,
    required TResult Function(ModeSet value) modeSet,
    required TResult Function(SizeSet value) sizeSet,
    required TResult Function(TypeSet value) typeSet,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageSet value)
        dartBotTargetAverageSet,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return playerReordered(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsSet value)? startingPointsSet,
    TResult Function(ModeSet value)? modeSet,
    TResult Function(SizeSet value)? sizeSet,
    TResult Function(TypeSet value)? typeSet,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageSet value)? dartBotTargetAverageSet,
    TResult Function(GameReceived value)? gameReceived,
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
    required TResult Function(GameInvitation invitation) gameJoined,
    required TResult Function(bool online) gameCreated,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsSet,
    required TResult Function(Mode newMode) modeSet,
    required TResult Function(int newSize) sizeSet,
    required TResult Function(Type newType) typeSet,
    required TResult Function() gameStarted,
    required TResult Function() gameCanceled,
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageSet,
    required TResult Function(Game game) gameReceived,
  }) {
    return playerAdded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameInvitation invitation)? gameJoined,
    TResult Function(bool online)? gameCreated,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsSet,
    TResult Function(Mode newMode)? modeSet,
    TResult Function(int newSize)? sizeSet,
    TResult Function(Type newType)? typeSet,
    TResult Function()? gameStarted,
    TResult Function()? gameCanceled,
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageSet,
    TResult Function(Game game)? gameReceived,
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
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsSet value) startingPointsSet,
    required TResult Function(ModeSet value) modeSet,
    required TResult Function(SizeSet value) sizeSet,
    required TResult Function(TypeSet value) typeSet,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageSet value)
        dartBotTargetAverageSet,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return playerAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsSet value)? startingPointsSet,
    TResult Function(ModeSet value)? modeSet,
    TResult Function(SizeSet value)? sizeSet,
    TResult Function(TypeSet value)? typeSet,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageSet value)? dartBotTargetAverageSet,
    TResult Function(GameReceived value)? gameReceived,
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
    required TResult Function(GameInvitation invitation) gameJoined,
    required TResult Function(bool online) gameCreated,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsSet,
    required TResult Function(Mode newMode) modeSet,
    required TResult Function(int newSize) sizeSet,
    required TResult Function(Type newType) typeSet,
    required TResult Function() gameStarted,
    required TResult Function() gameCanceled,
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageSet,
    required TResult Function(Game game) gameReceived,
  }) {
    return playerRemoved(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameInvitation invitation)? gameJoined,
    TResult Function(bool online)? gameCreated,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsSet,
    TResult Function(Mode newMode)? modeSet,
    TResult Function(int newSize)? sizeSet,
    TResult Function(Type newType)? typeSet,
    TResult Function()? gameStarted,
    TResult Function()? gameCanceled,
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageSet,
    TResult Function(Game game)? gameReceived,
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
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsSet value) startingPointsSet,
    required TResult Function(ModeSet value) modeSet,
    required TResult Function(SizeSet value) sizeSet,
    required TResult Function(TypeSet value) typeSet,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageSet value)
        dartBotTargetAverageSet,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return playerRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsSet value)? startingPointsSet,
    TResult Function(ModeSet value)? modeSet,
    TResult Function(SizeSet value)? sizeSet,
    TResult Function(TypeSet value)? typeSet,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageSet value)? dartBotTargetAverageSet,
    TResult Function(GameReceived value)? gameReceived,
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
    required TResult Function(GameInvitation invitation) gameJoined,
    required TResult Function(bool online) gameCreated,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsSet,
    required TResult Function(Mode newMode) modeSet,
    required TResult Function(int newSize) sizeSet,
    required TResult Function(Type newType) typeSet,
    required TResult Function() gameStarted,
    required TResult Function() gameCanceled,
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageSet,
    required TResult Function(Game game) gameReceived,
  }) {
    return playerNameUpdated(index, newName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameInvitation invitation)? gameJoined,
    TResult Function(bool online)? gameCreated,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsSet,
    TResult Function(Mode newMode)? modeSet,
    TResult Function(int newSize)? sizeSet,
    TResult Function(Type newType)? typeSet,
    TResult Function()? gameStarted,
    TResult Function()? gameCanceled,
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageSet,
    TResult Function(Game game)? gameReceived,
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
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsSet value) startingPointsSet,
    required TResult Function(ModeSet value) modeSet,
    required TResult Function(SizeSet value) sizeSet,
    required TResult Function(TypeSet value) typeSet,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageSet value)
        dartBotTargetAverageSet,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return playerNameUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsSet value)? startingPointsSet,
    TResult Function(ModeSet value)? modeSet,
    TResult Function(SizeSet value)? sizeSet,
    TResult Function(TypeSet value)? typeSet,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageSet value)? dartBotTargetAverageSet,
    TResult Function(GameReceived value)? gameReceived,
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
abstract class $StartingPointsSetCopyWith<$Res> {
  factory $StartingPointsSetCopyWith(
          StartingPointsSet value, $Res Function(StartingPointsSet) then) =
      _$StartingPointsSetCopyWithImpl<$Res>;
  $Res call({int newStartingPoints});
}

/// @nodoc
class _$StartingPointsSetCopyWithImpl<$Res>
    extends _$PlayEventCopyWithImpl<$Res>
    implements $StartingPointsSetCopyWith<$Res> {
  _$StartingPointsSetCopyWithImpl(
      StartingPointsSet _value, $Res Function(StartingPointsSet) _then)
      : super(_value, (v) => _then(v as StartingPointsSet));

  @override
  StartingPointsSet get _value => super._value as StartingPointsSet;

  @override
  $Res call({
    Object? newStartingPoints = freezed,
  }) {
    return _then(StartingPointsSet(
      newStartingPoints: newStartingPoints == freezed
          ? _value.newStartingPoints
          : newStartingPoints // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartingPointsSet implements StartingPointsSet {
  const _$StartingPointsSet({required this.newStartingPoints});

  @override
  final int newStartingPoints;

  @override
  String toString() {
    return 'PlayEvent.startingPointsSet(newStartingPoints: $newStartingPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StartingPointsSet &&
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
  $StartingPointsSetCopyWith<StartingPointsSet> get copyWith =>
      _$StartingPointsSetCopyWithImpl<StartingPointsSet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameInvitation invitation) gameJoined,
    required TResult Function(bool online) gameCreated,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsSet,
    required TResult Function(Mode newMode) modeSet,
    required TResult Function(int newSize) sizeSet,
    required TResult Function(Type newType) typeSet,
    required TResult Function() gameStarted,
    required TResult Function() gameCanceled,
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageSet,
    required TResult Function(Game game) gameReceived,
  }) {
    return startingPointsSet(newStartingPoints);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameInvitation invitation)? gameJoined,
    TResult Function(bool online)? gameCreated,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsSet,
    TResult Function(Mode newMode)? modeSet,
    TResult Function(int newSize)? sizeSet,
    TResult Function(Type newType)? typeSet,
    TResult Function()? gameStarted,
    TResult Function()? gameCanceled,
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageSet,
    TResult Function(Game game)? gameReceived,
    required TResult orElse(),
  }) {
    if (startingPointsSet != null) {
      return startingPointsSet(newStartingPoints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsSet value) startingPointsSet,
    required TResult Function(ModeSet value) modeSet,
    required TResult Function(SizeSet value) sizeSet,
    required TResult Function(TypeSet value) typeSet,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageSet value)
        dartBotTargetAverageSet,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return startingPointsSet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsSet value)? startingPointsSet,
    TResult Function(ModeSet value)? modeSet,
    TResult Function(SizeSet value)? sizeSet,
    TResult Function(TypeSet value)? typeSet,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageSet value)? dartBotTargetAverageSet,
    TResult Function(GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (startingPointsSet != null) {
      return startingPointsSet(this);
    }
    return orElse();
  }
}

abstract class StartingPointsSet implements PlayEvent {
  const factory StartingPointsSet({required int newStartingPoints}) =
      _$StartingPointsSet;

  int get newStartingPoints => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartingPointsSetCopyWith<StartingPointsSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModeSetCopyWith<$Res> {
  factory $ModeSetCopyWith(ModeSet value, $Res Function(ModeSet) then) =
      _$ModeSetCopyWithImpl<$Res>;
  $Res call({Mode newMode});
}

/// @nodoc
class _$ModeSetCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $ModeSetCopyWith<$Res> {
  _$ModeSetCopyWithImpl(ModeSet _value, $Res Function(ModeSet) _then)
      : super(_value, (v) => _then(v as ModeSet));

  @override
  ModeSet get _value => super._value as ModeSet;

  @override
  $Res call({
    Object? newMode = freezed,
  }) {
    return _then(ModeSet(
      newMode: newMode == freezed
          ? _value.newMode
          : newMode // ignore: cast_nullable_to_non_nullable
              as Mode,
    ));
  }
}

/// @nodoc

class _$ModeSet implements ModeSet {
  const _$ModeSet({required this.newMode});

  @override
  final Mode newMode;

  @override
  String toString() {
    return 'PlayEvent.modeSet(newMode: $newMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModeSet &&
            (identical(other.newMode, newMode) ||
                const DeepCollectionEquality().equals(other.newMode, newMode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newMode);

  @JsonKey(ignore: true)
  @override
  $ModeSetCopyWith<ModeSet> get copyWith =>
      _$ModeSetCopyWithImpl<ModeSet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameInvitation invitation) gameJoined,
    required TResult Function(bool online) gameCreated,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsSet,
    required TResult Function(Mode newMode) modeSet,
    required TResult Function(int newSize) sizeSet,
    required TResult Function(Type newType) typeSet,
    required TResult Function() gameStarted,
    required TResult Function() gameCanceled,
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageSet,
    required TResult Function(Game game) gameReceived,
  }) {
    return modeSet(newMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameInvitation invitation)? gameJoined,
    TResult Function(bool online)? gameCreated,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsSet,
    TResult Function(Mode newMode)? modeSet,
    TResult Function(int newSize)? sizeSet,
    TResult Function(Type newType)? typeSet,
    TResult Function()? gameStarted,
    TResult Function()? gameCanceled,
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageSet,
    TResult Function(Game game)? gameReceived,
    required TResult orElse(),
  }) {
    if (modeSet != null) {
      return modeSet(newMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsSet value) startingPointsSet,
    required TResult Function(ModeSet value) modeSet,
    required TResult Function(SizeSet value) sizeSet,
    required TResult Function(TypeSet value) typeSet,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageSet value)
        dartBotTargetAverageSet,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return modeSet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsSet value)? startingPointsSet,
    TResult Function(ModeSet value)? modeSet,
    TResult Function(SizeSet value)? sizeSet,
    TResult Function(TypeSet value)? typeSet,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageSet value)? dartBotTargetAverageSet,
    TResult Function(GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (modeSet != null) {
      return modeSet(this);
    }
    return orElse();
  }
}

abstract class ModeSet implements PlayEvent {
  const factory ModeSet({required Mode newMode}) = _$ModeSet;

  Mode get newMode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModeSetCopyWith<ModeSet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeSetCopyWith<$Res> {
  factory $SizeSetCopyWith(SizeSet value, $Res Function(SizeSet) then) =
      _$SizeSetCopyWithImpl<$Res>;
  $Res call({int newSize});
}

/// @nodoc
class _$SizeSetCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $SizeSetCopyWith<$Res> {
  _$SizeSetCopyWithImpl(SizeSet _value, $Res Function(SizeSet) _then)
      : super(_value, (v) => _then(v as SizeSet));

  @override
  SizeSet get _value => super._value as SizeSet;

  @override
  $Res call({
    Object? newSize = freezed,
  }) {
    return _then(SizeSet(
      newSize: newSize == freezed
          ? _value.newSize
          : newSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SizeSet implements SizeSet {
  const _$SizeSet({required this.newSize});

  @override
  final int newSize;

  @override
  String toString() {
    return 'PlayEvent.sizeSet(newSize: $newSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SizeSet &&
            (identical(other.newSize, newSize) ||
                const DeepCollectionEquality().equals(other.newSize, newSize)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newSize);

  @JsonKey(ignore: true)
  @override
  $SizeSetCopyWith<SizeSet> get copyWith =>
      _$SizeSetCopyWithImpl<SizeSet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameInvitation invitation) gameJoined,
    required TResult Function(bool online) gameCreated,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsSet,
    required TResult Function(Mode newMode) modeSet,
    required TResult Function(int newSize) sizeSet,
    required TResult Function(Type newType) typeSet,
    required TResult Function() gameStarted,
    required TResult Function() gameCanceled,
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageSet,
    required TResult Function(Game game) gameReceived,
  }) {
    return sizeSet(newSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameInvitation invitation)? gameJoined,
    TResult Function(bool online)? gameCreated,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsSet,
    TResult Function(Mode newMode)? modeSet,
    TResult Function(int newSize)? sizeSet,
    TResult Function(Type newType)? typeSet,
    TResult Function()? gameStarted,
    TResult Function()? gameCanceled,
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageSet,
    TResult Function(Game game)? gameReceived,
    required TResult orElse(),
  }) {
    if (sizeSet != null) {
      return sizeSet(newSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsSet value) startingPointsSet,
    required TResult Function(ModeSet value) modeSet,
    required TResult Function(SizeSet value) sizeSet,
    required TResult Function(TypeSet value) typeSet,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageSet value)
        dartBotTargetAverageSet,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return sizeSet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsSet value)? startingPointsSet,
    TResult Function(ModeSet value)? modeSet,
    TResult Function(SizeSet value)? sizeSet,
    TResult Function(TypeSet value)? typeSet,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageSet value)? dartBotTargetAverageSet,
    TResult Function(GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (sizeSet != null) {
      return sizeSet(this);
    }
    return orElse();
  }
}

abstract class SizeSet implements PlayEvent {
  const factory SizeSet({required int newSize}) = _$SizeSet;

  int get newSize => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SizeSetCopyWith<SizeSet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeSetCopyWith<$Res> {
  factory $TypeSetCopyWith(TypeSet value, $Res Function(TypeSet) then) =
      _$TypeSetCopyWithImpl<$Res>;
  $Res call({Type newType});
}

/// @nodoc
class _$TypeSetCopyWithImpl<$Res> extends _$PlayEventCopyWithImpl<$Res>
    implements $TypeSetCopyWith<$Res> {
  _$TypeSetCopyWithImpl(TypeSet _value, $Res Function(TypeSet) _then)
      : super(_value, (v) => _then(v as TypeSet));

  @override
  TypeSet get _value => super._value as TypeSet;

  @override
  $Res call({
    Object? newType = freezed,
  }) {
    return _then(TypeSet(
      newType: newType == freezed
          ? _value.newType
          : newType // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc

class _$TypeSet implements TypeSet {
  const _$TypeSet({required this.newType});

  @override
  final Type newType;

  @override
  String toString() {
    return 'PlayEvent.typeSet(newType: $newType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TypeSet &&
            (identical(other.newType, newType) ||
                const DeepCollectionEquality().equals(other.newType, newType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newType);

  @JsonKey(ignore: true)
  @override
  $TypeSetCopyWith<TypeSet> get copyWith =>
      _$TypeSetCopyWithImpl<TypeSet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameInvitation invitation) gameJoined,
    required TResult Function(bool online) gameCreated,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsSet,
    required TResult Function(Mode newMode) modeSet,
    required TResult Function(int newSize) sizeSet,
    required TResult Function(Type newType) typeSet,
    required TResult Function() gameStarted,
    required TResult Function() gameCanceled,
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageSet,
    required TResult Function(Game game) gameReceived,
  }) {
    return typeSet(newType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameInvitation invitation)? gameJoined,
    TResult Function(bool online)? gameCreated,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsSet,
    TResult Function(Mode newMode)? modeSet,
    TResult Function(int newSize)? sizeSet,
    TResult Function(Type newType)? typeSet,
    TResult Function()? gameStarted,
    TResult Function()? gameCanceled,
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageSet,
    TResult Function(Game game)? gameReceived,
    required TResult orElse(),
  }) {
    if (typeSet != null) {
      return typeSet(newType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsSet value) startingPointsSet,
    required TResult Function(ModeSet value) modeSet,
    required TResult Function(SizeSet value) sizeSet,
    required TResult Function(TypeSet value) typeSet,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageSet value)
        dartBotTargetAverageSet,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return typeSet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsSet value)? startingPointsSet,
    TResult Function(ModeSet value)? modeSet,
    TResult Function(SizeSet value)? sizeSet,
    TResult Function(TypeSet value)? typeSet,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageSet value)? dartBotTargetAverageSet,
    TResult Function(GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (typeSet != null) {
      return typeSet(this);
    }
    return orElse();
  }
}

abstract class TypeSet implements PlayEvent {
  const factory TypeSet({required Type newType}) = _$TypeSet;

  Type get newType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeSetCopyWith<TypeSet> get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(GameInvitation invitation) gameJoined,
    required TResult Function(bool online) gameCreated,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsSet,
    required TResult Function(Mode newMode) modeSet,
    required TResult Function(int newSize) sizeSet,
    required TResult Function(Type newType) typeSet,
    required TResult Function() gameStarted,
    required TResult Function() gameCanceled,
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageSet,
    required TResult Function(Game game) gameReceived,
  }) {
    return gameStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameInvitation invitation)? gameJoined,
    TResult Function(bool online)? gameCreated,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsSet,
    TResult Function(Mode newMode)? modeSet,
    TResult Function(int newSize)? sizeSet,
    TResult Function(Type newType)? typeSet,
    TResult Function()? gameStarted,
    TResult Function()? gameCanceled,
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageSet,
    TResult Function(Game game)? gameReceived,
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
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsSet value) startingPointsSet,
    required TResult Function(ModeSet value) modeSet,
    required TResult Function(SizeSet value) sizeSet,
    required TResult Function(TypeSet value) typeSet,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageSet value)
        dartBotTargetAverageSet,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return gameStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsSet value)? startingPointsSet,
    TResult Function(ModeSet value)? modeSet,
    TResult Function(SizeSet value)? sizeSet,
    TResult Function(TypeSet value)? typeSet,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageSet value)? dartBotTargetAverageSet,
    TResult Function(GameReceived value)? gameReceived,
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
    required TResult Function(GameInvitation invitation) gameJoined,
    required TResult Function(bool online) gameCreated,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsSet,
    required TResult Function(Mode newMode) modeSet,
    required TResult Function(int newSize) sizeSet,
    required TResult Function(Type newType) typeSet,
    required TResult Function() gameStarted,
    required TResult Function() gameCanceled,
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageSet,
    required TResult Function(Game game) gameReceived,
  }) {
    return gameCanceled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameInvitation invitation)? gameJoined,
    TResult Function(bool online)? gameCreated,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsSet,
    TResult Function(Mode newMode)? modeSet,
    TResult Function(int newSize)? sizeSet,
    TResult Function(Type newType)? typeSet,
    TResult Function()? gameStarted,
    TResult Function()? gameCanceled,
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageSet,
    TResult Function(Game game)? gameReceived,
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
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsSet value) startingPointsSet,
    required TResult Function(ModeSet value) modeSet,
    required TResult Function(SizeSet value) sizeSet,
    required TResult Function(TypeSet value) typeSet,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageSet value)
        dartBotTargetAverageSet,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return gameCanceled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsSet value)? startingPointsSet,
    TResult Function(ModeSet value)? modeSet,
    TResult Function(SizeSet value)? sizeSet,
    TResult Function(TypeSet value)? typeSet,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageSet value)? dartBotTargetAverageSet,
    TResult Function(GameReceived value)? gameReceived,
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
    required TResult Function(GameInvitation invitation) gameJoined,
    required TResult Function(bool online) gameCreated,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsSet,
    required TResult Function(Mode newMode) modeSet,
    required TResult Function(int newSize) sizeSet,
    required TResult Function(Type newType) typeSet,
    required TResult Function() gameStarted,
    required TResult Function() gameCanceled,
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageSet,
    required TResult Function(Game game) gameReceived,
  }) {
    return throwPerformed(t);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameInvitation invitation)? gameJoined,
    TResult Function(bool online)? gameCreated,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsSet,
    TResult Function(Mode newMode)? modeSet,
    TResult Function(int newSize)? sizeSet,
    TResult Function(Type newType)? typeSet,
    TResult Function()? gameStarted,
    TResult Function()? gameCanceled,
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageSet,
    TResult Function(Game game)? gameReceived,
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
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsSet value) startingPointsSet,
    required TResult Function(ModeSet value) modeSet,
    required TResult Function(SizeSet value) sizeSet,
    required TResult Function(TypeSet value) typeSet,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageSet value)
        dartBotTargetAverageSet,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return throwPerformed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsSet value)? startingPointsSet,
    TResult Function(ModeSet value)? modeSet,
    TResult Function(SizeSet value)? sizeSet,
    TResult Function(TypeSet value)? typeSet,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageSet value)? dartBotTargetAverageSet,
    TResult Function(GameReceived value)? gameReceived,
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
    required TResult Function(GameInvitation invitation) gameJoined,
    required TResult Function(bool online) gameCreated,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsSet,
    required TResult Function(Mode newMode) modeSet,
    required TResult Function(int newSize) sizeSet,
    required TResult Function(Type newType) typeSet,
    required TResult Function() gameStarted,
    required TResult Function() gameCanceled,
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageSet,
    required TResult Function(Game game) gameReceived,
  }) {
    return throwUndone();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameInvitation invitation)? gameJoined,
    TResult Function(bool online)? gameCreated,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsSet,
    TResult Function(Mode newMode)? modeSet,
    TResult Function(int newSize)? sizeSet,
    TResult Function(Type newType)? typeSet,
    TResult Function()? gameStarted,
    TResult Function()? gameCanceled,
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageSet,
    TResult Function(Game game)? gameReceived,
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
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsSet value) startingPointsSet,
    required TResult Function(ModeSet value) modeSet,
    required TResult Function(SizeSet value) sizeSet,
    required TResult Function(TypeSet value) typeSet,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageSet value)
        dartBotTargetAverageSet,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return throwUndone(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsSet value)? startingPointsSet,
    TResult Function(ModeSet value)? modeSet,
    TResult Function(SizeSet value)? sizeSet,
    TResult Function(TypeSet value)? typeSet,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageSet value)? dartBotTargetAverageSet,
    TResult Function(GameReceived value)? gameReceived,
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
    required TResult Function(GameInvitation invitation) gameJoined,
    required TResult Function(bool online) gameCreated,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsSet,
    required TResult Function(Mode newMode) modeSet,
    required TResult Function(int newSize) sizeSet,
    required TResult Function(Type newType) typeSet,
    required TResult Function() gameStarted,
    required TResult Function() gameCanceled,
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageSet,
    required TResult Function(Game game) gameReceived,
  }) {
    return dartBotAdded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameInvitation invitation)? gameJoined,
    TResult Function(bool online)? gameCreated,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsSet,
    TResult Function(Mode newMode)? modeSet,
    TResult Function(int newSize)? sizeSet,
    TResult Function(Type newType)? typeSet,
    TResult Function()? gameStarted,
    TResult Function()? gameCanceled,
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageSet,
    TResult Function(Game game)? gameReceived,
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
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsSet value) startingPointsSet,
    required TResult Function(ModeSet value) modeSet,
    required TResult Function(SizeSet value) sizeSet,
    required TResult Function(TypeSet value) typeSet,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageSet value)
        dartBotTargetAverageSet,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return dartBotAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsSet value)? startingPointsSet,
    TResult Function(ModeSet value)? modeSet,
    TResult Function(SizeSet value)? sizeSet,
    TResult Function(TypeSet value)? typeSet,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageSet value)? dartBotTargetAverageSet,
    TResult Function(GameReceived value)? gameReceived,
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
    required TResult Function(GameInvitation invitation) gameJoined,
    required TResult Function(bool online) gameCreated,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsSet,
    required TResult Function(Mode newMode) modeSet,
    required TResult Function(int newSize) sizeSet,
    required TResult Function(Type newType) typeSet,
    required TResult Function() gameStarted,
    required TResult Function() gameCanceled,
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageSet,
    required TResult Function(Game game) gameReceived,
  }) {
    return dartBotRemoved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameInvitation invitation)? gameJoined,
    TResult Function(bool online)? gameCreated,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsSet,
    TResult Function(Mode newMode)? modeSet,
    TResult Function(int newSize)? sizeSet,
    TResult Function(Type newType)? typeSet,
    TResult Function()? gameStarted,
    TResult Function()? gameCanceled,
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageSet,
    TResult Function(Game game)? gameReceived,
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
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsSet value) startingPointsSet,
    required TResult Function(ModeSet value) modeSet,
    required TResult Function(SizeSet value) sizeSet,
    required TResult Function(TypeSet value) typeSet,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageSet value)
        dartBotTargetAverageSet,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return dartBotRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsSet value)? startingPointsSet,
    TResult Function(ModeSet value)? modeSet,
    TResult Function(SizeSet value)? sizeSet,
    TResult Function(TypeSet value)? typeSet,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageSet value)? dartBotTargetAverageSet,
    TResult Function(GameReceived value)? gameReceived,
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
abstract class $DartBotTargetAverageSetCopyWith<$Res> {
  factory $DartBotTargetAverageSetCopyWith(DartBotTargetAverageSet value,
          $Res Function(DartBotTargetAverageSet) then) =
      _$DartBotTargetAverageSetCopyWithImpl<$Res>;
  $Res call({int newTargetAverage});
}

/// @nodoc
class _$DartBotTargetAverageSetCopyWithImpl<$Res>
    extends _$PlayEventCopyWithImpl<$Res>
    implements $DartBotTargetAverageSetCopyWith<$Res> {
  _$DartBotTargetAverageSetCopyWithImpl(DartBotTargetAverageSet _value,
      $Res Function(DartBotTargetAverageSet) _then)
      : super(_value, (v) => _then(v as DartBotTargetAverageSet));

  @override
  DartBotTargetAverageSet get _value => super._value as DartBotTargetAverageSet;

  @override
  $Res call({
    Object? newTargetAverage = freezed,
  }) {
    return _then(DartBotTargetAverageSet(
      newTargetAverage: newTargetAverage == freezed
          ? _value.newTargetAverage
          : newTargetAverage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DartBotTargetAverageSet implements DartBotTargetAverageSet {
  const _$DartBotTargetAverageSet({required this.newTargetAverage});

  @override
  final int newTargetAverage;

  @override
  String toString() {
    return 'PlayEvent.dartBotTargetAverageSet(newTargetAverage: $newTargetAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DartBotTargetAverageSet &&
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
  $DartBotTargetAverageSetCopyWith<DartBotTargetAverageSet> get copyWith =>
      _$DartBotTargetAverageSetCopyWithImpl<DartBotTargetAverageSet>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameInvitation invitation) gameJoined,
    required TResult Function(bool online) gameCreated,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsSet,
    required TResult Function(Mode newMode) modeSet,
    required TResult Function(int newSize) sizeSet,
    required TResult Function(Type newType) typeSet,
    required TResult Function() gameStarted,
    required TResult Function() gameCanceled,
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageSet,
    required TResult Function(Game game) gameReceived,
  }) {
    return dartBotTargetAverageSet(newTargetAverage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameInvitation invitation)? gameJoined,
    TResult Function(bool online)? gameCreated,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsSet,
    TResult Function(Mode newMode)? modeSet,
    TResult Function(int newSize)? sizeSet,
    TResult Function(Type newType)? typeSet,
    TResult Function()? gameStarted,
    TResult Function()? gameCanceled,
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageSet,
    TResult Function(Game game)? gameReceived,
    required TResult orElse(),
  }) {
    if (dartBotTargetAverageSet != null) {
      return dartBotTargetAverageSet(newTargetAverage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsSet value) startingPointsSet,
    required TResult Function(ModeSet value) modeSet,
    required TResult Function(SizeSet value) sizeSet,
    required TResult Function(TypeSet value) typeSet,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageSet value)
        dartBotTargetAverageSet,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return dartBotTargetAverageSet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsSet value)? startingPointsSet,
    TResult Function(ModeSet value)? modeSet,
    TResult Function(SizeSet value)? sizeSet,
    TResult Function(TypeSet value)? typeSet,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageSet value)? dartBotTargetAverageSet,
    TResult Function(GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (dartBotTargetAverageSet != null) {
      return dartBotTargetAverageSet(this);
    }
    return orElse();
  }
}

abstract class DartBotTargetAverageSet implements PlayEvent {
  const factory DartBotTargetAverageSet({required int newTargetAverage}) =
      _$DartBotTargetAverageSet;

  int get newTargetAverage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DartBotTargetAverageSetCopyWith<DartBotTargetAverageSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameReceivedCopyWith<$Res> {
  factory $GameReceivedCopyWith(
          GameReceived value, $Res Function(GameReceived) then) =
      _$GameReceivedCopyWithImpl<$Res>;
  $Res call({Game game});

  $GameCopyWith<$Res> get game;
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
              as Game,
    ));
  }

  @override
  $GameCopyWith<$Res> get game {
    return $GameCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value));
    });
  }
}

/// @nodoc

class _$GameReceived implements GameReceived {
  const _$GameReceived({required this.game});

  @override
  final Game game;

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
    required TResult Function(GameInvitation invitation) gameJoined,
    required TResult Function(bool online) gameCreated,
    required TResult Function(int oldIndex, int newIndex) playerReordered,
    required TResult Function() playerAdded,
    required TResult Function(int index) playerRemoved,
    required TResult Function(int index, String newName) playerNameUpdated,
    required TResult Function(int newStartingPoints) startingPointsSet,
    required TResult Function(Mode newMode) modeSet,
    required TResult Function(int newSize) sizeSet,
    required TResult Function(Type newType) typeSet,
    required TResult Function() gameStarted,
    required TResult Function() gameCanceled,
    required TResult Function(Throw t) throwPerformed,
    required TResult Function() throwUndone,
    required TResult Function() dartBotAdded,
    required TResult Function() dartBotRemoved,
    required TResult Function(int newTargetAverage) dartBotTargetAverageSet,
    required TResult Function(Game game) gameReceived,
  }) {
    return gameReceived(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameInvitation invitation)? gameJoined,
    TResult Function(bool online)? gameCreated,
    TResult Function(int oldIndex, int newIndex)? playerReordered,
    TResult Function()? playerAdded,
    TResult Function(int index)? playerRemoved,
    TResult Function(int index, String newName)? playerNameUpdated,
    TResult Function(int newStartingPoints)? startingPointsSet,
    TResult Function(Mode newMode)? modeSet,
    TResult Function(int newSize)? sizeSet,
    TResult Function(Type newType)? typeSet,
    TResult Function()? gameStarted,
    TResult Function()? gameCanceled,
    TResult Function(Throw t)? throwPerformed,
    TResult Function()? throwUndone,
    TResult Function()? dartBotAdded,
    TResult Function()? dartBotRemoved,
    TResult Function(int newTargetAverage)? dartBotTargetAverageSet,
    TResult Function(Game game)? gameReceived,
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
    required TResult Function(GameJoined value) gameJoined,
    required TResult Function(GameCreated value) gameCreated,
    required TResult Function(PlayerReordered value) playerReordered,
    required TResult Function(PlayerAdded value) playerAdded,
    required TResult Function(PlayerRemoved value) playerRemoved,
    required TResult Function(PlayerNameUpdated value) playerNameUpdated,
    required TResult Function(StartingPointsSet value) startingPointsSet,
    required TResult Function(ModeSet value) modeSet,
    required TResult Function(SizeSet value) sizeSet,
    required TResult Function(TypeSet value) typeSet,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ThrowPerformed value) throwPerformed,
    required TResult Function(ThrowUndone value) throwUndone,
    required TResult Function(DartBotAdded value) dartBotAdded,
    required TResult Function(DartBotRemoved value) dartBotRemoved,
    required TResult Function(DartBotTargetAverageSet value)
        dartBotTargetAverageSet,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return gameReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameJoined value)? gameJoined,
    TResult Function(GameCreated value)? gameCreated,
    TResult Function(PlayerReordered value)? playerReordered,
    TResult Function(PlayerAdded value)? playerAdded,
    TResult Function(PlayerRemoved value)? playerRemoved,
    TResult Function(PlayerNameUpdated value)? playerNameUpdated,
    TResult Function(StartingPointsSet value)? startingPointsSet,
    TResult Function(ModeSet value)? modeSet,
    TResult Function(SizeSet value)? sizeSet,
    TResult Function(TypeSet value)? typeSet,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ThrowPerformed value)? throwPerformed,
    TResult Function(ThrowUndone value)? throwUndone,
    TResult Function(DartBotAdded value)? dartBotAdded,
    TResult Function(DartBotRemoved value)? dartBotRemoved,
    TResult Function(DartBotTargetAverageSet value)? dartBotTargetAverageSet,
    TResult Function(GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(this);
    }
    return orElse();
  }
}

abstract class GameReceived implements PlayEvent {
  const factory GameReceived({required Game game}) = _$GameReceived;

  Game get game => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameReceivedCopyWith<GameReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PlayStateTearOff {
  const _$PlayStateTearOff();

  Initial initial() {
    return const Initial();
  }

  CreateGameInProgress createGameInProgress() {
    return const CreateGameInProgress();
  }

  JoinGameInProgress joinGameInProgress() {
    return const JoinGameInProgress();
  }

  Success success({required Game game}) {
    return Success(
      game: game,
    );
  }

  Failure failure() {
    return const Failure();
  }
}

/// @nodoc
const $PlayState = _$PlayStateTearOff();

/// @nodoc
mixin _$PlayState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createGameInProgress,
    required TResult Function() joinGameInProgress,
    required TResult Function(Game game) success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createGameInProgress,
    TResult Function()? joinGameInProgress,
    TResult Function(Game game)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CreateGameInProgress value) createGameInProgress,
    required TResult Function(JoinGameInProgress value) joinGameInProgress,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CreateGameInProgress value)? createGameInProgress,
    TResult Function(JoinGameInProgress value)? joinGameInProgress,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
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
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$PlayStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'PlayState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createGameInProgress,
    required TResult Function() joinGameInProgress,
    required TResult Function(Game game) success,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createGameInProgress,
    TResult Function()? joinGameInProgress,
    TResult Function(Game game)? success,
    TResult Function()? failure,
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
    required TResult Function(Initial value) initial,
    required TResult Function(CreateGameInProgress value) createGameInProgress,
    required TResult Function(JoinGameInProgress value) joinGameInProgress,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CreateGameInProgress value)? createGameInProgress,
    TResult Function(JoinGameInProgress value)? joinGameInProgress,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PlayState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $CreateGameInProgressCopyWith<$Res> {
  factory $CreateGameInProgressCopyWith(CreateGameInProgress value,
          $Res Function(CreateGameInProgress) then) =
      _$CreateGameInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateGameInProgressCopyWithImpl<$Res>
    extends _$PlayStateCopyWithImpl<$Res>
    implements $CreateGameInProgressCopyWith<$Res> {
  _$CreateGameInProgressCopyWithImpl(
      CreateGameInProgress _value, $Res Function(CreateGameInProgress) _then)
      : super(_value, (v) => _then(v as CreateGameInProgress));

  @override
  CreateGameInProgress get _value => super._value as CreateGameInProgress;
}

/// @nodoc

class _$CreateGameInProgress implements CreateGameInProgress {
  const _$CreateGameInProgress();

  @override
  String toString() {
    return 'PlayState.createGameInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateGameInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createGameInProgress,
    required TResult Function() joinGameInProgress,
    required TResult Function(Game game) success,
    required TResult Function() failure,
  }) {
    return createGameInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createGameInProgress,
    TResult Function()? joinGameInProgress,
    TResult Function(Game game)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (createGameInProgress != null) {
      return createGameInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CreateGameInProgress value) createGameInProgress,
    required TResult Function(JoinGameInProgress value) joinGameInProgress,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
  }) {
    return createGameInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CreateGameInProgress value)? createGameInProgress,
    TResult Function(JoinGameInProgress value)? joinGameInProgress,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (createGameInProgress != null) {
      return createGameInProgress(this);
    }
    return orElse();
  }
}

abstract class CreateGameInProgress implements PlayState {
  const factory CreateGameInProgress() = _$CreateGameInProgress;
}

/// @nodoc
abstract class $JoinGameInProgressCopyWith<$Res> {
  factory $JoinGameInProgressCopyWith(
          JoinGameInProgress value, $Res Function(JoinGameInProgress) then) =
      _$JoinGameInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$JoinGameInProgressCopyWithImpl<$Res>
    extends _$PlayStateCopyWithImpl<$Res>
    implements $JoinGameInProgressCopyWith<$Res> {
  _$JoinGameInProgressCopyWithImpl(
      JoinGameInProgress _value, $Res Function(JoinGameInProgress) _then)
      : super(_value, (v) => _then(v as JoinGameInProgress));

  @override
  JoinGameInProgress get _value => super._value as JoinGameInProgress;
}

/// @nodoc

class _$JoinGameInProgress implements JoinGameInProgress {
  const _$JoinGameInProgress();

  @override
  String toString() {
    return 'PlayState.joinGameInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is JoinGameInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createGameInProgress,
    required TResult Function() joinGameInProgress,
    required TResult Function(Game game) success,
    required TResult Function() failure,
  }) {
    return joinGameInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createGameInProgress,
    TResult Function()? joinGameInProgress,
    TResult Function(Game game)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (joinGameInProgress != null) {
      return joinGameInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CreateGameInProgress value) createGameInProgress,
    required TResult Function(JoinGameInProgress value) joinGameInProgress,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
  }) {
    return joinGameInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CreateGameInProgress value)? createGameInProgress,
    TResult Function(JoinGameInProgress value)? joinGameInProgress,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (joinGameInProgress != null) {
      return joinGameInProgress(this);
    }
    return orElse();
  }
}

abstract class JoinGameInProgress implements PlayState {
  const factory JoinGameInProgress() = _$JoinGameInProgress;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({Game game});

  $GameCopyWith<$Res> get game;
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
    Object? game = freezed,
  }) {
    return _then(Success(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
    ));
  }

  @override
  $GameCopyWith<$Res> get game {
    return $GameCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value));
    });
  }
}

/// @nodoc

class _$Success implements Success {
  const _$Success({required this.game});

  @override
  final Game game;

  @override
  String toString() {
    return 'PlayState.success(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success &&
            (identical(other.game, game) ||
                const DeepCollectionEquality().equals(other.game, game)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(game);

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createGameInProgress,
    required TResult Function() joinGameInProgress,
    required TResult Function(Game game) success,
    required TResult Function() failure,
  }) {
    return success(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createGameInProgress,
    TResult Function()? joinGameInProgress,
    TResult Function(Game game)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CreateGameInProgress value) createGameInProgress,
    required TResult Function(JoinGameInProgress value) joinGameInProgress,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CreateGameInProgress value)? createGameInProgress,
    TResult Function(JoinGameInProgress value)? joinGameInProgress,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements PlayState {
  const factory Success({required Game game}) = _$Success;

  Game get game => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessCopyWith<Success> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> extends _$PlayStateCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(Failure _value, $Res Function(Failure) _then)
      : super(_value, (v) => _then(v as Failure));

  @override
  Failure get _value => super._value as Failure;
}

/// @nodoc

class _$Failure implements Failure {
  const _$Failure();

  @override
  String toString() {
    return 'PlayState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createGameInProgress,
    required TResult Function() joinGameInProgress,
    required TResult Function(Game game) success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createGameInProgress,
    TResult Function()? joinGameInProgress,
    TResult Function(Game game)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CreateGameInProgress value) createGameInProgress,
    required TResult Function(JoinGameInProgress value) joinGameInProgress,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CreateGameInProgress value)? createGameInProgress,
    TResult Function(JoinGameInProgress value)? joinGameInProgress,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements PlayState {
  const factory Failure() = _$Failure;
}
