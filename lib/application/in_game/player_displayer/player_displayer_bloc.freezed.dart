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

  PreviousPressed previousPlayerPressed() {
    return const PreviousPressed();
  }

  NextPressed nextPlayerPressed() {
    return const NextPressed();
  }

  CurrentPlayerUpdated currentPlayerUpdated({required Player newPlayer}) {
    return CurrentPlayerUpdated(
      newPlayer: newPlayer,
    );
  }
}

/// @nodoc
const $PlayerDisplayerEvent = _$PlayerDisplayerEventTearOff();

/// @nodoc
mixin _$PlayerDisplayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() previousPlayerPressed,
    required TResult Function() nextPlayerPressed,
    required TResult Function(Player newPlayer) currentPlayerUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? previousPlayerPressed,
    TResult Function()? nextPlayerPressed,
    TResult Function(Player newPlayer)? currentPlayerUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviousPressed value) previousPlayerPressed,
    required TResult Function(NextPressed value) nextPlayerPressed,
    required TResult Function(CurrentPlayerUpdated value) currentPlayerUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviousPressed value)? previousPlayerPressed,
    TResult Function(NextPressed value)? nextPlayerPressed,
    TResult Function(CurrentPlayerUpdated value)? currentPlayerUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerDisplayerEventCopyWith<$Res> {
  factory $PlayerDisplayerEventCopyWith(PlayerDisplayerEvent value,
          $Res Function(PlayerDisplayerEvent) then) =
      _$PlayerDisplayerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerDisplayerEventCopyWithImpl<$Res>
    implements $PlayerDisplayerEventCopyWith<$Res> {
  _$PlayerDisplayerEventCopyWithImpl(this._value, this._then);

  final PlayerDisplayerEvent _value;
  // ignore: unused_field
  final $Res Function(PlayerDisplayerEvent) _then;
}

/// @nodoc
abstract class $PreviousPressedCopyWith<$Res> {
  factory $PreviousPressedCopyWith(
          PreviousPressed value, $Res Function(PreviousPressed) then) =
      _$PreviousPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PreviousPressedCopyWithImpl<$Res>
    extends _$PlayerDisplayerEventCopyWithImpl<$Res>
    implements $PreviousPressedCopyWith<$Res> {
  _$PreviousPressedCopyWithImpl(
      PreviousPressed _value, $Res Function(PreviousPressed) _then)
      : super(_value, (v) => _then(v as PreviousPressed));

  @override
  PreviousPressed get _value => super._value as PreviousPressed;
}

/// @nodoc

class _$PreviousPressed implements PreviousPressed {
  const _$PreviousPressed();

  @override
  String toString() {
    return 'PlayerDisplayerEvent.previousPlayerPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PreviousPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() previousPlayerPressed,
    required TResult Function() nextPlayerPressed,
    required TResult Function(Player newPlayer) currentPlayerUpdated,
  }) {
    return previousPlayerPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? previousPlayerPressed,
    TResult Function()? nextPlayerPressed,
    TResult Function(Player newPlayer)? currentPlayerUpdated,
    required TResult orElse(),
  }) {
    if (previousPlayerPressed != null) {
      return previousPlayerPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviousPressed value) previousPlayerPressed,
    required TResult Function(NextPressed value) nextPlayerPressed,
    required TResult Function(CurrentPlayerUpdated value) currentPlayerUpdated,
  }) {
    return previousPlayerPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviousPressed value)? previousPlayerPressed,
    TResult Function(NextPressed value)? nextPlayerPressed,
    TResult Function(CurrentPlayerUpdated value)? currentPlayerUpdated,
    required TResult orElse(),
  }) {
    if (previousPlayerPressed != null) {
      return previousPlayerPressed(this);
    }
    return orElse();
  }
}

abstract class PreviousPressed implements PlayerDisplayerEvent {
  const factory PreviousPressed() = _$PreviousPressed;
}

/// @nodoc
abstract class $NextPressedCopyWith<$Res> {
  factory $NextPressedCopyWith(
          NextPressed value, $Res Function(NextPressed) then) =
      _$NextPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NextPressedCopyWithImpl<$Res>
    extends _$PlayerDisplayerEventCopyWithImpl<$Res>
    implements $NextPressedCopyWith<$Res> {
  _$NextPressedCopyWithImpl(
      NextPressed _value, $Res Function(NextPressed) _then)
      : super(_value, (v) => _then(v as NextPressed));

  @override
  NextPressed get _value => super._value as NextPressed;
}

/// @nodoc

class _$NextPressed implements NextPressed {
  const _$NextPressed();

  @override
  String toString() {
    return 'PlayerDisplayerEvent.nextPlayerPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NextPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() previousPlayerPressed,
    required TResult Function() nextPlayerPressed,
    required TResult Function(Player newPlayer) currentPlayerUpdated,
  }) {
    return nextPlayerPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? previousPlayerPressed,
    TResult Function()? nextPlayerPressed,
    TResult Function(Player newPlayer)? currentPlayerUpdated,
    required TResult orElse(),
  }) {
    if (nextPlayerPressed != null) {
      return nextPlayerPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviousPressed value) previousPlayerPressed,
    required TResult Function(NextPressed value) nextPlayerPressed,
    required TResult Function(CurrentPlayerUpdated value) currentPlayerUpdated,
  }) {
    return nextPlayerPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviousPressed value)? previousPlayerPressed,
    TResult Function(NextPressed value)? nextPlayerPressed,
    TResult Function(CurrentPlayerUpdated value)? currentPlayerUpdated,
    required TResult orElse(),
  }) {
    if (nextPlayerPressed != null) {
      return nextPlayerPressed(this);
    }
    return orElse();
  }
}

abstract class NextPressed implements PlayerDisplayerEvent {
  const factory NextPressed() = _$NextPressed;
}

/// @nodoc
abstract class $CurrentPlayerUpdatedCopyWith<$Res> {
  factory $CurrentPlayerUpdatedCopyWith(CurrentPlayerUpdated value,
          $Res Function(CurrentPlayerUpdated) then) =
      _$CurrentPlayerUpdatedCopyWithImpl<$Res>;
  $Res call({Player newPlayer});
}

/// @nodoc
class _$CurrentPlayerUpdatedCopyWithImpl<$Res>
    extends _$PlayerDisplayerEventCopyWithImpl<$Res>
    implements $CurrentPlayerUpdatedCopyWith<$Res> {
  _$CurrentPlayerUpdatedCopyWithImpl(
      CurrentPlayerUpdated _value, $Res Function(CurrentPlayerUpdated) _then)
      : super(_value, (v) => _then(v as CurrentPlayerUpdated));

  @override
  CurrentPlayerUpdated get _value => super._value as CurrentPlayerUpdated;

  @override
  $Res call({
    Object? newPlayer = freezed,
  }) {
    return _then(CurrentPlayerUpdated(
      newPlayer: newPlayer == freezed
          ? _value.newPlayer
          : newPlayer // ignore: cast_nullable_to_non_nullable
              as Player,
    ));
  }
}

/// @nodoc

class _$CurrentPlayerUpdated implements CurrentPlayerUpdated {
  const _$CurrentPlayerUpdated({required this.newPlayer});

  @override
  final Player newPlayer;

  @override
  String toString() {
    return 'PlayerDisplayerEvent.currentPlayerUpdated(newPlayer: $newPlayer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CurrentPlayerUpdated &&
            (identical(other.newPlayer, newPlayer) ||
                const DeepCollectionEquality()
                    .equals(other.newPlayer, newPlayer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newPlayer);

  @JsonKey(ignore: true)
  @override
  $CurrentPlayerUpdatedCopyWith<CurrentPlayerUpdated> get copyWith =>
      _$CurrentPlayerUpdatedCopyWithImpl<CurrentPlayerUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() previousPlayerPressed,
    required TResult Function() nextPlayerPressed,
    required TResult Function(Player newPlayer) currentPlayerUpdated,
  }) {
    return currentPlayerUpdated(newPlayer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? previousPlayerPressed,
    TResult Function()? nextPlayerPressed,
    TResult Function(Player newPlayer)? currentPlayerUpdated,
    required TResult orElse(),
  }) {
    if (currentPlayerUpdated != null) {
      return currentPlayerUpdated(newPlayer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviousPressed value) previousPlayerPressed,
    required TResult Function(NextPressed value) nextPlayerPressed,
    required TResult Function(CurrentPlayerUpdated value) currentPlayerUpdated,
  }) {
    return currentPlayerUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviousPressed value)? previousPlayerPressed,
    TResult Function(NextPressed value)? nextPlayerPressed,
    TResult Function(CurrentPlayerUpdated value)? currentPlayerUpdated,
    required TResult orElse(),
  }) {
    if (currentPlayerUpdated != null) {
      return currentPlayerUpdated(this);
    }
    return orElse();
  }
}

abstract class CurrentPlayerUpdated implements PlayerDisplayerEvent {
  const factory CurrentPlayerUpdated({required Player newPlayer}) =
      _$CurrentPlayerUpdated;

  Player get newPlayer => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentPlayerUpdatedCopyWith<CurrentPlayerUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PlayerDisplayerStateTearOff {
  const _$PlayerDisplayerStateTearOff();

  _PlayerDisplayerState call({required Player player}) {
    return _PlayerDisplayerState(
      player: player,
    );
  }
}

/// @nodoc
const $PlayerDisplayerState = _$PlayerDisplayerStateTearOff();

/// @nodoc
mixin _$PlayerDisplayerState {
  Player get player => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerDisplayerStateCopyWith<PlayerDisplayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerDisplayerStateCopyWith<$Res> {
  factory $PlayerDisplayerStateCopyWith(PlayerDisplayerState value,
          $Res Function(PlayerDisplayerState) then) =
      _$PlayerDisplayerStateCopyWithImpl<$Res>;
  $Res call({Player player});
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
    Object? player = freezed,
  }) {
    return _then(_value.copyWith(
      player: player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
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
  $Res call({Player player});
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
    Object? player = freezed,
  }) {
    return _then(_PlayerDisplayerState(
      player: player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
    ));
  }
}

/// @nodoc

class _$_PlayerDisplayerState implements _PlayerDisplayerState {
  const _$_PlayerDisplayerState({required this.player});

  @override
  final Player player;

  @override
  String toString() {
    return 'PlayerDisplayerState(player: $player)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayerDisplayerState &&
            (identical(other.player, player) ||
                const DeepCollectionEquality().equals(other.player, player)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(player);

  @JsonKey(ignore: true)
  @override
  _$PlayerDisplayerStateCopyWith<_PlayerDisplayerState> get copyWith =>
      __$PlayerDisplayerStateCopyWithImpl<_PlayerDisplayerState>(
          this, _$identity);
}

abstract class _PlayerDisplayerState implements PlayerDisplayerState {
  const factory _PlayerDisplayerState({required Player player}) =
      _$_PlayerDisplayerState;

  @override
  Player get player => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlayerDisplayerStateCopyWith<_PlayerDisplayerState> get copyWith =>
      throw _privateConstructorUsedError;
}
