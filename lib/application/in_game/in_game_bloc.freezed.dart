// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  GameCanceled gameCanceled() {
    return const GameCanceled();
  }

  UndoThrowPressed undoThrowPressed() {
    return const UndoThrowPressed();
  }

  PerformThrowPressed performThrowPressed({required Throw t}) {
    return PerformThrowPressed(
      t: t,
    );
  }

  InputChanged inputChanged({required int newInput}) {
    return InputChanged(
      newInput: newInput,
    );
  }

  GameReceived gameReceived({required GameSnapshot gameSnapshot}) {
    return GameReceived(
      gameSnapshot: gameSnapshot,
    );
  }
}

/// @nodoc
const $InGameEvent = _$InGameEventTearOff();

/// @nodoc
mixin _$InGameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function() undoThrowPressed,
    required TResult Function(Throw t) performThrowPressed,
    required TResult Function(int newInput) inputChanged,
    required TResult Function(GameSnapshot gameSnapshot) gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function(int newInput)? inputChanged,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function(int newInput)? inputChanged,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(UndoThrowPressed value) undoThrowPressed,
    required TResult Function(PerformThrowPressed value) performThrowPressed,
    required TResult Function(InputChanged value) inputChanged,
    required TResult Function(GameReceived value) gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(InputChanged value)? inputChanged,
    TResult Function(GameReceived value)? gameReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(InputChanged value)? inputChanged,
    TResult Function(GameReceived value)? gameReceived,
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
    required TResult Function() gameCanceled,
    required TResult Function() undoThrowPressed,
    required TResult Function(Throw t) performThrowPressed,
    required TResult Function(int newInput) inputChanged,
    required TResult Function(GameSnapshot gameSnapshot) gameReceived,
  }) {
    return gameCanceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function(int newInput)? inputChanged,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
  }) {
    return gameCanceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function(int newInput)? inputChanged,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
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
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(UndoThrowPressed value) undoThrowPressed,
    required TResult Function(PerformThrowPressed value) performThrowPressed,
    required TResult Function(InputChanged value) inputChanged,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return gameCanceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(InputChanged value)? inputChanged,
    TResult Function(GameReceived value)? gameReceived,
  }) {
    return gameCanceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(InputChanged value)? inputChanged,
    TResult Function(GameReceived value)? gameReceived,
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
abstract class $UndoThrowPressedCopyWith<$Res> {
  factory $UndoThrowPressedCopyWith(
          UndoThrowPressed value, $Res Function(UndoThrowPressed) then) =
      _$UndoThrowPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UndoThrowPressedCopyWithImpl<$Res>
    extends _$InGameEventCopyWithImpl<$Res>
    implements $UndoThrowPressedCopyWith<$Res> {
  _$UndoThrowPressedCopyWithImpl(
      UndoThrowPressed _value, $Res Function(UndoThrowPressed) _then)
      : super(_value, (v) => _then(v as UndoThrowPressed));

  @override
  UndoThrowPressed get _value => super._value as UndoThrowPressed;
}

/// @nodoc

class _$UndoThrowPressed implements UndoThrowPressed {
  const _$UndoThrowPressed();

  @override
  String toString() {
    return 'InGameEvent.undoThrowPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UndoThrowPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function() undoThrowPressed,
    required TResult Function(Throw t) performThrowPressed,
    required TResult Function(int newInput) inputChanged,
    required TResult Function(GameSnapshot gameSnapshot) gameReceived,
  }) {
    return undoThrowPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function(int newInput)? inputChanged,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
  }) {
    return undoThrowPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function(int newInput)? inputChanged,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
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
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(UndoThrowPressed value) undoThrowPressed,
    required TResult Function(PerformThrowPressed value) performThrowPressed,
    required TResult Function(InputChanged value) inputChanged,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return undoThrowPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(InputChanged value)? inputChanged,
    TResult Function(GameReceived value)? gameReceived,
  }) {
    return undoThrowPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(InputChanged value)? inputChanged,
    TResult Function(GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (undoThrowPressed != null) {
      return undoThrowPressed(this);
    }
    return orElse();
  }
}

abstract class UndoThrowPressed implements InGameEvent {
  const factory UndoThrowPressed() = _$UndoThrowPressed;
}

/// @nodoc
abstract class $PerformThrowPressedCopyWith<$Res> {
  factory $PerformThrowPressedCopyWith(
          PerformThrowPressed value, $Res Function(PerformThrowPressed) then) =
      _$PerformThrowPressedCopyWithImpl<$Res>;
  $Res call({Throw t});

  $ThrowCopyWith<$Res> get t;
}

/// @nodoc
class _$PerformThrowPressedCopyWithImpl<$Res>
    extends _$InGameEventCopyWithImpl<$Res>
    implements $PerformThrowPressedCopyWith<$Res> {
  _$PerformThrowPressedCopyWithImpl(
      PerformThrowPressed _value, $Res Function(PerformThrowPressed) _then)
      : super(_value, (v) => _then(v as PerformThrowPressed));

  @override
  PerformThrowPressed get _value => super._value as PerformThrowPressed;

  @override
  $Res call({
    Object? t = freezed,
  }) {
    return _then(PerformThrowPressed(
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

class _$PerformThrowPressed implements PerformThrowPressed {
  const _$PerformThrowPressed({required this.t});

  @override
  final Throw t;

  @override
  String toString() {
    return 'InGameEvent.performThrowPressed(t: $t)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PerformThrowPressed &&
            (identical(other.t, t) ||
                const DeepCollectionEquality().equals(other.t, t)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(t);

  @JsonKey(ignore: true)
  @override
  $PerformThrowPressedCopyWith<PerformThrowPressed> get copyWith =>
      _$PerformThrowPressedCopyWithImpl<PerformThrowPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function() undoThrowPressed,
    required TResult Function(Throw t) performThrowPressed,
    required TResult Function(int newInput) inputChanged,
    required TResult Function(GameSnapshot gameSnapshot) gameReceived,
  }) {
    return performThrowPressed(t);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function(int newInput)? inputChanged,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
  }) {
    return performThrowPressed?.call(t);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function(int newInput)? inputChanged,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
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
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(UndoThrowPressed value) undoThrowPressed,
    required TResult Function(PerformThrowPressed value) performThrowPressed,
    required TResult Function(InputChanged value) inputChanged,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return performThrowPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(InputChanged value)? inputChanged,
    TResult Function(GameReceived value)? gameReceived,
  }) {
    return performThrowPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(InputChanged value)? inputChanged,
    TResult Function(GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (performThrowPressed != null) {
      return performThrowPressed(this);
    }
    return orElse();
  }
}

abstract class PerformThrowPressed implements InGameEvent {
  const factory PerformThrowPressed({required Throw t}) = _$PerformThrowPressed;

  Throw get t => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformThrowPressedCopyWith<PerformThrowPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputChangedCopyWith<$Res> {
  factory $InputChangedCopyWith(
          InputChanged value, $Res Function(InputChanged) then) =
      _$InputChangedCopyWithImpl<$Res>;
  $Res call({int newInput});
}

/// @nodoc
class _$InputChangedCopyWithImpl<$Res> extends _$InGameEventCopyWithImpl<$Res>
    implements $InputChangedCopyWith<$Res> {
  _$InputChangedCopyWithImpl(
      InputChanged _value, $Res Function(InputChanged) _then)
      : super(_value, (v) => _then(v as InputChanged));

  @override
  InputChanged get _value => super._value as InputChanged;

  @override
  $Res call({
    Object? newInput = freezed,
  }) {
    return _then(InputChanged(
      newInput: newInput == freezed
          ? _value.newInput
          : newInput // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InputChanged implements InputChanged {
  const _$InputChanged({required this.newInput});

  @override
  final int newInput;

  @override
  String toString() {
    return 'InGameEvent.inputChanged(newInput: $newInput)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InputChanged &&
            (identical(other.newInput, newInput) ||
                const DeepCollectionEquality()
                    .equals(other.newInput, newInput)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newInput);

  @JsonKey(ignore: true)
  @override
  $InputChangedCopyWith<InputChanged> get copyWith =>
      _$InputChangedCopyWithImpl<InputChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function() undoThrowPressed,
    required TResult Function(Throw t) performThrowPressed,
    required TResult Function(int newInput) inputChanged,
    required TResult Function(GameSnapshot gameSnapshot) gameReceived,
  }) {
    return inputChanged(newInput);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function(int newInput)? inputChanged,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
  }) {
    return inputChanged?.call(newInput);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function(int newInput)? inputChanged,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
    required TResult orElse(),
  }) {
    if (inputChanged != null) {
      return inputChanged(newInput);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(UndoThrowPressed value) undoThrowPressed,
    required TResult Function(PerformThrowPressed value) performThrowPressed,
    required TResult Function(InputChanged value) inputChanged,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return inputChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(InputChanged value)? inputChanged,
    TResult Function(GameReceived value)? gameReceived,
  }) {
    return inputChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(InputChanged value)? inputChanged,
    TResult Function(GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (inputChanged != null) {
      return inputChanged(this);
    }
    return orElse();
  }
}

abstract class InputChanged implements InGameEvent {
  const factory InputChanged({required int newInput}) = _$InputChanged;

  int get newInput => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputChangedCopyWith<InputChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameReceivedCopyWith<$Res> {
  factory $GameReceivedCopyWith(
          GameReceived value, $Res Function(GameReceived) then) =
      _$GameReceivedCopyWithImpl<$Res>;
  $Res call({GameSnapshot gameSnapshot});
}

/// @nodoc
class _$GameReceivedCopyWithImpl<$Res> extends _$InGameEventCopyWithImpl<$Res>
    implements $GameReceivedCopyWith<$Res> {
  _$GameReceivedCopyWithImpl(
      GameReceived _value, $Res Function(GameReceived) _then)
      : super(_value, (v) => _then(v as GameReceived));

  @override
  GameReceived get _value => super._value as GameReceived;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
  }) {
    return _then(GameReceived(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as GameSnapshot,
    ));
  }
}

/// @nodoc

class _$GameReceived implements GameReceived {
  const _$GameReceived({required this.gameSnapshot});

  @override
  final GameSnapshot gameSnapshot;

  @override
  String toString() {
    return 'InGameEvent.gameReceived(gameSnapshot: $gameSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameReceived &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameSnapshot);

  @JsonKey(ignore: true)
  @override
  $GameReceivedCopyWith<GameReceived> get copyWith =>
      _$GameReceivedCopyWithImpl<GameReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameCanceled,
    required TResult Function() undoThrowPressed,
    required TResult Function(Throw t) performThrowPressed,
    required TResult Function(int newInput) inputChanged,
    required TResult Function(GameSnapshot gameSnapshot) gameReceived,
  }) {
    return gameReceived(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function(int newInput)? inputChanged,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
  }) {
    return gameReceived?.call(gameSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    TResult Function(int newInput)? inputChanged,
    TResult Function(GameSnapshot gameSnapshot)? gameReceived,
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
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(UndoThrowPressed value) undoThrowPressed,
    required TResult Function(PerformThrowPressed value) performThrowPressed,
    required TResult Function(InputChanged value) inputChanged,
    required TResult Function(GameReceived value) gameReceived,
  }) {
    return gameReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(InputChanged value)? inputChanged,
    TResult Function(GameReceived value)? gameReceived,
  }) {
    return gameReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(InputChanged value)? inputChanged,
    TResult Function(GameReceived value)? gameReceived,
    required TResult orElse(),
  }) {
    if (gameReceived != null) {
      return gameReceived(this);
    }
    return orElse();
  }
}

abstract class GameReceived implements InGameEvent {
  const factory GameReceived({required GameSnapshot gameSnapshot}) =
      _$GameReceived;

  GameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameReceivedCopyWith<GameReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InGameStateTearOff {
  const _$InGameStateTearOff();

  InGameInitial initial(
      {required GameSnapshot gameSnapshot, required int input}) {
    return InGameInitial(
      gameSnapshot: gameSnapshot,
      input: input,
    );
  }
}

/// @nodoc
const $InGameState = _$InGameStateTearOff();

/// @nodoc
mixin _$InGameState {
  GameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  int get input => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSnapshot gameSnapshot, int input) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GameSnapshot gameSnapshot, int input)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSnapshot gameSnapshot, int input)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InGameInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InGameInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InGameInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InGameStateCopyWith<InGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InGameStateCopyWith<$Res> {
  factory $InGameStateCopyWith(
          InGameState value, $Res Function(InGameState) then) =
      _$InGameStateCopyWithImpl<$Res>;
  $Res call({GameSnapshot gameSnapshot, int input});
}

/// @nodoc
class _$InGameStateCopyWithImpl<$Res> implements $InGameStateCopyWith<$Res> {
  _$InGameStateCopyWithImpl(this._value, this._then);

  final InGameState _value;
  // ignore: unused_field
  final $Res Function(InGameState) _then;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
    Object? input = freezed,
  }) {
    return _then(_value.copyWith(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as GameSnapshot,
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $InGameInitialCopyWith<$Res>
    implements $InGameStateCopyWith<$Res> {
  factory $InGameInitialCopyWith(
          InGameInitial value, $Res Function(InGameInitial) then) =
      _$InGameInitialCopyWithImpl<$Res>;
  @override
  $Res call({GameSnapshot gameSnapshot, int input});
}

/// @nodoc
class _$InGameInitialCopyWithImpl<$Res> extends _$InGameStateCopyWithImpl<$Res>
    implements $InGameInitialCopyWith<$Res> {
  _$InGameInitialCopyWithImpl(
      InGameInitial _value, $Res Function(InGameInitial) _then)
      : super(_value, (v) => _then(v as InGameInitial));

  @override
  InGameInitial get _value => super._value as InGameInitial;

  @override
  $Res call({
    Object? gameSnapshot = freezed,
    Object? input = freezed,
  }) {
    return _then(InGameInitial(
      gameSnapshot: gameSnapshot == freezed
          ? _value.gameSnapshot
          : gameSnapshot // ignore: cast_nullable_to_non_nullable
              as GameSnapshot,
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InGameInitial implements InGameInitial {
  const _$InGameInitial({required this.gameSnapshot, required this.input});

  @override
  final GameSnapshot gameSnapshot;
  @override
  final int input;

  @override
  String toString() {
    return 'InGameState.initial(gameSnapshot: $gameSnapshot, input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InGameInitial &&
            (identical(other.gameSnapshot, gameSnapshot) ||
                const DeepCollectionEquality()
                    .equals(other.gameSnapshot, gameSnapshot)) &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gameSnapshot) ^
      const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  $InGameInitialCopyWith<InGameInitial> get copyWith =>
      _$InGameInitialCopyWithImpl<InGameInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSnapshot gameSnapshot, int input) initial,
  }) {
    return initial(gameSnapshot, input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GameSnapshot gameSnapshot, int input)? initial,
  }) {
    return initial?.call(gameSnapshot, input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSnapshot gameSnapshot, int input)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(gameSnapshot, input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InGameInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InGameInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InGameInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InGameInitial implements InGameState {
  const factory InGameInitial(
      {required GameSnapshot gameSnapshot,
      required int input}) = _$InGameInitial;

  @override
  GameSnapshot get gameSnapshot => throw _privateConstructorUsedError;
  @override
  int get input => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InGameInitialCopyWith<InGameInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
