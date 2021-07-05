// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'in_game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InGameEventTearOff {
  const _$InGameEventTearOff();

  WatchStarted watchStarted() {
    return const WatchStarted();
  }

  ReceivedGame receivedGame({required Game game}) {
    return ReceivedGame(
      game: game,
    );
  }

  GameCanceled gameCanceled() {
    return const GameCanceled();
  }

  ShowCheckoutDetailsRequested showCheckoutDetailsRequested() {
    return const ShowCheckoutDetailsRequested();
  }
}

/// @nodoc
const $InGameEvent = _$InGameEventTearOff();

/// @nodoc
mixin _$InGameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(Game game) receivedGame,
    required TResult Function() gameCanceled,
    required TResult Function() showCheckoutDetailsRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(Game game)? receivedGame,
    TResult Function()? gameCanceled,
    TResult Function()? showCheckoutDetailsRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(ReceivedGame value) receivedGame,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ShowCheckoutDetailsRequested value)
        showCheckoutDetailsRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(ReceivedGame value)? receivedGame,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ShowCheckoutDetailsRequested value)?
        showCheckoutDetailsRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InGameEventCopyWith<$Res> {
  factory $InGameEventCopyWith(
          InGameEvent value, $Res Function(InGameEvent) then) =
      _$InGameEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InGameEventCopyWithImpl<$Res> implements $InGameEventCopyWith<$Res> {
  _$InGameEventCopyWithImpl(this._value, this._then);

  final InGameEvent _value;
  // ignore: unused_field
  final $Res Function(InGameEvent) _then;
}

/// @nodoc
abstract class $WatchStartedCopyWith<$Res> {
  factory $WatchStartedCopyWith(
          WatchStarted value, $Res Function(WatchStarted) then) =
      _$WatchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchStartedCopyWithImpl<$Res> extends _$InGameEventCopyWithImpl<$Res>
    implements $WatchStartedCopyWith<$Res> {
  _$WatchStartedCopyWithImpl(
      WatchStarted _value, $Res Function(WatchStarted) _then)
      : super(_value, (v) => _then(v as WatchStarted));

  @override
  WatchStarted get _value => super._value as WatchStarted;
}

/// @nodoc

class _$WatchStarted implements WatchStarted {
  const _$WatchStarted();

  @override
  String toString() {
    return 'InGameEvent.watchStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WatchStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(Game game) receivedGame,
    required TResult Function() gameCanceled,
    required TResult Function() showCheckoutDetailsRequested,
  }) {
    return watchStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(Game game)? receivedGame,
    TResult Function()? gameCanceled,
    TResult Function()? showCheckoutDetailsRequested,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(ReceivedGame value) receivedGame,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ShowCheckoutDetailsRequested value)
        showCheckoutDetailsRequested,
  }) {
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(ReceivedGame value)? receivedGame,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ShowCheckoutDetailsRequested value)?
        showCheckoutDetailsRequested,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted(this);
    }
    return orElse();
  }
}

abstract class WatchStarted implements InGameEvent {
  const factory WatchStarted() = _$WatchStarted;
}

/// @nodoc
abstract class $ReceivedGameCopyWith<$Res> {
  factory $ReceivedGameCopyWith(
          ReceivedGame value, $Res Function(ReceivedGame) then) =
      _$ReceivedGameCopyWithImpl<$Res>;
  $Res call({Game game});

  $GameCopyWith<$Res> get game;
}

/// @nodoc
class _$ReceivedGameCopyWithImpl<$Res> extends _$InGameEventCopyWithImpl<$Res>
    implements $ReceivedGameCopyWith<$Res> {
  _$ReceivedGameCopyWithImpl(
      ReceivedGame _value, $Res Function(ReceivedGame) _then)
      : super(_value, (v) => _then(v as ReceivedGame));

  @override
  ReceivedGame get _value => super._value as ReceivedGame;

  @override
  $Res call({
    Object? game = freezed,
  }) {
    return _then(ReceivedGame(
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

class _$ReceivedGame implements ReceivedGame {
  const _$ReceivedGame({required this.game});

  @override
  final Game game;

  @override
  String toString() {
    return 'InGameEvent.receivedGame(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReceivedGame &&
            (identical(other.game, game) ||
                const DeepCollectionEquality().equals(other.game, game)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(game);

  @JsonKey(ignore: true)
  @override
  $ReceivedGameCopyWith<ReceivedGame> get copyWith =>
      _$ReceivedGameCopyWithImpl<ReceivedGame>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(Game game) receivedGame,
    required TResult Function() gameCanceled,
    required TResult Function() showCheckoutDetailsRequested,
  }) {
    return receivedGame(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(Game game)? receivedGame,
    TResult Function()? gameCanceled,
    TResult Function()? showCheckoutDetailsRequested,
    required TResult orElse(),
  }) {
    if (receivedGame != null) {
      return receivedGame(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(ReceivedGame value) receivedGame,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ShowCheckoutDetailsRequested value)
        showCheckoutDetailsRequested,
  }) {
    return receivedGame(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(ReceivedGame value)? receivedGame,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ShowCheckoutDetailsRequested value)?
        showCheckoutDetailsRequested,
    required TResult orElse(),
  }) {
    if (receivedGame != null) {
      return receivedGame(this);
    }
    return orElse();
  }
}

abstract class ReceivedGame implements InGameEvent {
  const factory ReceivedGame({required Game game}) = _$ReceivedGame;

  Game get game => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceivedGameCopyWith<ReceivedGame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCanceledCopyWith<$Res> {
  factory $GameCanceledCopyWith(
          GameCanceled value, $Res Function(GameCanceled) then) =
      _$GameCanceledCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameCanceledCopyWithImpl<$Res> extends _$InGameEventCopyWithImpl<$Res>
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
    return 'InGameEvent.gameCanceled()';
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
    required TResult Function() watchStarted,
    required TResult Function(Game game) receivedGame,
    required TResult Function() gameCanceled,
    required TResult Function() showCheckoutDetailsRequested,
  }) {
    return gameCanceled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(Game game)? receivedGame,
    TResult Function()? gameCanceled,
    TResult Function()? showCheckoutDetailsRequested,
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
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(ReceivedGame value) receivedGame,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ShowCheckoutDetailsRequested value)
        showCheckoutDetailsRequested,
  }) {
    return gameCanceled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(ReceivedGame value)? receivedGame,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ShowCheckoutDetailsRequested value)?
        showCheckoutDetailsRequested,
    required TResult orElse(),
  }) {
    if (gameCanceled != null) {
      return gameCanceled(this);
    }
    return orElse();
  }
}

abstract class GameCanceled implements InGameEvent {
  const factory GameCanceled() = _$GameCanceled;
}

/// @nodoc
abstract class $ShowCheckoutDetailsRequestedCopyWith<$Res> {
  factory $ShowCheckoutDetailsRequestedCopyWith(
          ShowCheckoutDetailsRequested value,
          $Res Function(ShowCheckoutDetailsRequested) then) =
      _$ShowCheckoutDetailsRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowCheckoutDetailsRequestedCopyWithImpl<$Res>
    extends _$InGameEventCopyWithImpl<$Res>
    implements $ShowCheckoutDetailsRequestedCopyWith<$Res> {
  _$ShowCheckoutDetailsRequestedCopyWithImpl(
      ShowCheckoutDetailsRequested _value,
      $Res Function(ShowCheckoutDetailsRequested) _then)
      : super(_value, (v) => _then(v as ShowCheckoutDetailsRequested));

  @override
  ShowCheckoutDetailsRequested get _value =>
      super._value as ShowCheckoutDetailsRequested;
}

/// @nodoc

class _$ShowCheckoutDetailsRequested implements ShowCheckoutDetailsRequested {
  const _$ShowCheckoutDetailsRequested();

  @override
  String toString() {
    return 'InGameEvent.showCheckoutDetailsRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowCheckoutDetailsRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(Game game) receivedGame,
    required TResult Function() gameCanceled,
    required TResult Function() showCheckoutDetailsRequested,
  }) {
    return showCheckoutDetailsRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(Game game)? receivedGame,
    TResult Function()? gameCanceled,
    TResult Function()? showCheckoutDetailsRequested,
    required TResult orElse(),
  }) {
    if (showCheckoutDetailsRequested != null) {
      return showCheckoutDetailsRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(ReceivedGame value) receivedGame,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(ShowCheckoutDetailsRequested value)
        showCheckoutDetailsRequested,
  }) {
    return showCheckoutDetailsRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(ReceivedGame value)? receivedGame,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(ShowCheckoutDetailsRequested value)?
        showCheckoutDetailsRequested,
    required TResult orElse(),
  }) {
    if (showCheckoutDetailsRequested != null) {
      return showCheckoutDetailsRequested(this);
    }
    return orElse();
  }
}

abstract class ShowCheckoutDetailsRequested implements InGameEvent {
  const factory ShowCheckoutDetailsRequested() = _$ShowCheckoutDetailsRequested;
}

/// @nodoc
class _$InGameStateTearOff {
  const _$InGameStateTearOff();

  _InGameState call({required Game game, required bool showCheckoutDetails}) {
    return _InGameState(
      game: game,
      showCheckoutDetails: showCheckoutDetails,
    );
  }
}

/// @nodoc
const $InGameState = _$InGameStateTearOff();

/// @nodoc
mixin _$InGameState {
  Game get game => throw _privateConstructorUsedError;
  bool get showCheckoutDetails => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InGameStateCopyWith<InGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InGameStateCopyWith<$Res> {
  factory $InGameStateCopyWith(
          InGameState value, $Res Function(InGameState) then) =
      _$InGameStateCopyWithImpl<$Res>;
  $Res call({Game game, bool showCheckoutDetails});

  $GameCopyWith<$Res> get game;
}

/// @nodoc
class _$InGameStateCopyWithImpl<$Res> implements $InGameStateCopyWith<$Res> {
  _$InGameStateCopyWithImpl(this._value, this._then);

  final InGameState _value;
  // ignore: unused_field
  final $Res Function(InGameState) _then;

  @override
  $Res call({
    Object? game = freezed,
    Object? showCheckoutDetails = freezed,
  }) {
    return _then(_value.copyWith(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
      showCheckoutDetails: showCheckoutDetails == freezed
          ? _value.showCheckoutDetails
          : showCheckoutDetails // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$InGameStateCopyWith<$Res>
    implements $InGameStateCopyWith<$Res> {
  factory _$InGameStateCopyWith(
          _InGameState value, $Res Function(_InGameState) then) =
      __$InGameStateCopyWithImpl<$Res>;
  @override
  $Res call({Game game, bool showCheckoutDetails});

  @override
  $GameCopyWith<$Res> get game;
}

/// @nodoc
class __$InGameStateCopyWithImpl<$Res> extends _$InGameStateCopyWithImpl<$Res>
    implements _$InGameStateCopyWith<$Res> {
  __$InGameStateCopyWithImpl(
      _InGameState _value, $Res Function(_InGameState) _then)
      : super(_value, (v) => _then(v as _InGameState));

  @override
  _InGameState get _value => super._value as _InGameState;

  @override
  $Res call({
    Object? game = freezed,
    Object? showCheckoutDetails = freezed,
  }) {
    return _then(_InGameState(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
      showCheckoutDetails: showCheckoutDetails == freezed
          ? _value.showCheckoutDetails
          : showCheckoutDetails // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InGameState implements _InGameState {
  const _$_InGameState({required this.game, required this.showCheckoutDetails});

  @override
  final Game game;
  @override
  final bool showCheckoutDetails;

  @override
  String toString() {
    return 'InGameState(game: $game, showCheckoutDetails: $showCheckoutDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InGameState &&
            (identical(other.game, game) ||
                const DeepCollectionEquality().equals(other.game, game)) &&
            (identical(other.showCheckoutDetails, showCheckoutDetails) ||
                const DeepCollectionEquality()
                    .equals(other.showCheckoutDetails, showCheckoutDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(game) ^
      const DeepCollectionEquality().hash(showCheckoutDetails);

  @JsonKey(ignore: true)
  @override
  _$InGameStateCopyWith<_InGameState> get copyWith =>
      __$InGameStateCopyWithImpl<_InGameState>(this, _$identity);
}

abstract class _InGameState implements InGameState {
  const factory _InGameState(
      {required Game game, required bool showCheckoutDetails}) = _$_InGameState;

  @override
  Game get game => throw _privateConstructorUsedError;
  @override
  bool get showCheckoutDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InGameStateCopyWith<_InGameState> get copyWith =>
      throw _privateConstructorUsedError;
}
