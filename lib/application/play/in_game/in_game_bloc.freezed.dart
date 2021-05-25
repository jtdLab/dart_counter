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

  _WatchDataStarted watchDataStarted() {
    return const _WatchDataStarted();
  }

  _SnapshotReceived snapshotReceived({required Game game}) {
    return _SnapshotReceived(
      game: game,
    );
  }

  _CancelPressed cancelPressed() {
    return const _CancelPressed();
  }

  _UndoThrowPressed undoThrowPressed() {
    return const _UndoThrowPressed();
  }

  _PerformThrowPressed performThrowPressed({required Throw t}) {
    return _PerformThrowPressed(
      t: t,
    );
  }

  _CheckPressed checkPressed() {
    return const _CheckPressed();
  }

  _ErasePressed erasePressed() {
    return const _ErasePressed();
  }

  _DigitPressed digitPressed({required int digit}) {
    return _DigitPressed(
      digit: digit,
    );
  }
}

/// @nodoc
const $InGameEvent = _$InGameEventTearOff();

/// @nodoc
mixin _$InGameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(Game game) snapshotReceived,
    required TResult Function() cancelPressed,
    required TResult Function() undoThrowPressed,
    required TResult Function(Throw t) performThrowPressed,
    required TResult Function() checkPressed,
    required TResult Function() erasePressed,
    required TResult Function(int digit) digitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(Game game)? snapshotReceived,
    TResult Function()? cancelPressed,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function()? checkPressed,
    TResult Function()? erasePressed,
    TResult Function(int digit)? digitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
    required TResult Function(_CancelPressed value) cancelPressed,
    required TResult Function(_UndoThrowPressed value) undoThrowPressed,
    required TResult Function(_PerformThrowPressed value) performThrowPressed,
    required TResult Function(_CheckPressed value) checkPressed,
    required TResult Function(_ErasePressed value) erasePressed,
    required TResult Function(_DigitPressed value) digitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    TResult Function(_CancelPressed value)? cancelPressed,
    TResult Function(_UndoThrowPressed value)? undoThrowPressed,
    TResult Function(_PerformThrowPressed value)? performThrowPressed,
    TResult Function(_CheckPressed value)? checkPressed,
    TResult Function(_ErasePressed value)? erasePressed,
    TResult Function(_DigitPressed value)? digitPressed,
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
abstract class _$WatchDataStartedCopyWith<$Res> {
  factory _$WatchDataStartedCopyWith(
          _WatchDataStarted value, $Res Function(_WatchDataStarted) then) =
      __$WatchDataStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchDataStartedCopyWithImpl<$Res>
    extends _$InGameEventCopyWithImpl<$Res>
    implements _$WatchDataStartedCopyWith<$Res> {
  __$WatchDataStartedCopyWithImpl(
      _WatchDataStarted _value, $Res Function(_WatchDataStarted) _then)
      : super(_value, (v) => _then(v as _WatchDataStarted));

  @override
  _WatchDataStarted get _value => super._value as _WatchDataStarted;
}

/// @nodoc
class _$_WatchDataStarted implements _WatchDataStarted {
  const _$_WatchDataStarted();

  @override
  String toString() {
    return 'InGameEvent.watchDataStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchDataStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(Game game) snapshotReceived,
    required TResult Function() cancelPressed,
    required TResult Function() undoThrowPressed,
    required TResult Function(Throw t) performThrowPressed,
    required TResult Function() checkPressed,
    required TResult Function() erasePressed,
    required TResult Function(int digit) digitPressed,
  }) {
    return watchDataStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(Game game)? snapshotReceived,
    TResult Function()? cancelPressed,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function()? checkPressed,
    TResult Function()? erasePressed,
    TResult Function(int digit)? digitPressed,
    required TResult orElse(),
  }) {
    if (watchDataStarted != null) {
      return watchDataStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
    required TResult Function(_CancelPressed value) cancelPressed,
    required TResult Function(_UndoThrowPressed value) undoThrowPressed,
    required TResult Function(_PerformThrowPressed value) performThrowPressed,
    required TResult Function(_CheckPressed value) checkPressed,
    required TResult Function(_ErasePressed value) erasePressed,
    required TResult Function(_DigitPressed value) digitPressed,
  }) {
    return watchDataStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    TResult Function(_CancelPressed value)? cancelPressed,
    TResult Function(_UndoThrowPressed value)? undoThrowPressed,
    TResult Function(_PerformThrowPressed value)? performThrowPressed,
    TResult Function(_CheckPressed value)? checkPressed,
    TResult Function(_ErasePressed value)? erasePressed,
    TResult Function(_DigitPressed value)? digitPressed,
    required TResult orElse(),
  }) {
    if (watchDataStarted != null) {
      return watchDataStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchDataStarted implements InGameEvent {
  const factory _WatchDataStarted() = _$_WatchDataStarted;
}

/// @nodoc
abstract class _$SnapshotReceivedCopyWith<$Res> {
  factory _$SnapshotReceivedCopyWith(
          _SnapshotReceived value, $Res Function(_SnapshotReceived) then) =
      __$SnapshotReceivedCopyWithImpl<$Res>;
  $Res call({Game game});

  $GameCopyWith<$Res> get game;
}

/// @nodoc
class __$SnapshotReceivedCopyWithImpl<$Res>
    extends _$InGameEventCopyWithImpl<$Res>
    implements _$SnapshotReceivedCopyWith<$Res> {
  __$SnapshotReceivedCopyWithImpl(
      _SnapshotReceived _value, $Res Function(_SnapshotReceived) _then)
      : super(_value, (v) => _then(v as _SnapshotReceived));

  @override
  _SnapshotReceived get _value => super._value as _SnapshotReceived;

  @override
  $Res call({
    Object? game = freezed,
  }) {
    return _then(_SnapshotReceived(
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
class _$_SnapshotReceived implements _SnapshotReceived {
  const _$_SnapshotReceived({required this.game});

  @override
  final Game game;

  @override
  String toString() {
    return 'InGameEvent.snapshotReceived(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SnapshotReceived &&
            (identical(other.game, game) ||
                const DeepCollectionEquality().equals(other.game, game)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(game);

  @JsonKey(ignore: true)
  @override
  _$SnapshotReceivedCopyWith<_SnapshotReceived> get copyWith =>
      __$SnapshotReceivedCopyWithImpl<_SnapshotReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(Game game) snapshotReceived,
    required TResult Function() cancelPressed,
    required TResult Function() undoThrowPressed,
    required TResult Function(Throw t) performThrowPressed,
    required TResult Function() checkPressed,
    required TResult Function() erasePressed,
    required TResult Function(int digit) digitPressed,
  }) {
    return snapshotReceived(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(Game game)? snapshotReceived,
    TResult Function()? cancelPressed,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function()? checkPressed,
    TResult Function()? erasePressed,
    TResult Function(int digit)? digitPressed,
    required TResult orElse(),
  }) {
    if (snapshotReceived != null) {
      return snapshotReceived(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
    required TResult Function(_CancelPressed value) cancelPressed,
    required TResult Function(_UndoThrowPressed value) undoThrowPressed,
    required TResult Function(_PerformThrowPressed value) performThrowPressed,
    required TResult Function(_CheckPressed value) checkPressed,
    required TResult Function(_ErasePressed value) erasePressed,
    required TResult Function(_DigitPressed value) digitPressed,
  }) {
    return snapshotReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    TResult Function(_CancelPressed value)? cancelPressed,
    TResult Function(_UndoThrowPressed value)? undoThrowPressed,
    TResult Function(_PerformThrowPressed value)? performThrowPressed,
    TResult Function(_CheckPressed value)? checkPressed,
    TResult Function(_ErasePressed value)? erasePressed,
    TResult Function(_DigitPressed value)? digitPressed,
    required TResult orElse(),
  }) {
    if (snapshotReceived != null) {
      return snapshotReceived(this);
    }
    return orElse();
  }
}

abstract class _SnapshotReceived implements InGameEvent {
  const factory _SnapshotReceived({required Game game}) = _$_SnapshotReceived;

  Game get game => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SnapshotReceivedCopyWith<_SnapshotReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CancelPressedCopyWith<$Res> {
  factory _$CancelPressedCopyWith(
          _CancelPressed value, $Res Function(_CancelPressed) then) =
      __$CancelPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelPressedCopyWithImpl<$Res> extends _$InGameEventCopyWithImpl<$Res>
    implements _$CancelPressedCopyWith<$Res> {
  __$CancelPressedCopyWithImpl(
      _CancelPressed _value, $Res Function(_CancelPressed) _then)
      : super(_value, (v) => _then(v as _CancelPressed));

  @override
  _CancelPressed get _value => super._value as _CancelPressed;
}

/// @nodoc
class _$_CancelPressed implements _CancelPressed {
  const _$_CancelPressed();

  @override
  String toString() {
    return 'InGameEvent.cancelPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CancelPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(Game game) snapshotReceived,
    required TResult Function() cancelPressed,
    required TResult Function() undoThrowPressed,
    required TResult Function(Throw t) performThrowPressed,
    required TResult Function() checkPressed,
    required TResult Function() erasePressed,
    required TResult Function(int digit) digitPressed,
  }) {
    return cancelPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(Game game)? snapshotReceived,
    TResult Function()? cancelPressed,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function()? checkPressed,
    TResult Function()? erasePressed,
    TResult Function(int digit)? digitPressed,
    required TResult orElse(),
  }) {
    if (cancelPressed != null) {
      return cancelPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
    required TResult Function(_CancelPressed value) cancelPressed,
    required TResult Function(_UndoThrowPressed value) undoThrowPressed,
    required TResult Function(_PerformThrowPressed value) performThrowPressed,
    required TResult Function(_CheckPressed value) checkPressed,
    required TResult Function(_ErasePressed value) erasePressed,
    required TResult Function(_DigitPressed value) digitPressed,
  }) {
    return cancelPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    TResult Function(_CancelPressed value)? cancelPressed,
    TResult Function(_UndoThrowPressed value)? undoThrowPressed,
    TResult Function(_PerformThrowPressed value)? performThrowPressed,
    TResult Function(_CheckPressed value)? checkPressed,
    TResult Function(_ErasePressed value)? erasePressed,
    TResult Function(_DigitPressed value)? digitPressed,
    required TResult orElse(),
  }) {
    if (cancelPressed != null) {
      return cancelPressed(this);
    }
    return orElse();
  }
}

abstract class _CancelPressed implements InGameEvent {
  const factory _CancelPressed() = _$_CancelPressed;
}

/// @nodoc
abstract class _$UndoThrowPressedCopyWith<$Res> {
  factory _$UndoThrowPressedCopyWith(
          _UndoThrowPressed value, $Res Function(_UndoThrowPressed) then) =
      __$UndoThrowPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UndoThrowPressedCopyWithImpl<$Res>
    extends _$InGameEventCopyWithImpl<$Res>
    implements _$UndoThrowPressedCopyWith<$Res> {
  __$UndoThrowPressedCopyWithImpl(
      _UndoThrowPressed _value, $Res Function(_UndoThrowPressed) _then)
      : super(_value, (v) => _then(v as _UndoThrowPressed));

  @override
  _UndoThrowPressed get _value => super._value as _UndoThrowPressed;
}

/// @nodoc
class _$_UndoThrowPressed implements _UndoThrowPressed {
  const _$_UndoThrowPressed();

  @override
  String toString() {
    return 'InGameEvent.undoThrowPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UndoThrowPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(Game game) snapshotReceived,
    required TResult Function() cancelPressed,
    required TResult Function() undoThrowPressed,
    required TResult Function(Throw t) performThrowPressed,
    required TResult Function() checkPressed,
    required TResult Function() erasePressed,
    required TResult Function(int digit) digitPressed,
  }) {
    return undoThrowPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(Game game)? snapshotReceived,
    TResult Function()? cancelPressed,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function()? checkPressed,
    TResult Function()? erasePressed,
    TResult Function(int digit)? digitPressed,
    required TResult orElse(),
  }) {
    if (undoThrowPressed != null) {
      return undoThrowPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
    required TResult Function(_CancelPressed value) cancelPressed,
    required TResult Function(_UndoThrowPressed value) undoThrowPressed,
    required TResult Function(_PerformThrowPressed value) performThrowPressed,
    required TResult Function(_CheckPressed value) checkPressed,
    required TResult Function(_ErasePressed value) erasePressed,
    required TResult Function(_DigitPressed value) digitPressed,
  }) {
    return undoThrowPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    TResult Function(_CancelPressed value)? cancelPressed,
    TResult Function(_UndoThrowPressed value)? undoThrowPressed,
    TResult Function(_PerformThrowPressed value)? performThrowPressed,
    TResult Function(_CheckPressed value)? checkPressed,
    TResult Function(_ErasePressed value)? erasePressed,
    TResult Function(_DigitPressed value)? digitPressed,
    required TResult orElse(),
  }) {
    if (undoThrowPressed != null) {
      return undoThrowPressed(this);
    }
    return orElse();
  }
}

abstract class _UndoThrowPressed implements InGameEvent {
  const factory _UndoThrowPressed() = _$_UndoThrowPressed;
}

/// @nodoc
abstract class _$PerformThrowPressedCopyWith<$Res> {
  factory _$PerformThrowPressedCopyWith(_PerformThrowPressed value,
          $Res Function(_PerformThrowPressed) then) =
      __$PerformThrowPressedCopyWithImpl<$Res>;
  $Res call({Throw t});

  $ThrowCopyWith<$Res> get t;
}

/// @nodoc
class __$PerformThrowPressedCopyWithImpl<$Res>
    extends _$InGameEventCopyWithImpl<$Res>
    implements _$PerformThrowPressedCopyWith<$Res> {
  __$PerformThrowPressedCopyWithImpl(
      _PerformThrowPressed _value, $Res Function(_PerformThrowPressed) _then)
      : super(_value, (v) => _then(v as _PerformThrowPressed));

  @override
  _PerformThrowPressed get _value => super._value as _PerformThrowPressed;

  @override
  $Res call({
    Object? t = freezed,
  }) {
    return _then(_PerformThrowPressed(
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
class _$_PerformThrowPressed implements _PerformThrowPressed {
  const _$_PerformThrowPressed({required this.t});

  @override
  final Throw t;

  @override
  String toString() {
    return 'InGameEvent.performThrowPressed(t: $t)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PerformThrowPressed &&
            (identical(other.t, t) ||
                const DeepCollectionEquality().equals(other.t, t)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(t);

  @JsonKey(ignore: true)
  @override
  _$PerformThrowPressedCopyWith<_PerformThrowPressed> get copyWith =>
      __$PerformThrowPressedCopyWithImpl<_PerformThrowPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(Game game) snapshotReceived,
    required TResult Function() cancelPressed,
    required TResult Function() undoThrowPressed,
    required TResult Function(Throw t) performThrowPressed,
    required TResult Function() checkPressed,
    required TResult Function() erasePressed,
    required TResult Function(int digit) digitPressed,
  }) {
    return performThrowPressed(t);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(Game game)? snapshotReceived,
    TResult Function()? cancelPressed,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function()? checkPressed,
    TResult Function()? erasePressed,
    TResult Function(int digit)? digitPressed,
    required TResult orElse(),
  }) {
    if (performThrowPressed != null) {
      return performThrowPressed(t);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
    required TResult Function(_CancelPressed value) cancelPressed,
    required TResult Function(_UndoThrowPressed value) undoThrowPressed,
    required TResult Function(_PerformThrowPressed value) performThrowPressed,
    required TResult Function(_CheckPressed value) checkPressed,
    required TResult Function(_ErasePressed value) erasePressed,
    required TResult Function(_DigitPressed value) digitPressed,
  }) {
    return performThrowPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    TResult Function(_CancelPressed value)? cancelPressed,
    TResult Function(_UndoThrowPressed value)? undoThrowPressed,
    TResult Function(_PerformThrowPressed value)? performThrowPressed,
    TResult Function(_CheckPressed value)? checkPressed,
    TResult Function(_ErasePressed value)? erasePressed,
    TResult Function(_DigitPressed value)? digitPressed,
    required TResult orElse(),
  }) {
    if (performThrowPressed != null) {
      return performThrowPressed(this);
    }
    return orElse();
  }
}

abstract class _PerformThrowPressed implements InGameEvent {
  const factory _PerformThrowPressed({required Throw t}) =
      _$_PerformThrowPressed;

  Throw get t => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PerformThrowPressedCopyWith<_PerformThrowPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CheckPressedCopyWith<$Res> {
  factory _$CheckPressedCopyWith(
          _CheckPressed value, $Res Function(_CheckPressed) then) =
      __$CheckPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckPressedCopyWithImpl<$Res> extends _$InGameEventCopyWithImpl<$Res>
    implements _$CheckPressedCopyWith<$Res> {
  __$CheckPressedCopyWithImpl(
      _CheckPressed _value, $Res Function(_CheckPressed) _then)
      : super(_value, (v) => _then(v as _CheckPressed));

  @override
  _CheckPressed get _value => super._value as _CheckPressed;
}

/// @nodoc
class _$_CheckPressed implements _CheckPressed {
  const _$_CheckPressed();

  @override
  String toString() {
    return 'InGameEvent.checkPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(Game game) snapshotReceived,
    required TResult Function() cancelPressed,
    required TResult Function() undoThrowPressed,
    required TResult Function(Throw t) performThrowPressed,
    required TResult Function() checkPressed,
    required TResult Function() erasePressed,
    required TResult Function(int digit) digitPressed,
  }) {
    return checkPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(Game game)? snapshotReceived,
    TResult Function()? cancelPressed,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function()? checkPressed,
    TResult Function()? erasePressed,
    TResult Function(int digit)? digitPressed,
    required TResult orElse(),
  }) {
    if (checkPressed != null) {
      return checkPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
    required TResult Function(_CancelPressed value) cancelPressed,
    required TResult Function(_UndoThrowPressed value) undoThrowPressed,
    required TResult Function(_PerformThrowPressed value) performThrowPressed,
    required TResult Function(_CheckPressed value) checkPressed,
    required TResult Function(_ErasePressed value) erasePressed,
    required TResult Function(_DigitPressed value) digitPressed,
  }) {
    return checkPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    TResult Function(_CancelPressed value)? cancelPressed,
    TResult Function(_UndoThrowPressed value)? undoThrowPressed,
    TResult Function(_PerformThrowPressed value)? performThrowPressed,
    TResult Function(_CheckPressed value)? checkPressed,
    TResult Function(_ErasePressed value)? erasePressed,
    TResult Function(_DigitPressed value)? digitPressed,
    required TResult orElse(),
  }) {
    if (checkPressed != null) {
      return checkPressed(this);
    }
    return orElse();
  }
}

abstract class _CheckPressed implements InGameEvent {
  const factory _CheckPressed() = _$_CheckPressed;
}

/// @nodoc
abstract class _$ErasePressedCopyWith<$Res> {
  factory _$ErasePressedCopyWith(
          _ErasePressed value, $Res Function(_ErasePressed) then) =
      __$ErasePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErasePressedCopyWithImpl<$Res> extends _$InGameEventCopyWithImpl<$Res>
    implements _$ErasePressedCopyWith<$Res> {
  __$ErasePressedCopyWithImpl(
      _ErasePressed _value, $Res Function(_ErasePressed) _then)
      : super(_value, (v) => _then(v as _ErasePressed));

  @override
  _ErasePressed get _value => super._value as _ErasePressed;
}

/// @nodoc
class _$_ErasePressed implements _ErasePressed {
  const _$_ErasePressed();

  @override
  String toString() {
    return 'InGameEvent.erasePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ErasePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(Game game) snapshotReceived,
    required TResult Function() cancelPressed,
    required TResult Function() undoThrowPressed,
    required TResult Function(Throw t) performThrowPressed,
    required TResult Function() checkPressed,
    required TResult Function() erasePressed,
    required TResult Function(int digit) digitPressed,
  }) {
    return erasePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(Game game)? snapshotReceived,
    TResult Function()? cancelPressed,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function()? checkPressed,
    TResult Function()? erasePressed,
    TResult Function(int digit)? digitPressed,
    required TResult orElse(),
  }) {
    if (erasePressed != null) {
      return erasePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
    required TResult Function(_CancelPressed value) cancelPressed,
    required TResult Function(_UndoThrowPressed value) undoThrowPressed,
    required TResult Function(_PerformThrowPressed value) performThrowPressed,
    required TResult Function(_CheckPressed value) checkPressed,
    required TResult Function(_ErasePressed value) erasePressed,
    required TResult Function(_DigitPressed value) digitPressed,
  }) {
    return erasePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    TResult Function(_CancelPressed value)? cancelPressed,
    TResult Function(_UndoThrowPressed value)? undoThrowPressed,
    TResult Function(_PerformThrowPressed value)? performThrowPressed,
    TResult Function(_CheckPressed value)? checkPressed,
    TResult Function(_ErasePressed value)? erasePressed,
    TResult Function(_DigitPressed value)? digitPressed,
    required TResult orElse(),
  }) {
    if (erasePressed != null) {
      return erasePressed(this);
    }
    return orElse();
  }
}

abstract class _ErasePressed implements InGameEvent {
  const factory _ErasePressed() = _$_ErasePressed;
}

/// @nodoc
abstract class _$DigitPressedCopyWith<$Res> {
  factory _$DigitPressedCopyWith(
          _DigitPressed value, $Res Function(_DigitPressed) then) =
      __$DigitPressedCopyWithImpl<$Res>;
  $Res call({int digit});
}

/// @nodoc
class __$DigitPressedCopyWithImpl<$Res> extends _$InGameEventCopyWithImpl<$Res>
    implements _$DigitPressedCopyWith<$Res> {
  __$DigitPressedCopyWithImpl(
      _DigitPressed _value, $Res Function(_DigitPressed) _then)
      : super(_value, (v) => _then(v as _DigitPressed));

  @override
  _DigitPressed get _value => super._value as _DigitPressed;

  @override
  $Res call({
    Object? digit = freezed,
  }) {
    return _then(_DigitPressed(
      digit: digit == freezed
          ? _value.digit
          : digit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_DigitPressed implements _DigitPressed {
  const _$_DigitPressed({required this.digit});

  @override
  final int digit;

  @override
  String toString() {
    return 'InGameEvent.digitPressed(digit: $digit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DigitPressed &&
            (identical(other.digit, digit) ||
                const DeepCollectionEquality().equals(other.digit, digit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(digit);

  @JsonKey(ignore: true)
  @override
  _$DigitPressedCopyWith<_DigitPressed> get copyWith =>
      __$DigitPressedCopyWithImpl<_DigitPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchDataStarted,
    required TResult Function(Game game) snapshotReceived,
    required TResult Function() cancelPressed,
    required TResult Function() undoThrowPressed,
    required TResult Function(Throw t) performThrowPressed,
    required TResult Function() checkPressed,
    required TResult Function() erasePressed,
    required TResult Function(int digit) digitPressed,
  }) {
    return digitPressed(digit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchDataStarted,
    TResult Function(Game game)? snapshotReceived,
    TResult Function()? cancelPressed,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function()? checkPressed,
    TResult Function()? erasePressed,
    TResult Function(int digit)? digitPressed,
    required TResult orElse(),
  }) {
    if (digitPressed != null) {
      return digitPressed(digit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDataStarted value) watchDataStarted,
    required TResult Function(_SnapshotReceived value) snapshotReceived,
    required TResult Function(_CancelPressed value) cancelPressed,
    required TResult Function(_UndoThrowPressed value) undoThrowPressed,
    required TResult Function(_PerformThrowPressed value) performThrowPressed,
    required TResult Function(_CheckPressed value) checkPressed,
    required TResult Function(_ErasePressed value) erasePressed,
    required TResult Function(_DigitPressed value) digitPressed,
  }) {
    return digitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDataStarted value)? watchDataStarted,
    TResult Function(_SnapshotReceived value)? snapshotReceived,
    TResult Function(_CancelPressed value)? cancelPressed,
    TResult Function(_UndoThrowPressed value)? undoThrowPressed,
    TResult Function(_PerformThrowPressed value)? performThrowPressed,
    TResult Function(_CheckPressed value)? checkPressed,
    TResult Function(_ErasePressed value)? erasePressed,
    TResult Function(_DigitPressed value)? digitPressed,
    required TResult orElse(),
  }) {
    if (digitPressed != null) {
      return digitPressed(this);
    }
    return orElse();
  }
}

abstract class _DigitPressed implements InGameEvent {
  const factory _DigitPressed({required int digit}) = _$_DigitPressed;

  int get digit => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DigitPressedCopyWith<_DigitPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InGameStateTearOff {
  const _$InGameStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Snapshot snapshot({required Game game}) {
    return _Snapshot(
      game: game,
    );
  }
}

/// @nodoc
const $InGameState = _$InGameStateTearOff();

/// @nodoc
mixin _$InGameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Game game) snapshot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Game game)? snapshot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Snapshot value) snapshot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Snapshot value)? snapshot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InGameStateCopyWith<$Res> {
  factory $InGameStateCopyWith(
          InGameState value, $Res Function(InGameState) then) =
      _$InGameStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InGameStateCopyWithImpl<$Res> implements $InGameStateCopyWith<$Res> {
  _$InGameStateCopyWithImpl(this._value, this._then);

  final InGameState _value;
  // ignore: unused_field
  final $Res Function(InGameState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$InGameStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'InGameState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Game game) snapshot,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Game game)? snapshot,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Snapshot value) snapshot,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Snapshot value)? snapshot,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements InGameState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SnapshotCopyWith<$Res> {
  factory _$SnapshotCopyWith(_Snapshot value, $Res Function(_Snapshot) then) =
      __$SnapshotCopyWithImpl<$Res>;
  $Res call({Game game});

  $GameCopyWith<$Res> get game;
}

/// @nodoc
class __$SnapshotCopyWithImpl<$Res> extends _$InGameStateCopyWithImpl<$Res>
    implements _$SnapshotCopyWith<$Res> {
  __$SnapshotCopyWithImpl(_Snapshot _value, $Res Function(_Snapshot) _then)
      : super(_value, (v) => _then(v as _Snapshot));

  @override
  _Snapshot get _value => super._value as _Snapshot;

  @override
  $Res call({
    Object? game = freezed,
  }) {
    return _then(_Snapshot(
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
class _$_Snapshot implements _Snapshot {
  const _$_Snapshot({required this.game});

  @override
  final Game game;

  @override
  String toString() {
    return 'InGameState.snapshot(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Snapshot &&
            (identical(other.game, game) ||
                const DeepCollectionEquality().equals(other.game, game)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(game);

  @JsonKey(ignore: true)
  @override
  _$SnapshotCopyWith<_Snapshot> get copyWith =>
      __$SnapshotCopyWithImpl<_Snapshot>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Game game) snapshot,
  }) {
    return snapshot(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Game game)? snapshot,
    required TResult orElse(),
  }) {
    if (snapshot != null) {
      return snapshot(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Snapshot value) snapshot,
  }) {
    return snapshot(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Snapshot value)? snapshot,
    required TResult orElse(),
  }) {
    if (snapshot != null) {
      return snapshot(this);
    }
    return orElse();
  }
}

abstract class _Snapshot implements InGameState {
  const factory _Snapshot({required Game game}) = _$_Snapshot;

  Game get game => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SnapshotCopyWith<_Snapshot> get copyWith =>
      throw _privateConstructorUsedError;
}
