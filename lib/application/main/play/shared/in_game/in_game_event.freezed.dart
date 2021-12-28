// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'in_game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InGameEventTearOff {
  const _$InGameEventTearOff();

  KeyBoardTypeChanged keyBoardTypeChanged(
      {required KeyBoardType newKeyBoardType}) {
    return KeyBoardTypeChanged(
      newKeyBoardType: newKeyBoardType,
    );
  }

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
}

/// @nodoc
const $InGameEvent = _$InGameEventTearOff();

/// @nodoc
mixin _$InGameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KeyBoardType newKeyBoardType) keyBoardTypeChanged,
    required TResult Function() gameCanceled,
    required TResult Function() undoThrowPressed,
    required TResult Function(Throw t) performThrowPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KeyBoardType newKeyBoardType)? keyBoardTypeChanged,
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KeyBoardType newKeyBoardType)? keyBoardTypeChanged,
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KeyBoardTypeChanged value) keyBoardTypeChanged,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(UndoThrowPressed value) undoThrowPressed,
    required TResult Function(PerformThrowPressed value) performThrowPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(KeyBoardTypeChanged value)? keyBoardTypeChanged,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KeyBoardTypeChanged value)? keyBoardTypeChanged,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
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
abstract class $KeyBoardTypeChangedCopyWith<$Res> {
  factory $KeyBoardTypeChangedCopyWith(
          KeyBoardTypeChanged value, $Res Function(KeyBoardTypeChanged) then) =
      _$KeyBoardTypeChangedCopyWithImpl<$Res>;
  $Res call({KeyBoardType newKeyBoardType});
}

/// @nodoc
class _$KeyBoardTypeChangedCopyWithImpl<$Res>
    extends _$InGameEventCopyWithImpl<$Res>
    implements $KeyBoardTypeChangedCopyWith<$Res> {
  _$KeyBoardTypeChangedCopyWithImpl(
      KeyBoardTypeChanged _value, $Res Function(KeyBoardTypeChanged) _then)
      : super(_value, (v) => _then(v as KeyBoardTypeChanged));

  @override
  KeyBoardTypeChanged get _value => super._value as KeyBoardTypeChanged;

  @override
  $Res call({
    Object? newKeyBoardType = freezed,
  }) {
    return _then(KeyBoardTypeChanged(
      newKeyBoardType: newKeyBoardType == freezed
          ? _value.newKeyBoardType
          : newKeyBoardType // ignore: cast_nullable_to_non_nullable
              as KeyBoardType,
    ));
  }
}

/// @nodoc

class _$KeyBoardTypeChanged implements KeyBoardTypeChanged {
  const _$KeyBoardTypeChanged({required this.newKeyBoardType});

  @override
  final KeyBoardType newKeyBoardType;

  @override
  String toString() {
    return 'InGameEvent.keyBoardTypeChanged(newKeyBoardType: $newKeyBoardType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KeyBoardTypeChanged &&
            const DeepCollectionEquality()
                .equals(other.newKeyBoardType, newKeyBoardType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newKeyBoardType));

  @JsonKey(ignore: true)
  @override
  $KeyBoardTypeChangedCopyWith<KeyBoardTypeChanged> get copyWith =>
      _$KeyBoardTypeChangedCopyWithImpl<KeyBoardTypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KeyBoardType newKeyBoardType) keyBoardTypeChanged,
    required TResult Function() gameCanceled,
    required TResult Function() undoThrowPressed,
    required TResult Function(Throw t) performThrowPressed,
  }) {
    return keyBoardTypeChanged(newKeyBoardType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KeyBoardType newKeyBoardType)? keyBoardTypeChanged,
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
  }) {
    return keyBoardTypeChanged?.call(newKeyBoardType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KeyBoardType newKeyBoardType)? keyBoardTypeChanged,
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
    required TResult orElse(),
  }) {
    if (keyBoardTypeChanged != null) {
      return keyBoardTypeChanged(newKeyBoardType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KeyBoardTypeChanged value) keyBoardTypeChanged,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(UndoThrowPressed value) undoThrowPressed,
    required TResult Function(PerformThrowPressed value) performThrowPressed,
  }) {
    return keyBoardTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(KeyBoardTypeChanged value)? keyBoardTypeChanged,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
  }) {
    return keyBoardTypeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KeyBoardTypeChanged value)? keyBoardTypeChanged,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    required TResult orElse(),
  }) {
    if (keyBoardTypeChanged != null) {
      return keyBoardTypeChanged(this);
    }
    return orElse();
  }
}

abstract class KeyBoardTypeChanged implements InGameEvent {
  const factory KeyBoardTypeChanged({required KeyBoardType newKeyBoardType}) =
      _$KeyBoardTypeChanged;

  KeyBoardType get newKeyBoardType;
  @JsonKey(ignore: true)
  $KeyBoardTypeChangedCopyWith<KeyBoardTypeChanged> get copyWith =>
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GameCanceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KeyBoardType newKeyBoardType) keyBoardTypeChanged,
    required TResult Function() gameCanceled,
    required TResult Function() undoThrowPressed,
    required TResult Function(Throw t) performThrowPressed,
  }) {
    return gameCanceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KeyBoardType newKeyBoardType)? keyBoardTypeChanged,
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
  }) {
    return gameCanceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KeyBoardType newKeyBoardType)? keyBoardTypeChanged,
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
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
    required TResult Function(KeyBoardTypeChanged value) keyBoardTypeChanged,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(UndoThrowPressed value) undoThrowPressed,
    required TResult Function(PerformThrowPressed value) performThrowPressed,
  }) {
    return gameCanceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(KeyBoardTypeChanged value)? keyBoardTypeChanged,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
  }) {
    return gameCanceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KeyBoardTypeChanged value)? keyBoardTypeChanged,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UndoThrowPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KeyBoardType newKeyBoardType) keyBoardTypeChanged,
    required TResult Function() gameCanceled,
    required TResult Function() undoThrowPressed,
    required TResult Function(Throw t) performThrowPressed,
  }) {
    return undoThrowPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KeyBoardType newKeyBoardType)? keyBoardTypeChanged,
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
  }) {
    return undoThrowPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KeyBoardType newKeyBoardType)? keyBoardTypeChanged,
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
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
    required TResult Function(KeyBoardTypeChanged value) keyBoardTypeChanged,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(UndoThrowPressed value) undoThrowPressed,
    required TResult Function(PerformThrowPressed value) performThrowPressed,
  }) {
    return undoThrowPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(KeyBoardTypeChanged value)? keyBoardTypeChanged,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
  }) {
    return undoThrowPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KeyBoardTypeChanged value)? keyBoardTypeChanged,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
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
        (other.runtimeType == runtimeType &&
            other is PerformThrowPressed &&
            const DeepCollectionEquality().equals(other.t, t));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(t));

  @JsonKey(ignore: true)
  @override
  $PerformThrowPressedCopyWith<PerformThrowPressed> get copyWith =>
      _$PerformThrowPressedCopyWithImpl<PerformThrowPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KeyBoardType newKeyBoardType) keyBoardTypeChanged,
    required TResult Function() gameCanceled,
    required TResult Function() undoThrowPressed,
    required TResult Function(Throw t) performThrowPressed,
  }) {
    return performThrowPressed(t);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KeyBoardType newKeyBoardType)? keyBoardTypeChanged,
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
  }) {
    return performThrowPressed?.call(t);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KeyBoardType newKeyBoardType)? keyBoardTypeChanged,
    TResult Function()? gameCanceled,
    TResult Function()? undoThrowPressed,
    TResult Function(Throw t)? performThrowPressed,
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
    required TResult Function(KeyBoardTypeChanged value) keyBoardTypeChanged,
    required TResult Function(GameCanceled value) gameCanceled,
    required TResult Function(UndoThrowPressed value) undoThrowPressed,
    required TResult Function(PerformThrowPressed value) performThrowPressed,
  }) {
    return performThrowPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(KeyBoardTypeChanged value)? keyBoardTypeChanged,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
  }) {
    return performThrowPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KeyBoardTypeChanged value)? keyBoardTypeChanged,
    TResult Function(GameCanceled value)? gameCanceled,
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
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

  Throw get t;
  @JsonKey(ignore: true)
  $PerformThrowPressedCopyWith<PerformThrowPressed> get copyWith =>
      throw _privateConstructorUsedError;
}
