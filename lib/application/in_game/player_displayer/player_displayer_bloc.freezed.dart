// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'player_displayer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayerDisplayerEventTearOff {
  const _$PlayerDisplayerEventTearOff();

  PlayersReceived playersReceived({required KtList<Player> players}) {
    return PlayersReceived(
      players: players,
    );
  }
}

/// @nodoc
const $PlayerDisplayerEvent = _$PlayerDisplayerEventTearOff();

/// @nodoc
mixin _$PlayerDisplayerEvent {
  KtList<Player> get players => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<Player> players) playersReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<Player> players)? playersReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayersReceived value) playersReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayersReceived value)? playersReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerDisplayerEventCopyWith<PlayerDisplayerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerDisplayerEventCopyWith<$Res> {
  factory $PlayerDisplayerEventCopyWith(PlayerDisplayerEvent value,
          $Res Function(PlayerDisplayerEvent) then) =
      _$PlayerDisplayerEventCopyWithImpl<$Res>;
  $Res call({KtList<Player> players});
}

/// @nodoc
class _$PlayerDisplayerEventCopyWithImpl<$Res>
    implements $PlayerDisplayerEventCopyWith<$Res> {
  _$PlayerDisplayerEventCopyWithImpl(this._value, this._then);

  final PlayerDisplayerEvent _value;
  // ignore: unused_field
  final $Res Function(PlayerDisplayerEvent) _then;

  @override
  $Res call({
    Object? players = freezed,
  }) {
    return _then(_value.copyWith(
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as KtList<Player>,
    ));
  }
}

/// @nodoc
abstract class $PlayersReceivedCopyWith<$Res>
    implements $PlayerDisplayerEventCopyWith<$Res> {
  factory $PlayersReceivedCopyWith(
          PlayersReceived value, $Res Function(PlayersReceived) then) =
      _$PlayersReceivedCopyWithImpl<$Res>;
  @override
  $Res call({KtList<Player> players});
}

/// @nodoc
class _$PlayersReceivedCopyWithImpl<$Res>
    extends _$PlayerDisplayerEventCopyWithImpl<$Res>
    implements $PlayersReceivedCopyWith<$Res> {
  _$PlayersReceivedCopyWithImpl(
      PlayersReceived _value, $Res Function(PlayersReceived) _then)
      : super(_value, (v) => _then(v as PlayersReceived));

  @override
  PlayersReceived get _value => super._value as PlayersReceived;

  @override
  $Res call({
    Object? players = freezed,
  }) {
    return _then(PlayersReceived(
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as KtList<Player>,
    ));
  }
}

/// @nodoc

class _$PlayersReceived implements PlayersReceived {
  const _$PlayersReceived({required this.players});

  @override
  final KtList<Player> players;

  @override
  String toString() {
    return 'PlayerDisplayerEvent.playersReceived(players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlayersReceived &&
            (identical(other.players, players) ||
                const DeepCollectionEquality().equals(other.players, players)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(players);

  @JsonKey(ignore: true)
  @override
  $PlayersReceivedCopyWith<PlayersReceived> get copyWith =>
      _$PlayersReceivedCopyWithImpl<PlayersReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<Player> players) playersReceived,
  }) {
    return playersReceived(players);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<Player> players)? playersReceived,
    required TResult orElse(),
  }) {
    if (playersReceived != null) {
      return playersReceived(players);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayersReceived value) playersReceived,
  }) {
    return playersReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayersReceived value)? playersReceived,
    required TResult orElse(),
  }) {
    if (playersReceived != null) {
      return playersReceived(this);
    }
    return orElse();
  }
}

abstract class PlayersReceived implements PlayerDisplayerEvent {
  const factory PlayersReceived({required KtList<Player> players}) =
      _$PlayersReceived;

  @override
  KtList<Player> get players => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PlayersReceivedCopyWith<PlayersReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PlayerDisplayerStateTearOff {
  const _$PlayerDisplayerStateTearOff();

  _PlayerDisplayerState call({required KtList<Player> players}) {
    return _PlayerDisplayerState(
      players: players,
    );
  }
}

/// @nodoc
const $PlayerDisplayerState = _$PlayerDisplayerStateTearOff();

/// @nodoc
mixin _$PlayerDisplayerState {
  KtList<Player> get players => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerDisplayerStateCopyWith<PlayerDisplayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerDisplayerStateCopyWith<$Res> {
  factory $PlayerDisplayerStateCopyWith(PlayerDisplayerState value,
          $Res Function(PlayerDisplayerState) then) =
      _$PlayerDisplayerStateCopyWithImpl<$Res>;
  $Res call({KtList<Player> players});
}

/// @nodoc
class _$PlayerDisplayerStateCopyWithImpl<$Res>
    implements $PlayerDisplayerStateCopyWith<$Res> {
  _$PlayerDisplayerStateCopyWithImpl(this._value, this._then);

  final PlayerDisplayerState _value;
  // ignore: unused_field
  final $Res Function(PlayerDisplayerState) _then;

  @override
  $Res call({
    Object? players = freezed,
  }) {
    return _then(_value.copyWith(
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as KtList<Player>,
    ));
  }
}

/// @nodoc
abstract class _$PlayerDisplayerStateCopyWith<$Res>
    implements $PlayerDisplayerStateCopyWith<$Res> {
  factory _$PlayerDisplayerStateCopyWith(_PlayerDisplayerState value,
          $Res Function(_PlayerDisplayerState) then) =
      __$PlayerDisplayerStateCopyWithImpl<$Res>;
  @override
  $Res call({KtList<Player> players});
}

/// @nodoc
class __$PlayerDisplayerStateCopyWithImpl<$Res>
    extends _$PlayerDisplayerStateCopyWithImpl<$Res>
    implements _$PlayerDisplayerStateCopyWith<$Res> {
  __$PlayerDisplayerStateCopyWithImpl(
      _PlayerDisplayerState _value, $Res Function(_PlayerDisplayerState) _then)
      : super(_value, (v) => _then(v as _PlayerDisplayerState));

  @override
  _PlayerDisplayerState get _value => super._value as _PlayerDisplayerState;

  @override
  $Res call({
    Object? players = freezed,
  }) {
    return _then(_PlayerDisplayerState(
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as KtList<Player>,
    ));
  }
}

/// @nodoc

class _$_PlayerDisplayerState implements _PlayerDisplayerState {
  const _$_PlayerDisplayerState({required this.players});

  @override
  final KtList<Player> players;

  @override
  String toString() {
    return 'PlayerDisplayerState(players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayerDisplayerState &&
            (identical(other.players, players) ||
                const DeepCollectionEquality().equals(other.players, players)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(players);

  @JsonKey(ignore: true)
  @override
  _$PlayerDisplayerStateCopyWith<_PlayerDisplayerState> get copyWith =>
      __$PlayerDisplayerStateCopyWithImpl<_PlayerDisplayerState>(
          this, _$identity);
}

abstract class _PlayerDisplayerState implements PlayerDisplayerState {
  const factory _PlayerDisplayerState({required KtList<Player> players}) =
      _$_PlayerDisplayerState;

  @override
  KtList<Player> get players => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlayerDisplayerStateCopyWith<_PlayerDisplayerState> get copyWith =>
      throw _privateConstructorUsedError;
}
