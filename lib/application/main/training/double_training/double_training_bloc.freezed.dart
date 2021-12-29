// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'double_training_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DoubleTrainingEventTearOff {
  const _$DoubleTrainingEventTearOff();

  _DoubleTrainingModeChanged modeChanged({required Mode newMode}) {
    return _DoubleTrainingModeChanged(
      newMode: newMode,
    );
  }

  _DoubleTrainingPerformPressed performPressed() {
    return const _DoubleTrainingPerformPressed();
  }

  _DoubleTrainingUndoPressed undoPressed() {
    return const _DoubleTrainingUndoPressed();
  }

  _DoubleTrainingDoubleHitPressed doubleHitPressed() {
    return const _DoubleTrainingDoubleHitPressed();
  }

  _DoubleTrainingMissHitPressed missHitPressed() {
    return const _DoubleTrainingMissHitPressed();
  }
}

/// @nodoc
const $DoubleTrainingEvent = _$DoubleTrainingEventTearOff();

/// @nodoc
mixin _$DoubleTrainingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Mode newMode) modeChanged,
    required TResult Function() performPressed,
    required TResult Function() undoPressed,
    required TResult Function() doubleHitPressed,
    required TResult Function() missHitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Mode newMode)? modeChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function()? doubleHitPressed,
    TResult Function()? missHitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Mode newMode)? modeChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function()? doubleHitPressed,
    TResult Function()? missHitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoubleTrainingModeChanged value) modeChanged,
    required TResult Function(_DoubleTrainingPerformPressed value)
        performPressed,
    required TResult Function(_DoubleTrainingUndoPressed value) undoPressed,
    required TResult Function(_DoubleTrainingDoubleHitPressed value)
        doubleHitPressed,
    required TResult Function(_DoubleTrainingMissHitPressed value)
        missHitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DoubleTrainingModeChanged value)? modeChanged,
    TResult Function(_DoubleTrainingPerformPressed value)? performPressed,
    TResult Function(_DoubleTrainingUndoPressed value)? undoPressed,
    TResult Function(_DoubleTrainingDoubleHitPressed value)? doubleHitPressed,
    TResult Function(_DoubleTrainingMissHitPressed value)? missHitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoubleTrainingModeChanged value)? modeChanged,
    TResult Function(_DoubleTrainingPerformPressed value)? performPressed,
    TResult Function(_DoubleTrainingUndoPressed value)? undoPressed,
    TResult Function(_DoubleTrainingDoubleHitPressed value)? doubleHitPressed,
    TResult Function(_DoubleTrainingMissHitPressed value)? missHitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoubleTrainingEventCopyWith<$Res> {
  factory $DoubleTrainingEventCopyWith(
          DoubleTrainingEvent value, $Res Function(DoubleTrainingEvent) then) =
      _$DoubleTrainingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DoubleTrainingEventCopyWithImpl<$Res>
    implements $DoubleTrainingEventCopyWith<$Res> {
  _$DoubleTrainingEventCopyWithImpl(this._value, this._then);

  final DoubleTrainingEvent _value;
  // ignore: unused_field
  final $Res Function(DoubleTrainingEvent) _then;
}

/// @nodoc
abstract class _$DoubleTrainingModeChangedCopyWith<$Res> {
  factory _$DoubleTrainingModeChangedCopyWith(_DoubleTrainingModeChanged value,
          $Res Function(_DoubleTrainingModeChanged) then) =
      __$DoubleTrainingModeChangedCopyWithImpl<$Res>;
  $Res call({Mode newMode});
}

/// @nodoc
class __$DoubleTrainingModeChangedCopyWithImpl<$Res>
    extends _$DoubleTrainingEventCopyWithImpl<$Res>
    implements _$DoubleTrainingModeChangedCopyWith<$Res> {
  __$DoubleTrainingModeChangedCopyWithImpl(_DoubleTrainingModeChanged _value,
      $Res Function(_DoubleTrainingModeChanged) _then)
      : super(_value, (v) => _then(v as _DoubleTrainingModeChanged));

  @override
  _DoubleTrainingModeChanged get _value =>
      super._value as _DoubleTrainingModeChanged;

  @override
  $Res call({
    Object? newMode = freezed,
  }) {
    return _then(_DoubleTrainingModeChanged(
      newMode: newMode == freezed
          ? _value.newMode
          : newMode // ignore: cast_nullable_to_non_nullable
              as Mode,
    ));
  }
}

/// @nodoc

class _$_DoubleTrainingModeChanged implements _DoubleTrainingModeChanged {
  const _$_DoubleTrainingModeChanged({required this.newMode});

  @override
  final Mode newMode;

  @override
  String toString() {
    return 'DoubleTrainingEvent.modeChanged(newMode: $newMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DoubleTrainingModeChanged &&
            const DeepCollectionEquality().equals(other.newMode, newMode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newMode));

  @JsonKey(ignore: true)
  @override
  _$DoubleTrainingModeChangedCopyWith<_DoubleTrainingModeChanged>
      get copyWith =>
          __$DoubleTrainingModeChangedCopyWithImpl<_DoubleTrainingModeChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Mode newMode) modeChanged,
    required TResult Function() performPressed,
    required TResult Function() undoPressed,
    required TResult Function() doubleHitPressed,
    required TResult Function() missHitPressed,
  }) {
    return modeChanged(newMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Mode newMode)? modeChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function()? doubleHitPressed,
    TResult Function()? missHitPressed,
  }) {
    return modeChanged?.call(newMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Mode newMode)? modeChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function()? doubleHitPressed,
    TResult Function()? missHitPressed,
    required TResult orElse(),
  }) {
    if (modeChanged != null) {
      return modeChanged(newMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoubleTrainingModeChanged value) modeChanged,
    required TResult Function(_DoubleTrainingPerformPressed value)
        performPressed,
    required TResult Function(_DoubleTrainingUndoPressed value) undoPressed,
    required TResult Function(_DoubleTrainingDoubleHitPressed value)
        doubleHitPressed,
    required TResult Function(_DoubleTrainingMissHitPressed value)
        missHitPressed,
  }) {
    return modeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DoubleTrainingModeChanged value)? modeChanged,
    TResult Function(_DoubleTrainingPerformPressed value)? performPressed,
    TResult Function(_DoubleTrainingUndoPressed value)? undoPressed,
    TResult Function(_DoubleTrainingDoubleHitPressed value)? doubleHitPressed,
    TResult Function(_DoubleTrainingMissHitPressed value)? missHitPressed,
  }) {
    return modeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoubleTrainingModeChanged value)? modeChanged,
    TResult Function(_DoubleTrainingPerformPressed value)? performPressed,
    TResult Function(_DoubleTrainingUndoPressed value)? undoPressed,
    TResult Function(_DoubleTrainingDoubleHitPressed value)? doubleHitPressed,
    TResult Function(_DoubleTrainingMissHitPressed value)? missHitPressed,
    required TResult orElse(),
  }) {
    if (modeChanged != null) {
      return modeChanged(this);
    }
    return orElse();
  }
}

abstract class _DoubleTrainingModeChanged implements DoubleTrainingEvent {
  const factory _DoubleTrainingModeChanged({required Mode newMode}) =
      _$_DoubleTrainingModeChanged;

  Mode get newMode;
  @JsonKey(ignore: true)
  _$DoubleTrainingModeChangedCopyWith<_DoubleTrainingModeChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DoubleTrainingPerformPressedCopyWith<$Res> {
  factory _$DoubleTrainingPerformPressedCopyWith(
          _DoubleTrainingPerformPressed value,
          $Res Function(_DoubleTrainingPerformPressed) then) =
      __$DoubleTrainingPerformPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DoubleTrainingPerformPressedCopyWithImpl<$Res>
    extends _$DoubleTrainingEventCopyWithImpl<$Res>
    implements _$DoubleTrainingPerformPressedCopyWith<$Res> {
  __$DoubleTrainingPerformPressedCopyWithImpl(
      _DoubleTrainingPerformPressed _value,
      $Res Function(_DoubleTrainingPerformPressed) _then)
      : super(_value, (v) => _then(v as _DoubleTrainingPerformPressed));

  @override
  _DoubleTrainingPerformPressed get _value =>
      super._value as _DoubleTrainingPerformPressed;
}

/// @nodoc

class _$_DoubleTrainingPerformPressed implements _DoubleTrainingPerformPressed {
  const _$_DoubleTrainingPerformPressed();

  @override
  String toString() {
    return 'DoubleTrainingEvent.performPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DoubleTrainingPerformPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Mode newMode) modeChanged,
    required TResult Function() performPressed,
    required TResult Function() undoPressed,
    required TResult Function() doubleHitPressed,
    required TResult Function() missHitPressed,
  }) {
    return performPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Mode newMode)? modeChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function()? doubleHitPressed,
    TResult Function()? missHitPressed,
  }) {
    return performPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Mode newMode)? modeChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function()? doubleHitPressed,
    TResult Function()? missHitPressed,
    required TResult orElse(),
  }) {
    if (performPressed != null) {
      return performPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoubleTrainingModeChanged value) modeChanged,
    required TResult Function(_DoubleTrainingPerformPressed value)
        performPressed,
    required TResult Function(_DoubleTrainingUndoPressed value) undoPressed,
    required TResult Function(_DoubleTrainingDoubleHitPressed value)
        doubleHitPressed,
    required TResult Function(_DoubleTrainingMissHitPressed value)
        missHitPressed,
  }) {
    return performPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DoubleTrainingModeChanged value)? modeChanged,
    TResult Function(_DoubleTrainingPerformPressed value)? performPressed,
    TResult Function(_DoubleTrainingUndoPressed value)? undoPressed,
    TResult Function(_DoubleTrainingDoubleHitPressed value)? doubleHitPressed,
    TResult Function(_DoubleTrainingMissHitPressed value)? missHitPressed,
  }) {
    return performPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoubleTrainingModeChanged value)? modeChanged,
    TResult Function(_DoubleTrainingPerformPressed value)? performPressed,
    TResult Function(_DoubleTrainingUndoPressed value)? undoPressed,
    TResult Function(_DoubleTrainingDoubleHitPressed value)? doubleHitPressed,
    TResult Function(_DoubleTrainingMissHitPressed value)? missHitPressed,
    required TResult orElse(),
  }) {
    if (performPressed != null) {
      return performPressed(this);
    }
    return orElse();
  }
}

abstract class _DoubleTrainingPerformPressed implements DoubleTrainingEvent {
  const factory _DoubleTrainingPerformPressed() =
      _$_DoubleTrainingPerformPressed;
}

/// @nodoc
abstract class _$DoubleTrainingUndoPressedCopyWith<$Res> {
  factory _$DoubleTrainingUndoPressedCopyWith(_DoubleTrainingUndoPressed value,
          $Res Function(_DoubleTrainingUndoPressed) then) =
      __$DoubleTrainingUndoPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DoubleTrainingUndoPressedCopyWithImpl<$Res>
    extends _$DoubleTrainingEventCopyWithImpl<$Res>
    implements _$DoubleTrainingUndoPressedCopyWith<$Res> {
  __$DoubleTrainingUndoPressedCopyWithImpl(_DoubleTrainingUndoPressed _value,
      $Res Function(_DoubleTrainingUndoPressed) _then)
      : super(_value, (v) => _then(v as _DoubleTrainingUndoPressed));

  @override
  _DoubleTrainingUndoPressed get _value =>
      super._value as _DoubleTrainingUndoPressed;
}

/// @nodoc

class _$_DoubleTrainingUndoPressed implements _DoubleTrainingUndoPressed {
  const _$_DoubleTrainingUndoPressed();

  @override
  String toString() {
    return 'DoubleTrainingEvent.undoPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DoubleTrainingUndoPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Mode newMode) modeChanged,
    required TResult Function() performPressed,
    required TResult Function() undoPressed,
    required TResult Function() doubleHitPressed,
    required TResult Function() missHitPressed,
  }) {
    return undoPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Mode newMode)? modeChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function()? doubleHitPressed,
    TResult Function()? missHitPressed,
  }) {
    return undoPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Mode newMode)? modeChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function()? doubleHitPressed,
    TResult Function()? missHitPressed,
    required TResult orElse(),
  }) {
    if (undoPressed != null) {
      return undoPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoubleTrainingModeChanged value) modeChanged,
    required TResult Function(_DoubleTrainingPerformPressed value)
        performPressed,
    required TResult Function(_DoubleTrainingUndoPressed value) undoPressed,
    required TResult Function(_DoubleTrainingDoubleHitPressed value)
        doubleHitPressed,
    required TResult Function(_DoubleTrainingMissHitPressed value)
        missHitPressed,
  }) {
    return undoPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DoubleTrainingModeChanged value)? modeChanged,
    TResult Function(_DoubleTrainingPerformPressed value)? performPressed,
    TResult Function(_DoubleTrainingUndoPressed value)? undoPressed,
    TResult Function(_DoubleTrainingDoubleHitPressed value)? doubleHitPressed,
    TResult Function(_DoubleTrainingMissHitPressed value)? missHitPressed,
  }) {
    return undoPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoubleTrainingModeChanged value)? modeChanged,
    TResult Function(_DoubleTrainingPerformPressed value)? performPressed,
    TResult Function(_DoubleTrainingUndoPressed value)? undoPressed,
    TResult Function(_DoubleTrainingDoubleHitPressed value)? doubleHitPressed,
    TResult Function(_DoubleTrainingMissHitPressed value)? missHitPressed,
    required TResult orElse(),
  }) {
    if (undoPressed != null) {
      return undoPressed(this);
    }
    return orElse();
  }
}

abstract class _DoubleTrainingUndoPressed implements DoubleTrainingEvent {
  const factory _DoubleTrainingUndoPressed() = _$_DoubleTrainingUndoPressed;
}

/// @nodoc
abstract class _$DoubleTrainingDoubleHitPressedCopyWith<$Res> {
  factory _$DoubleTrainingDoubleHitPressedCopyWith(
          _DoubleTrainingDoubleHitPressed value,
          $Res Function(_DoubleTrainingDoubleHitPressed) then) =
      __$DoubleTrainingDoubleHitPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DoubleTrainingDoubleHitPressedCopyWithImpl<$Res>
    extends _$DoubleTrainingEventCopyWithImpl<$Res>
    implements _$DoubleTrainingDoubleHitPressedCopyWith<$Res> {
  __$DoubleTrainingDoubleHitPressedCopyWithImpl(
      _DoubleTrainingDoubleHitPressed _value,
      $Res Function(_DoubleTrainingDoubleHitPressed) _then)
      : super(_value, (v) => _then(v as _DoubleTrainingDoubleHitPressed));

  @override
  _DoubleTrainingDoubleHitPressed get _value =>
      super._value as _DoubleTrainingDoubleHitPressed;
}

/// @nodoc

class _$_DoubleTrainingDoubleHitPressed
    implements _DoubleTrainingDoubleHitPressed {
  const _$_DoubleTrainingDoubleHitPressed();

  @override
  String toString() {
    return 'DoubleTrainingEvent.doubleHitPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DoubleTrainingDoubleHitPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Mode newMode) modeChanged,
    required TResult Function() performPressed,
    required TResult Function() undoPressed,
    required TResult Function() doubleHitPressed,
    required TResult Function() missHitPressed,
  }) {
    return doubleHitPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Mode newMode)? modeChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function()? doubleHitPressed,
    TResult Function()? missHitPressed,
  }) {
    return doubleHitPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Mode newMode)? modeChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function()? doubleHitPressed,
    TResult Function()? missHitPressed,
    required TResult orElse(),
  }) {
    if (doubleHitPressed != null) {
      return doubleHitPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoubleTrainingModeChanged value) modeChanged,
    required TResult Function(_DoubleTrainingPerformPressed value)
        performPressed,
    required TResult Function(_DoubleTrainingUndoPressed value) undoPressed,
    required TResult Function(_DoubleTrainingDoubleHitPressed value)
        doubleHitPressed,
    required TResult Function(_DoubleTrainingMissHitPressed value)
        missHitPressed,
  }) {
    return doubleHitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DoubleTrainingModeChanged value)? modeChanged,
    TResult Function(_DoubleTrainingPerformPressed value)? performPressed,
    TResult Function(_DoubleTrainingUndoPressed value)? undoPressed,
    TResult Function(_DoubleTrainingDoubleHitPressed value)? doubleHitPressed,
    TResult Function(_DoubleTrainingMissHitPressed value)? missHitPressed,
  }) {
    return doubleHitPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoubleTrainingModeChanged value)? modeChanged,
    TResult Function(_DoubleTrainingPerformPressed value)? performPressed,
    TResult Function(_DoubleTrainingUndoPressed value)? undoPressed,
    TResult Function(_DoubleTrainingDoubleHitPressed value)? doubleHitPressed,
    TResult Function(_DoubleTrainingMissHitPressed value)? missHitPressed,
    required TResult orElse(),
  }) {
    if (doubleHitPressed != null) {
      return doubleHitPressed(this);
    }
    return orElse();
  }
}

abstract class _DoubleTrainingDoubleHitPressed implements DoubleTrainingEvent {
  const factory _DoubleTrainingDoubleHitPressed() =
      _$_DoubleTrainingDoubleHitPressed;
}

/// @nodoc
abstract class _$DoubleTrainingMissHitPressedCopyWith<$Res> {
  factory _$DoubleTrainingMissHitPressedCopyWith(
          _DoubleTrainingMissHitPressed value,
          $Res Function(_DoubleTrainingMissHitPressed) then) =
      __$DoubleTrainingMissHitPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DoubleTrainingMissHitPressedCopyWithImpl<$Res>
    extends _$DoubleTrainingEventCopyWithImpl<$Res>
    implements _$DoubleTrainingMissHitPressedCopyWith<$Res> {
  __$DoubleTrainingMissHitPressedCopyWithImpl(
      _DoubleTrainingMissHitPressed _value,
      $Res Function(_DoubleTrainingMissHitPressed) _then)
      : super(_value, (v) => _then(v as _DoubleTrainingMissHitPressed));

  @override
  _DoubleTrainingMissHitPressed get _value =>
      super._value as _DoubleTrainingMissHitPressed;
}

/// @nodoc

class _$_DoubleTrainingMissHitPressed implements _DoubleTrainingMissHitPressed {
  const _$_DoubleTrainingMissHitPressed();

  @override
  String toString() {
    return 'DoubleTrainingEvent.missHitPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DoubleTrainingMissHitPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Mode newMode) modeChanged,
    required TResult Function() performPressed,
    required TResult Function() undoPressed,
    required TResult Function() doubleHitPressed,
    required TResult Function() missHitPressed,
  }) {
    return missHitPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Mode newMode)? modeChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function()? doubleHitPressed,
    TResult Function()? missHitPressed,
  }) {
    return missHitPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Mode newMode)? modeChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function()? doubleHitPressed,
    TResult Function()? missHitPressed,
    required TResult orElse(),
  }) {
    if (missHitPressed != null) {
      return missHitPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoubleTrainingModeChanged value) modeChanged,
    required TResult Function(_DoubleTrainingPerformPressed value)
        performPressed,
    required TResult Function(_DoubleTrainingUndoPressed value) undoPressed,
    required TResult Function(_DoubleTrainingDoubleHitPressed value)
        doubleHitPressed,
    required TResult Function(_DoubleTrainingMissHitPressed value)
        missHitPressed,
  }) {
    return missHitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DoubleTrainingModeChanged value)? modeChanged,
    TResult Function(_DoubleTrainingPerformPressed value)? performPressed,
    TResult Function(_DoubleTrainingUndoPressed value)? undoPressed,
    TResult Function(_DoubleTrainingDoubleHitPressed value)? doubleHitPressed,
    TResult Function(_DoubleTrainingMissHitPressed value)? missHitPressed,
  }) {
    return missHitPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoubleTrainingModeChanged value)? modeChanged,
    TResult Function(_DoubleTrainingPerformPressed value)? performPressed,
    TResult Function(_DoubleTrainingUndoPressed value)? undoPressed,
    TResult Function(_DoubleTrainingDoubleHitPressed value)? doubleHitPressed,
    TResult Function(_DoubleTrainingMissHitPressed value)? missHitPressed,
    required TResult orElse(),
  }) {
    if (missHitPressed != null) {
      return missHitPressed(this);
    }
    return orElse();
  }
}

abstract class _DoubleTrainingMissHitPressed implements DoubleTrainingEvent {
  const factory _DoubleTrainingMissHitPressed() =
      _$_DoubleTrainingMissHitPressed;
}

/// @nodoc
class _$DoubleTrainingStateTearOff {
  const _$DoubleTrainingStateTearOff();

  DoubleTrainingInitial initial(
      {required KtList<Hit> hits, required Mode mode}) {
    return DoubleTrainingInitial(
      hits: hits,
      mode: mode,
    );
  }
}

/// @nodoc
const $DoubleTrainingState = _$DoubleTrainingStateTearOff();

/// @nodoc
mixin _$DoubleTrainingState {
  KtList<Hit> get hits => throw _privateConstructorUsedError;
  Mode get mode => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<Hit> hits, Mode mode) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<Hit> hits, Mode mode)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<Hit> hits, Mode mode)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DoubleTrainingInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DoubleTrainingInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DoubleTrainingInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoubleTrainingStateCopyWith<DoubleTrainingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoubleTrainingStateCopyWith<$Res> {
  factory $DoubleTrainingStateCopyWith(
          DoubleTrainingState value, $Res Function(DoubleTrainingState) then) =
      _$DoubleTrainingStateCopyWithImpl<$Res>;
  $Res call({KtList<Hit> hits, Mode mode});
}

/// @nodoc
class _$DoubleTrainingStateCopyWithImpl<$Res>
    implements $DoubleTrainingStateCopyWith<$Res> {
  _$DoubleTrainingStateCopyWithImpl(this._value, this._then);

  final DoubleTrainingState _value;
  // ignore: unused_field
  final $Res Function(DoubleTrainingState) _then;

  @override
  $Res call({
    Object? hits = freezed,
    Object? mode = freezed,
  }) {
    return _then(_value.copyWith(
      hits: hits == freezed
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as KtList<Hit>,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as Mode,
    ));
  }
}

/// @nodoc
abstract class $DoubleTrainingInitialCopyWith<$Res>
    implements $DoubleTrainingStateCopyWith<$Res> {
  factory $DoubleTrainingInitialCopyWith(DoubleTrainingInitial value,
          $Res Function(DoubleTrainingInitial) then) =
      _$DoubleTrainingInitialCopyWithImpl<$Res>;
  @override
  $Res call({KtList<Hit> hits, Mode mode});
}

/// @nodoc
class _$DoubleTrainingInitialCopyWithImpl<$Res>
    extends _$DoubleTrainingStateCopyWithImpl<$Res>
    implements $DoubleTrainingInitialCopyWith<$Res> {
  _$DoubleTrainingInitialCopyWithImpl(
      DoubleTrainingInitial _value, $Res Function(DoubleTrainingInitial) _then)
      : super(_value, (v) => _then(v as DoubleTrainingInitial));

  @override
  DoubleTrainingInitial get _value => super._value as DoubleTrainingInitial;

  @override
  $Res call({
    Object? hits = freezed,
    Object? mode = freezed,
  }) {
    return _then(DoubleTrainingInitial(
      hits: hits == freezed
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as KtList<Hit>,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as Mode,
    ));
  }
}

/// @nodoc

class _$DoubleTrainingInitial implements DoubleTrainingInitial {
  const _$DoubleTrainingInitial({required this.hits, required this.mode});

  @override
  final KtList<Hit> hits;
  @override
  final Mode mode;

  @override
  String toString() {
    return 'DoubleTrainingState.initial(hits: $hits, mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DoubleTrainingInitial &&
            const DeepCollectionEquality().equals(other.hits, hits) &&
            const DeepCollectionEquality().equals(other.mode, mode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hits),
      const DeepCollectionEquality().hash(mode));

  @JsonKey(ignore: true)
  @override
  $DoubleTrainingInitialCopyWith<DoubleTrainingInitial> get copyWith =>
      _$DoubleTrainingInitialCopyWithImpl<DoubleTrainingInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<Hit> hits, Mode mode) initial,
  }) {
    return initial(hits, mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<Hit> hits, Mode mode)? initial,
  }) {
    return initial?.call(hits, mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<Hit> hits, Mode mode)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(hits, mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DoubleTrainingInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DoubleTrainingInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DoubleTrainingInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DoubleTrainingInitial implements DoubleTrainingState {
  const factory DoubleTrainingInitial(
      {required KtList<Hit> hits,
      required Mode mode}) = _$DoubleTrainingInitial;

  @override
  KtList<Hit> get hits;
  @override
  Mode get mode;
  @override
  @JsonKey(ignore: true)
  $DoubleTrainingInitialCopyWith<DoubleTrainingInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
