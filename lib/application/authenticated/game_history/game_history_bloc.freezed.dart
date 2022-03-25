// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
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

  _FetchGameHistoryAllRequested fetchGameHistoryAllRequested() {
    return const _FetchGameHistoryAllRequested();
  }

  _FetchGameHistoryOfflineRequested fetchGameHistoryOfflineRequested() {
    return const _FetchGameHistoryOfflineRequested();
  }

  _FetchGameHistoryOnlineRequested fetchGameHistoryOnlineRequested(
      {UniqueId? userId}) {
    return _FetchGameHistoryOnlineRequested(
      userId: userId,
    );
  }

  _GameSelected gameSelected({required AbstractGame game}) {
    return _GameSelected(
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
    required TResult Function(_FetchGameHistoryAllRequested value)
        fetchGameHistoryAllRequested,
    required TResult Function(_FetchGameHistoryOfflineRequested value)
        fetchGameHistoryOfflineRequested,
    required TResult Function(_FetchGameHistoryOnlineRequested value)
        fetchGameHistoryOnlineRequested,
    required TResult Function(_GameSelected value) gameSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchGameHistoryAllRequested value)?
        fetchGameHistoryAllRequested,
    TResult Function(_FetchGameHistoryOfflineRequested value)?
        fetchGameHistoryOfflineRequested,
    TResult Function(_FetchGameHistoryOnlineRequested value)?
        fetchGameHistoryOnlineRequested,
    TResult Function(_GameSelected value)? gameSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchGameHistoryAllRequested value)?
        fetchGameHistoryAllRequested,
    TResult Function(_FetchGameHistoryOfflineRequested value)?
        fetchGameHistoryOfflineRequested,
    TResult Function(_FetchGameHistoryOnlineRequested value)?
        fetchGameHistoryOnlineRequested,
    TResult Function(_GameSelected value)? gameSelected,
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
abstract class _$FetchGameHistoryAllRequestedCopyWith<$Res> {
  factory _$FetchGameHistoryAllRequestedCopyWith(
          _FetchGameHistoryAllRequested value,
          $Res Function(_FetchGameHistoryAllRequested) then) =
      __$FetchGameHistoryAllRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchGameHistoryAllRequestedCopyWithImpl<$Res>
    extends _$GameHistoryEventCopyWithImpl<$Res>
    implements _$FetchGameHistoryAllRequestedCopyWith<$Res> {
  __$FetchGameHistoryAllRequestedCopyWithImpl(
      _FetchGameHistoryAllRequested _value,
      $Res Function(_FetchGameHistoryAllRequested) _then)
      : super(_value, (v) => _then(v as _FetchGameHistoryAllRequested));

  @override
  _FetchGameHistoryAllRequested get _value =>
      super._value as _FetchGameHistoryAllRequested;
}

/// @nodoc

class _$_FetchGameHistoryAllRequested implements _FetchGameHistoryAllRequested {
  const _$_FetchGameHistoryAllRequested();

  @override
  String toString() {
    return 'GameHistoryEvent.fetchGameHistoryAllRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchGameHistoryAllRequested);
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
    required TResult Function(_FetchGameHistoryAllRequested value)
        fetchGameHistoryAllRequested,
    required TResult Function(_FetchGameHistoryOfflineRequested value)
        fetchGameHistoryOfflineRequested,
    required TResult Function(_FetchGameHistoryOnlineRequested value)
        fetchGameHistoryOnlineRequested,
    required TResult Function(_GameSelected value) gameSelected,
  }) {
    return fetchGameHistoryAllRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchGameHistoryAllRequested value)?
        fetchGameHistoryAllRequested,
    TResult Function(_FetchGameHistoryOfflineRequested value)?
        fetchGameHistoryOfflineRequested,
    TResult Function(_FetchGameHistoryOnlineRequested value)?
        fetchGameHistoryOnlineRequested,
    TResult Function(_GameSelected value)? gameSelected,
  }) {
    return fetchGameHistoryAllRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchGameHistoryAllRequested value)?
        fetchGameHistoryAllRequested,
    TResult Function(_FetchGameHistoryOfflineRequested value)?
        fetchGameHistoryOfflineRequested,
    TResult Function(_FetchGameHistoryOnlineRequested value)?
        fetchGameHistoryOnlineRequested,
    TResult Function(_GameSelected value)? gameSelected,
    required TResult orElse(),
  }) {
    if (fetchGameHistoryAllRequested != null) {
      return fetchGameHistoryAllRequested(this);
    }
    return orElse();
  }
}

abstract class _FetchGameHistoryAllRequested implements GameHistoryEvent {
  const factory _FetchGameHistoryAllRequested() =
      _$_FetchGameHistoryAllRequested;
}

/// @nodoc
abstract class _$FetchGameHistoryOfflineRequestedCopyWith<$Res> {
  factory _$FetchGameHistoryOfflineRequestedCopyWith(
          _FetchGameHistoryOfflineRequested value,
          $Res Function(_FetchGameHistoryOfflineRequested) then) =
      __$FetchGameHistoryOfflineRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchGameHistoryOfflineRequestedCopyWithImpl<$Res>
    extends _$GameHistoryEventCopyWithImpl<$Res>
    implements _$FetchGameHistoryOfflineRequestedCopyWith<$Res> {
  __$FetchGameHistoryOfflineRequestedCopyWithImpl(
      _FetchGameHistoryOfflineRequested _value,
      $Res Function(_FetchGameHistoryOfflineRequested) _then)
      : super(_value, (v) => _then(v as _FetchGameHistoryOfflineRequested));

  @override
  _FetchGameHistoryOfflineRequested get _value =>
      super._value as _FetchGameHistoryOfflineRequested;
}

/// @nodoc

class _$_FetchGameHistoryOfflineRequested
    implements _FetchGameHistoryOfflineRequested {
  const _$_FetchGameHistoryOfflineRequested();

  @override
  String toString() {
    return 'GameHistoryEvent.fetchGameHistoryOfflineRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchGameHistoryOfflineRequested);
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
    required TResult Function(_FetchGameHistoryAllRequested value)
        fetchGameHistoryAllRequested,
    required TResult Function(_FetchGameHistoryOfflineRequested value)
        fetchGameHistoryOfflineRequested,
    required TResult Function(_FetchGameHistoryOnlineRequested value)
        fetchGameHistoryOnlineRequested,
    required TResult Function(_GameSelected value) gameSelected,
  }) {
    return fetchGameHistoryOfflineRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchGameHistoryAllRequested value)?
        fetchGameHistoryAllRequested,
    TResult Function(_FetchGameHistoryOfflineRequested value)?
        fetchGameHistoryOfflineRequested,
    TResult Function(_FetchGameHistoryOnlineRequested value)?
        fetchGameHistoryOnlineRequested,
    TResult Function(_GameSelected value)? gameSelected,
  }) {
    return fetchGameHistoryOfflineRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchGameHistoryAllRequested value)?
        fetchGameHistoryAllRequested,
    TResult Function(_FetchGameHistoryOfflineRequested value)?
        fetchGameHistoryOfflineRequested,
    TResult Function(_FetchGameHistoryOnlineRequested value)?
        fetchGameHistoryOnlineRequested,
    TResult Function(_GameSelected value)? gameSelected,
    required TResult orElse(),
  }) {
    if (fetchGameHistoryOfflineRequested != null) {
      return fetchGameHistoryOfflineRequested(this);
    }
    return orElse();
  }
}

abstract class _FetchGameHistoryOfflineRequested implements GameHistoryEvent {
  const factory _FetchGameHistoryOfflineRequested() =
      _$_FetchGameHistoryOfflineRequested;
}

/// @nodoc
abstract class _$FetchGameHistoryOnlineRequestedCopyWith<$Res> {
  factory _$FetchGameHistoryOnlineRequestedCopyWith(
          _FetchGameHistoryOnlineRequested value,
          $Res Function(_FetchGameHistoryOnlineRequested) then) =
      __$FetchGameHistoryOnlineRequestedCopyWithImpl<$Res>;
  $Res call({UniqueId? userId});
}

/// @nodoc
class __$FetchGameHistoryOnlineRequestedCopyWithImpl<$Res>
    extends _$GameHistoryEventCopyWithImpl<$Res>
    implements _$FetchGameHistoryOnlineRequestedCopyWith<$Res> {
  __$FetchGameHistoryOnlineRequestedCopyWithImpl(
      _FetchGameHistoryOnlineRequested _value,
      $Res Function(_FetchGameHistoryOnlineRequested) _then)
      : super(_value, (v) => _then(v as _FetchGameHistoryOnlineRequested));

  @override
  _FetchGameHistoryOnlineRequested get _value =>
      super._value as _FetchGameHistoryOnlineRequested;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_FetchGameHistoryOnlineRequested(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
    ));
  }
}

/// @nodoc

class _$_FetchGameHistoryOnlineRequested
    implements _FetchGameHistoryOnlineRequested {
  const _$_FetchGameHistoryOnlineRequested({this.userId});

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
            other is _FetchGameHistoryOnlineRequested &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$FetchGameHistoryOnlineRequestedCopyWith<_FetchGameHistoryOnlineRequested>
      get copyWith => __$FetchGameHistoryOnlineRequestedCopyWithImpl<
          _FetchGameHistoryOnlineRequested>(this, _$identity);

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
    required TResult Function(_FetchGameHistoryAllRequested value)
        fetchGameHistoryAllRequested,
    required TResult Function(_FetchGameHistoryOfflineRequested value)
        fetchGameHistoryOfflineRequested,
    required TResult Function(_FetchGameHistoryOnlineRequested value)
        fetchGameHistoryOnlineRequested,
    required TResult Function(_GameSelected value) gameSelected,
  }) {
    return fetchGameHistoryOnlineRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchGameHistoryAllRequested value)?
        fetchGameHistoryAllRequested,
    TResult Function(_FetchGameHistoryOfflineRequested value)?
        fetchGameHistoryOfflineRequested,
    TResult Function(_FetchGameHistoryOnlineRequested value)?
        fetchGameHistoryOnlineRequested,
    TResult Function(_GameSelected value)? gameSelected,
  }) {
    return fetchGameHistoryOnlineRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchGameHistoryAllRequested value)?
        fetchGameHistoryAllRequested,
    TResult Function(_FetchGameHistoryOfflineRequested value)?
        fetchGameHistoryOfflineRequested,
    TResult Function(_FetchGameHistoryOnlineRequested value)?
        fetchGameHistoryOnlineRequested,
    TResult Function(_GameSelected value)? gameSelected,
    required TResult orElse(),
  }) {
    if (fetchGameHistoryOnlineRequested != null) {
      return fetchGameHistoryOnlineRequested(this);
    }
    return orElse();
  }
}

abstract class _FetchGameHistoryOnlineRequested implements GameHistoryEvent {
  const factory _FetchGameHistoryOnlineRequested({UniqueId? userId}) =
      _$_FetchGameHistoryOnlineRequested;

  UniqueId? get userId;
  @JsonKey(ignore: true)
  _$FetchGameHistoryOnlineRequestedCopyWith<_FetchGameHistoryOnlineRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GameSelectedCopyWith<$Res> {
  factory _$GameSelectedCopyWith(
          _GameSelected value, $Res Function(_GameSelected) then) =
      __$GameSelectedCopyWithImpl<$Res>;
  $Res call({AbstractGame game});
}

/// @nodoc
class __$GameSelectedCopyWithImpl<$Res>
    extends _$GameHistoryEventCopyWithImpl<$Res>
    implements _$GameSelectedCopyWith<$Res> {
  __$GameSelectedCopyWithImpl(
      _GameSelected _value, $Res Function(_GameSelected) _then)
      : super(_value, (v) => _then(v as _GameSelected));

  @override
  _GameSelected get _value => super._value as _GameSelected;

  @override
  $Res call({
    Object? game = freezed,
  }) {
    return _then(_GameSelected(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as AbstractGame,
    ));
  }
}

/// @nodoc

class _$_GameSelected implements _GameSelected {
  const _$_GameSelected({required this.game});

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
            other is _GameSelected &&
            const DeepCollectionEquality().equals(other.game, game));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(game));

  @JsonKey(ignore: true)
  @override
  _$GameSelectedCopyWith<_GameSelected> get copyWith =>
      __$GameSelectedCopyWithImpl<_GameSelected>(this, _$identity);

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
    required TResult Function(_FetchGameHistoryAllRequested value)
        fetchGameHistoryAllRequested,
    required TResult Function(_FetchGameHistoryOfflineRequested value)
        fetchGameHistoryOfflineRequested,
    required TResult Function(_FetchGameHistoryOnlineRequested value)
        fetchGameHistoryOnlineRequested,
    required TResult Function(_GameSelected value) gameSelected,
  }) {
    return gameSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchGameHistoryAllRequested value)?
        fetchGameHistoryAllRequested,
    TResult Function(_FetchGameHistoryOfflineRequested value)?
        fetchGameHistoryOfflineRequested,
    TResult Function(_FetchGameHistoryOnlineRequested value)?
        fetchGameHistoryOnlineRequested,
    TResult Function(_GameSelected value)? gameSelected,
  }) {
    return gameSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchGameHistoryAllRequested value)?
        fetchGameHistoryAllRequested,
    TResult Function(_FetchGameHistoryOfflineRequested value)?
        fetchGameHistoryOfflineRequested,
    TResult Function(_FetchGameHistoryOnlineRequested value)?
        fetchGameHistoryOnlineRequested,
    TResult Function(_GameSelected value)? gameSelected,
    required TResult orElse(),
  }) {
    if (gameSelected != null) {
      return gameSelected(this);
    }
    return orElse();
  }
}

abstract class _GameSelected implements GameHistoryEvent {
  const factory _GameSelected({required AbstractGame game}) = _$_GameSelected;

  AbstractGame get game;
  @JsonKey(ignore: true)
  _$GameSelectedCopyWith<_GameSelected> get copyWith =>
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
            const DeepCollectionEquality()
                .equals(other.gameHistory, gameHistory) &&
            const DeepCollectionEquality()
                .equals(other.selectedGame, selectedGame));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(gameHistory),
      const DeepCollectionEquality().hash(selectedGame));

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
