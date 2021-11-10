// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameHistoryEventTearOff {
  const _$GameHistoryEventTearOff();

  FetchGameHistoryAllRequested fetchGameHistoryAllRequested() {
    return const FetchGameHistoryAllRequested();
  }

  FetchGameHistoryOfflineRequested fetchGameHistoryOfflineRequested() {
    return const FetchGameHistoryOfflineRequested();
  }

  FetchGameHistoryOnlineRequested fetchGameHistoryOnlineRequested(
      {UniqueId? userId}) {
    return FetchGameHistoryOnlineRequested(
      userId: userId,
    );
  }

  GameSelected gameSelected({required AbstractGame game}) {
    return GameSelected(
      game: game,
    );
  }
}

/// @nodoc
const $GameHistoryEvent = _$GameHistoryEventTearOff();

/// @nodoc
mixin _$GameHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchGameHistoryAllRequested,
    required TResult Function() fetchGameHistoryOfflineRequested,
    required TResult Function(UniqueId? userId) fetchGameHistoryOnlineRequested,
    required TResult Function(AbstractGame game) gameSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchGameHistoryAllRequested,
    TResult Function()? fetchGameHistoryOfflineRequested,
    TResult Function(UniqueId? userId)? fetchGameHistoryOnlineRequested,
    TResult Function(AbstractGame game)? gameSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchGameHistoryAllRequested,
    TResult Function()? fetchGameHistoryOfflineRequested,
    TResult Function(UniqueId? userId)? fetchGameHistoryOnlineRequested,
    TResult Function(AbstractGame game)? gameSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGameHistoryAllRequested value)
        fetchGameHistoryAllRequested,
    required TResult Function(FetchGameHistoryOfflineRequested value)
        fetchGameHistoryOfflineRequested,
    required TResult Function(FetchGameHistoryOnlineRequested value)
        fetchGameHistoryOnlineRequested,
    required TResult Function(GameSelected value) gameSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchGameHistoryAllRequested value)?
        fetchGameHistoryAllRequested,
    TResult Function(FetchGameHistoryOfflineRequested value)?
        fetchGameHistoryOfflineRequested,
    TResult Function(FetchGameHistoryOnlineRequested value)?
        fetchGameHistoryOnlineRequested,
    TResult Function(GameSelected value)? gameSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameHistoryAllRequested value)?
        fetchGameHistoryAllRequested,
    TResult Function(FetchGameHistoryOfflineRequested value)?
        fetchGameHistoryOfflineRequested,
    TResult Function(FetchGameHistoryOnlineRequested value)?
        fetchGameHistoryOnlineRequested,
    TResult Function(GameSelected value)? gameSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameHistoryEventCopyWith<$Res> {
  factory $GameHistoryEventCopyWith(
          GameHistoryEvent value, $Res Function(GameHistoryEvent) then) =
      _$GameHistoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameHistoryEventCopyWithImpl<$Res>
    implements $GameHistoryEventCopyWith<$Res> {
  _$GameHistoryEventCopyWithImpl(this._value, this._then);

  final GameHistoryEvent _value;
  // ignore: unused_field
  final $Res Function(GameHistoryEvent) _then;
}

/// @nodoc
abstract class $FetchGameHistoryAllRequestedCopyWith<$Res> {
  factory $FetchGameHistoryAllRequestedCopyWith(
          FetchGameHistoryAllRequested value,
          $Res Function(FetchGameHistoryAllRequested) then) =
      _$FetchGameHistoryAllRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchGameHistoryAllRequestedCopyWithImpl<$Res>
    extends _$GameHistoryEventCopyWithImpl<$Res>
    implements $FetchGameHistoryAllRequestedCopyWith<$Res> {
  _$FetchGameHistoryAllRequestedCopyWithImpl(
      FetchGameHistoryAllRequested _value,
      $Res Function(FetchGameHistoryAllRequested) _then)
      : super(_value, (v) => _then(v as FetchGameHistoryAllRequested));

  @override
  FetchGameHistoryAllRequested get _value =>
      super._value as FetchGameHistoryAllRequested;
}

/// @nodoc

class _$FetchGameHistoryAllRequested implements FetchGameHistoryAllRequested {
  const _$FetchGameHistoryAllRequested();

  @override
  String toString() {
    return 'GameHistoryEvent.fetchGameHistoryAllRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetchGameHistoryAllRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchGameHistoryAllRequested,
    required TResult Function() fetchGameHistoryOfflineRequested,
    required TResult Function(UniqueId? userId) fetchGameHistoryOnlineRequested,
    required TResult Function(AbstractGame game) gameSelected,
  }) {
    return fetchGameHistoryAllRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchGameHistoryAllRequested,
    TResult Function()? fetchGameHistoryOfflineRequested,
    TResult Function(UniqueId? userId)? fetchGameHistoryOnlineRequested,
    TResult Function(AbstractGame game)? gameSelected,
  }) {
    return fetchGameHistoryAllRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchGameHistoryAllRequested,
    TResult Function()? fetchGameHistoryOfflineRequested,
    TResult Function(UniqueId? userId)? fetchGameHistoryOnlineRequested,
    TResult Function(AbstractGame game)? gameSelected,
    required TResult orElse(),
  }) {
    if (fetchGameHistoryAllRequested != null) {
      return fetchGameHistoryAllRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGameHistoryAllRequested value)
        fetchGameHistoryAllRequested,
    required TResult Function(FetchGameHistoryOfflineRequested value)
        fetchGameHistoryOfflineRequested,
    required TResult Function(FetchGameHistoryOnlineRequested value)
        fetchGameHistoryOnlineRequested,
    required TResult Function(GameSelected value) gameSelected,
  }) {
    return fetchGameHistoryAllRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchGameHistoryAllRequested value)?
        fetchGameHistoryAllRequested,
    TResult Function(FetchGameHistoryOfflineRequested value)?
        fetchGameHistoryOfflineRequested,
    TResult Function(FetchGameHistoryOnlineRequested value)?
        fetchGameHistoryOnlineRequested,
    TResult Function(GameSelected value)? gameSelected,
  }) {
    return fetchGameHistoryAllRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameHistoryAllRequested value)?
        fetchGameHistoryAllRequested,
    TResult Function(FetchGameHistoryOfflineRequested value)?
        fetchGameHistoryOfflineRequested,
    TResult Function(FetchGameHistoryOnlineRequested value)?
        fetchGameHistoryOnlineRequested,
    TResult Function(GameSelected value)? gameSelected,
    required TResult orElse(),
  }) {
    if (fetchGameHistoryAllRequested != null) {
      return fetchGameHistoryAllRequested(this);
    }
    return orElse();
  }
}

abstract class FetchGameHistoryAllRequested implements GameHistoryEvent {
  const factory FetchGameHistoryAllRequested() = _$FetchGameHistoryAllRequested;
}

/// @nodoc
abstract class $FetchGameHistoryOfflineRequestedCopyWith<$Res> {
  factory $FetchGameHistoryOfflineRequestedCopyWith(
          FetchGameHistoryOfflineRequested value,
          $Res Function(FetchGameHistoryOfflineRequested) then) =
      _$FetchGameHistoryOfflineRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchGameHistoryOfflineRequestedCopyWithImpl<$Res>
    extends _$GameHistoryEventCopyWithImpl<$Res>
    implements $FetchGameHistoryOfflineRequestedCopyWith<$Res> {
  _$FetchGameHistoryOfflineRequestedCopyWithImpl(
      FetchGameHistoryOfflineRequested _value,
      $Res Function(FetchGameHistoryOfflineRequested) _then)
      : super(_value, (v) => _then(v as FetchGameHistoryOfflineRequested));

  @override
  FetchGameHistoryOfflineRequested get _value =>
      super._value as FetchGameHistoryOfflineRequested;
}

/// @nodoc

class _$FetchGameHistoryOfflineRequested
    implements FetchGameHistoryOfflineRequested {
  const _$FetchGameHistoryOfflineRequested();

  @override
  String toString() {
    return 'GameHistoryEvent.fetchGameHistoryOfflineRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetchGameHistoryOfflineRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchGameHistoryAllRequested,
    required TResult Function() fetchGameHistoryOfflineRequested,
    required TResult Function(UniqueId? userId) fetchGameHistoryOnlineRequested,
    required TResult Function(AbstractGame game) gameSelected,
  }) {
    return fetchGameHistoryOfflineRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchGameHistoryAllRequested,
    TResult Function()? fetchGameHistoryOfflineRequested,
    TResult Function(UniqueId? userId)? fetchGameHistoryOnlineRequested,
    TResult Function(AbstractGame game)? gameSelected,
  }) {
    return fetchGameHistoryOfflineRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchGameHistoryAllRequested,
    TResult Function()? fetchGameHistoryOfflineRequested,
    TResult Function(UniqueId? userId)? fetchGameHistoryOnlineRequested,
    TResult Function(AbstractGame game)? gameSelected,
    required TResult orElse(),
  }) {
    if (fetchGameHistoryOfflineRequested != null) {
      return fetchGameHistoryOfflineRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGameHistoryAllRequested value)
        fetchGameHistoryAllRequested,
    required TResult Function(FetchGameHistoryOfflineRequested value)
        fetchGameHistoryOfflineRequested,
    required TResult Function(FetchGameHistoryOnlineRequested value)
        fetchGameHistoryOnlineRequested,
    required TResult Function(GameSelected value) gameSelected,
  }) {
    return fetchGameHistoryOfflineRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchGameHistoryAllRequested value)?
        fetchGameHistoryAllRequested,
    TResult Function(FetchGameHistoryOfflineRequested value)?
        fetchGameHistoryOfflineRequested,
    TResult Function(FetchGameHistoryOnlineRequested value)?
        fetchGameHistoryOnlineRequested,
    TResult Function(GameSelected value)? gameSelected,
  }) {
    return fetchGameHistoryOfflineRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameHistoryAllRequested value)?
        fetchGameHistoryAllRequested,
    TResult Function(FetchGameHistoryOfflineRequested value)?
        fetchGameHistoryOfflineRequested,
    TResult Function(FetchGameHistoryOnlineRequested value)?
        fetchGameHistoryOnlineRequested,
    TResult Function(GameSelected value)? gameSelected,
    required TResult orElse(),
  }) {
    if (fetchGameHistoryOfflineRequested != null) {
      return fetchGameHistoryOfflineRequested(this);
    }
    return orElse();
  }
}

abstract class FetchGameHistoryOfflineRequested implements GameHistoryEvent {
  const factory FetchGameHistoryOfflineRequested() =
      _$FetchGameHistoryOfflineRequested;
}

/// @nodoc
abstract class $FetchGameHistoryOnlineRequestedCopyWith<$Res> {
  factory $FetchGameHistoryOnlineRequestedCopyWith(
          FetchGameHistoryOnlineRequested value,
          $Res Function(FetchGameHistoryOnlineRequested) then) =
      _$FetchGameHistoryOnlineRequestedCopyWithImpl<$Res>;
  $Res call({UniqueId? userId});
}

/// @nodoc
class _$FetchGameHistoryOnlineRequestedCopyWithImpl<$Res>
    extends _$GameHistoryEventCopyWithImpl<$Res>
    implements $FetchGameHistoryOnlineRequestedCopyWith<$Res> {
  _$FetchGameHistoryOnlineRequestedCopyWithImpl(
      FetchGameHistoryOnlineRequested _value,
      $Res Function(FetchGameHistoryOnlineRequested) _then)
      : super(_value, (v) => _then(v as FetchGameHistoryOnlineRequested));

  @override
  FetchGameHistoryOnlineRequested get _value =>
      super._value as FetchGameHistoryOnlineRequested;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(FetchGameHistoryOnlineRequested(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
    ));
  }
}

/// @nodoc

class _$FetchGameHistoryOnlineRequested
    implements FetchGameHistoryOnlineRequested {
  const _$FetchGameHistoryOnlineRequested({this.userId});

  @override
  final UniqueId? userId;

  @override
  String toString() {
    return 'GameHistoryEvent.fetchGameHistoryOnlineRequested(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetchGameHistoryOnlineRequested &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  $FetchGameHistoryOnlineRequestedCopyWith<FetchGameHistoryOnlineRequested>
      get copyWith => _$FetchGameHistoryOnlineRequestedCopyWithImpl<
          FetchGameHistoryOnlineRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchGameHistoryAllRequested,
    required TResult Function() fetchGameHistoryOfflineRequested,
    required TResult Function(UniqueId? userId) fetchGameHistoryOnlineRequested,
    required TResult Function(AbstractGame game) gameSelected,
  }) {
    return fetchGameHistoryOnlineRequested(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchGameHistoryAllRequested,
    TResult Function()? fetchGameHistoryOfflineRequested,
    TResult Function(UniqueId? userId)? fetchGameHistoryOnlineRequested,
    TResult Function(AbstractGame game)? gameSelected,
  }) {
    return fetchGameHistoryOnlineRequested?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchGameHistoryAllRequested,
    TResult Function()? fetchGameHistoryOfflineRequested,
    TResult Function(UniqueId? userId)? fetchGameHistoryOnlineRequested,
    TResult Function(AbstractGame game)? gameSelected,
    required TResult orElse(),
  }) {
    if (fetchGameHistoryOnlineRequested != null) {
      return fetchGameHistoryOnlineRequested(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGameHistoryAllRequested value)
        fetchGameHistoryAllRequested,
    required TResult Function(FetchGameHistoryOfflineRequested value)
        fetchGameHistoryOfflineRequested,
    required TResult Function(FetchGameHistoryOnlineRequested value)
        fetchGameHistoryOnlineRequested,
    required TResult Function(GameSelected value) gameSelected,
  }) {
    return fetchGameHistoryOnlineRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchGameHistoryAllRequested value)?
        fetchGameHistoryAllRequested,
    TResult Function(FetchGameHistoryOfflineRequested value)?
        fetchGameHistoryOfflineRequested,
    TResult Function(FetchGameHistoryOnlineRequested value)?
        fetchGameHistoryOnlineRequested,
    TResult Function(GameSelected value)? gameSelected,
  }) {
    return fetchGameHistoryOnlineRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameHistoryAllRequested value)?
        fetchGameHistoryAllRequested,
    TResult Function(FetchGameHistoryOfflineRequested value)?
        fetchGameHistoryOfflineRequested,
    TResult Function(FetchGameHistoryOnlineRequested value)?
        fetchGameHistoryOnlineRequested,
    TResult Function(GameSelected value)? gameSelected,
    required TResult orElse(),
  }) {
    if (fetchGameHistoryOnlineRequested != null) {
      return fetchGameHistoryOnlineRequested(this);
    }
    return orElse();
  }
}

abstract class FetchGameHistoryOnlineRequested implements GameHistoryEvent {
  const factory FetchGameHistoryOnlineRequested({UniqueId? userId}) =
      _$FetchGameHistoryOnlineRequested;

  UniqueId? get userId;
  @JsonKey(ignore: true)
  $FetchGameHistoryOnlineRequestedCopyWith<FetchGameHistoryOnlineRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSelectedCopyWith<$Res> {
  factory $GameSelectedCopyWith(
          GameSelected value, $Res Function(GameSelected) then) =
      _$GameSelectedCopyWithImpl<$Res>;
  $Res call({AbstractGame game});
}

/// @nodoc
class _$GameSelectedCopyWithImpl<$Res>
    extends _$GameHistoryEventCopyWithImpl<$Res>
    implements $GameSelectedCopyWith<$Res> {
  _$GameSelectedCopyWithImpl(
      GameSelected _value, $Res Function(GameSelected) _then)
      : super(_value, (v) => _then(v as GameSelected));

  @override
  GameSelected get _value => super._value as GameSelected;

  @override
  $Res call({
    Object? game = freezed,
  }) {
    return _then(GameSelected(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as AbstractGame,
    ));
  }
}

/// @nodoc

class _$GameSelected implements GameSelected {
  const _$GameSelected({required this.game});

  @override
  final AbstractGame game;

  @override
  String toString() {
    return 'GameHistoryEvent.gameSelected(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameSelected &&
            (identical(other.game, game) || other.game == game));
  }

  @override
  int get hashCode => Object.hash(runtimeType, game);

  @JsonKey(ignore: true)
  @override
  $GameSelectedCopyWith<GameSelected> get copyWith =>
      _$GameSelectedCopyWithImpl<GameSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchGameHistoryAllRequested,
    required TResult Function() fetchGameHistoryOfflineRequested,
    required TResult Function(UniqueId? userId) fetchGameHistoryOnlineRequested,
    required TResult Function(AbstractGame game) gameSelected,
  }) {
    return gameSelected(game);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchGameHistoryAllRequested,
    TResult Function()? fetchGameHistoryOfflineRequested,
    TResult Function(UniqueId? userId)? fetchGameHistoryOnlineRequested,
    TResult Function(AbstractGame game)? gameSelected,
  }) {
    return gameSelected?.call(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchGameHistoryAllRequested,
    TResult Function()? fetchGameHistoryOfflineRequested,
    TResult Function(UniqueId? userId)? fetchGameHistoryOnlineRequested,
    TResult Function(AbstractGame game)? gameSelected,
    required TResult orElse(),
  }) {
    if (gameSelected != null) {
      return gameSelected(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGameHistoryAllRequested value)
        fetchGameHistoryAllRequested,
    required TResult Function(FetchGameHistoryOfflineRequested value)
        fetchGameHistoryOfflineRequested,
    required TResult Function(FetchGameHistoryOnlineRequested value)
        fetchGameHistoryOnlineRequested,
    required TResult Function(GameSelected value) gameSelected,
  }) {
    return gameSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchGameHistoryAllRequested value)?
        fetchGameHistoryAllRequested,
    TResult Function(FetchGameHistoryOfflineRequested value)?
        fetchGameHistoryOfflineRequested,
    TResult Function(FetchGameHistoryOnlineRequested value)?
        fetchGameHistoryOnlineRequested,
    TResult Function(GameSelected value)? gameSelected,
  }) {
    return gameSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameHistoryAllRequested value)?
        fetchGameHistoryAllRequested,
    TResult Function(FetchGameHistoryOfflineRequested value)?
        fetchGameHistoryOfflineRequested,
    TResult Function(FetchGameHistoryOnlineRequested value)?
        fetchGameHistoryOnlineRequested,
    TResult Function(GameSelected value)? gameSelected,
    required TResult orElse(),
  }) {
    if (gameSelected != null) {
      return gameSelected(this);
    }
    return orElse();
  }
}

abstract class GameSelected implements GameHistoryEvent {
  const factory GameSelected({required AbstractGame game}) = _$GameSelected;

  AbstractGame get game;
  @JsonKey(ignore: true)
  $GameSelectedCopyWith<GameSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GameHistoryStateTearOff {
  const _$GameHistoryStateTearOff();

  GameHistoryLoadInProgress loadInProgress() {
    return const GameHistoryLoadInProgress();
  }

  GameHistoryLoadSuccess loadSuccess(
      {required List10<AbstractGame> gameHistory, AbstractGame? selectedGame}) {
    return GameHistoryLoadSuccess(
      gameHistory: gameHistory,
      selectedGame: selectedGame,
    );
  }

  GameHistoryLoadFailure loadFailure({required Object failure}) {
    return GameHistoryLoadFailure(
      failure: failure,
    );
  }
}

/// @nodoc
const $GameHistoryState = _$GameHistoryStateTearOff();

/// @nodoc
mixin _$GameHistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            List10<AbstractGame> gameHistory, AbstractGame? selectedGame)
        loadSuccess,
    required TResult Function(Object failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            List10<AbstractGame> gameHistory, AbstractGame? selectedGame)?
        loadSuccess,
    TResult Function(Object failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            List10<AbstractGame> gameHistory, AbstractGame? selectedGame)?
        loadSuccess,
    TResult Function(Object failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameHistoryLoadInProgress value) loadInProgress,
    required TResult Function(GameHistoryLoadSuccess value) loadSuccess,
    required TResult Function(GameHistoryLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameHistoryLoadInProgress value)? loadInProgress,
    TResult Function(GameHistoryLoadSuccess value)? loadSuccess,
    TResult Function(GameHistoryLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameHistoryLoadInProgress value)? loadInProgress,
    TResult Function(GameHistoryLoadSuccess value)? loadSuccess,
    TResult Function(GameHistoryLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameHistoryStateCopyWith<$Res> {
  factory $GameHistoryStateCopyWith(
          GameHistoryState value, $Res Function(GameHistoryState) then) =
      _$GameHistoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameHistoryStateCopyWithImpl<$Res>
    implements $GameHistoryStateCopyWith<$Res> {
  _$GameHistoryStateCopyWithImpl(this._value, this._then);

  final GameHistoryState _value;
  // ignore: unused_field
  final $Res Function(GameHistoryState) _then;
}

/// @nodoc
abstract class $GameHistoryLoadInProgressCopyWith<$Res> {
  factory $GameHistoryLoadInProgressCopyWith(GameHistoryLoadInProgress value,
          $Res Function(GameHistoryLoadInProgress) then) =
      _$GameHistoryLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameHistoryLoadInProgressCopyWithImpl<$Res>
    extends _$GameHistoryStateCopyWithImpl<$Res>
    implements $GameHistoryLoadInProgressCopyWith<$Res> {
  _$GameHistoryLoadInProgressCopyWithImpl(GameHistoryLoadInProgress _value,
      $Res Function(GameHistoryLoadInProgress) _then)
      : super(_value, (v) => _then(v as GameHistoryLoadInProgress));

  @override
  GameHistoryLoadInProgress get _value =>
      super._value as GameHistoryLoadInProgress;
}

/// @nodoc

class _$GameHistoryLoadInProgress implements GameHistoryLoadInProgress {
  const _$GameHistoryLoadInProgress();

  @override
  String toString() {
    return 'GameHistoryState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameHistoryLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            List10<AbstractGame> gameHistory, AbstractGame? selectedGame)
        loadSuccess,
    required TResult Function(Object failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            List10<AbstractGame> gameHistory, AbstractGame? selectedGame)?
        loadSuccess,
    TResult Function(Object failure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            List10<AbstractGame> gameHistory, AbstractGame? selectedGame)?
        loadSuccess,
    TResult Function(Object failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameHistoryLoadInProgress value) loadInProgress,
    required TResult Function(GameHistoryLoadSuccess value) loadSuccess,
    required TResult Function(GameHistoryLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameHistoryLoadInProgress value)? loadInProgress,
    TResult Function(GameHistoryLoadSuccess value)? loadSuccess,
    TResult Function(GameHistoryLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameHistoryLoadInProgress value)? loadInProgress,
    TResult Function(GameHistoryLoadSuccess value)? loadSuccess,
    TResult Function(GameHistoryLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class GameHistoryLoadInProgress implements GameHistoryState {
  const factory GameHistoryLoadInProgress() = _$GameHistoryLoadInProgress;
}

/// @nodoc
abstract class $GameHistoryLoadSuccessCopyWith<$Res> {
  factory $GameHistoryLoadSuccessCopyWith(GameHistoryLoadSuccess value,
          $Res Function(GameHistoryLoadSuccess) then) =
      _$GameHistoryLoadSuccessCopyWithImpl<$Res>;
  $Res call({List10<AbstractGame> gameHistory, AbstractGame? selectedGame});
}

/// @nodoc
class _$GameHistoryLoadSuccessCopyWithImpl<$Res>
    extends _$GameHistoryStateCopyWithImpl<$Res>
    implements $GameHistoryLoadSuccessCopyWith<$Res> {
  _$GameHistoryLoadSuccessCopyWithImpl(GameHistoryLoadSuccess _value,
      $Res Function(GameHistoryLoadSuccess) _then)
      : super(_value, (v) => _then(v as GameHistoryLoadSuccess));

  @override
  GameHistoryLoadSuccess get _value => super._value as GameHistoryLoadSuccess;

  @override
  $Res call({
    Object? gameHistory = freezed,
    Object? selectedGame = freezed,
  }) {
    return _then(GameHistoryLoadSuccess(
      gameHistory: gameHistory == freezed
          ? _value.gameHistory
          : gameHistory // ignore: cast_nullable_to_non_nullable
              as List10<AbstractGame>,
      selectedGame: selectedGame == freezed
          ? _value.selectedGame
          : selectedGame // ignore: cast_nullable_to_non_nullable
              as AbstractGame?,
    ));
  }
}

/// @nodoc

class _$GameHistoryLoadSuccess implements GameHistoryLoadSuccess {
  const _$GameHistoryLoadSuccess(
      {required this.gameHistory, this.selectedGame});

  @override
  final List10<AbstractGame> gameHistory;
  @override
  final AbstractGame? selectedGame;

  @override
  String toString() {
    return 'GameHistoryState.loadSuccess(gameHistory: $gameHistory, selectedGame: $selectedGame)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameHistoryLoadSuccess &&
            (identical(other.gameHistory, gameHistory) ||
                other.gameHistory == gameHistory) &&
            (identical(other.selectedGame, selectedGame) ||
                other.selectedGame == selectedGame));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameHistory, selectedGame);

  @JsonKey(ignore: true)
  @override
  $GameHistoryLoadSuccessCopyWith<GameHistoryLoadSuccess> get copyWith =>
      _$GameHistoryLoadSuccessCopyWithImpl<GameHistoryLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            List10<AbstractGame> gameHistory, AbstractGame? selectedGame)
        loadSuccess,
    required TResult Function(Object failure) loadFailure,
  }) {
    return loadSuccess(gameHistory, selectedGame);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            List10<AbstractGame> gameHistory, AbstractGame? selectedGame)?
        loadSuccess,
    TResult Function(Object failure)? loadFailure,
  }) {
    return loadSuccess?.call(gameHistory, selectedGame);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            List10<AbstractGame> gameHistory, AbstractGame? selectedGame)?
        loadSuccess,
    TResult Function(Object failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(gameHistory, selectedGame);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameHistoryLoadInProgress value) loadInProgress,
    required TResult Function(GameHistoryLoadSuccess value) loadSuccess,
    required TResult Function(GameHistoryLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameHistoryLoadInProgress value)? loadInProgress,
    TResult Function(GameHistoryLoadSuccess value)? loadSuccess,
    TResult Function(GameHistoryLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameHistoryLoadInProgress value)? loadInProgress,
    TResult Function(GameHistoryLoadSuccess value)? loadSuccess,
    TResult Function(GameHistoryLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class GameHistoryLoadSuccess implements GameHistoryState {
  const factory GameHistoryLoadSuccess(
      {required List10<AbstractGame> gameHistory,
      AbstractGame? selectedGame}) = _$GameHistoryLoadSuccess;

  List10<AbstractGame> get gameHistory;
  AbstractGame? get selectedGame;
  @JsonKey(ignore: true)
  $GameHistoryLoadSuccessCopyWith<GameHistoryLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameHistoryLoadFailureCopyWith<$Res> {
  factory $GameHistoryLoadFailureCopyWith(GameHistoryLoadFailure value,
          $Res Function(GameHistoryLoadFailure) then) =
      _$GameHistoryLoadFailureCopyWithImpl<$Res>;
  $Res call({Object failure});
}

/// @nodoc
class _$GameHistoryLoadFailureCopyWithImpl<$Res>
    extends _$GameHistoryStateCopyWithImpl<$Res>
    implements $GameHistoryLoadFailureCopyWith<$Res> {
  _$GameHistoryLoadFailureCopyWithImpl(GameHistoryLoadFailure _value,
      $Res Function(GameHistoryLoadFailure) _then)
      : super(_value, (v) => _then(v as GameHistoryLoadFailure));

  @override
  GameHistoryLoadFailure get _value => super._value as GameHistoryLoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(GameHistoryLoadFailure(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$GameHistoryLoadFailure implements GameHistoryLoadFailure {
  const _$GameHistoryLoadFailure({required this.failure});

  @override
  final Object failure;

  @override
  String toString() {
    return 'GameHistoryState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameHistoryLoadFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  $GameHistoryLoadFailureCopyWith<GameHistoryLoadFailure> get copyWith =>
      _$GameHistoryLoadFailureCopyWithImpl<GameHistoryLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            List10<AbstractGame> gameHistory, AbstractGame? selectedGame)
        loadSuccess,
    required TResult Function(Object failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            List10<AbstractGame> gameHistory, AbstractGame? selectedGame)?
        loadSuccess,
    TResult Function(Object failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            List10<AbstractGame> gameHistory, AbstractGame? selectedGame)?
        loadSuccess,
    TResult Function(Object failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameHistoryLoadInProgress value) loadInProgress,
    required TResult Function(GameHistoryLoadSuccess value) loadSuccess,
    required TResult Function(GameHistoryLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameHistoryLoadInProgress value)? loadInProgress,
    TResult Function(GameHistoryLoadSuccess value)? loadSuccess,
    TResult Function(GameHistoryLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameHistoryLoadInProgress value)? loadInProgress,
    TResult Function(GameHistoryLoadSuccess value)? loadSuccess,
    TResult Function(GameHistoryLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class GameHistoryLoadFailure implements GameHistoryState {
  const factory GameHistoryLoadFailure({required Object failure}) =
      _$GameHistoryLoadFailure;

  Object get failure;
  @JsonKey(ignore: true)
  $GameHistoryLoadFailureCopyWith<GameHistoryLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
