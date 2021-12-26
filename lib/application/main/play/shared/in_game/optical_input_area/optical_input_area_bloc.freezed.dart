// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'optical_input_area_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OpticalInputAreaEventTearOff {
  const _$OpticalInputAreaEventTearOff();

  _DartPressed dartPressed({required DartType type, required int value}) {
    return _DartPressed(
      type: type,
      value: value,
    );
  }

  _UndoDartPressed undoDartPressed() {
    return const _UndoDartPressed();
  }
}

/// @nodoc
const $OpticalInputAreaEvent = _$OpticalInputAreaEventTearOff();

/// @nodoc
mixin _$OpticalInputAreaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DartType type, int value) dartPressed,
    required TResult Function() undoDartPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DartType type, int value)? dartPressed,
    TResult Function()? undoDartPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DartType type, int value)? dartPressed,
    TResult Function()? undoDartPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DartPressed value) dartPressed,
    required TResult Function(_UndoDartPressed value) undoDartPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DartPressed value)? dartPressed,
    TResult Function(_UndoDartPressed value)? undoDartPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DartPressed value)? dartPressed,
    TResult Function(_UndoDartPressed value)? undoDartPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpticalInputAreaEventCopyWith<$Res> {
  factory $OpticalInputAreaEventCopyWith(OpticalInputAreaEvent value,
          $Res Function(OpticalInputAreaEvent) then) =
      _$OpticalInputAreaEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OpticalInputAreaEventCopyWithImpl<$Res>
    implements $OpticalInputAreaEventCopyWith<$Res> {
  _$OpticalInputAreaEventCopyWithImpl(this._value, this._then);

  final OpticalInputAreaEvent _value;
  // ignore: unused_field
  final $Res Function(OpticalInputAreaEvent) _then;
}

/// @nodoc
abstract class _$DartPressedCopyWith<$Res> {
  factory _$DartPressedCopyWith(
          _DartPressed value, $Res Function(_DartPressed) then) =
      __$DartPressedCopyWithImpl<$Res>;
  $Res call({DartType type, int value});
}

/// @nodoc
class __$DartPressedCopyWithImpl<$Res>
    extends _$OpticalInputAreaEventCopyWithImpl<$Res>
    implements _$DartPressedCopyWith<$Res> {
  __$DartPressedCopyWithImpl(
      _DartPressed _value, $Res Function(_DartPressed) _then)
      : super(_value, (v) => _then(v as _DartPressed));

  @override
  _DartPressed get _value => super._value as _DartPressed;

  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_DartPressed(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DartType,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DartPressed implements _DartPressed {
  const _$_DartPressed({required this.type, required this.value});

  @override
  final DartType type;
  @override
  final int value;

  @override
  String toString() {
    return 'OpticalInputAreaEvent.dartPressed(type: $type, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DartPressed &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$DartPressedCopyWith<_DartPressed> get copyWith =>
      __$DartPressedCopyWithImpl<_DartPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DartType type, int value) dartPressed,
    required TResult Function() undoDartPressed,
  }) {
    return dartPressed(type, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DartType type, int value)? dartPressed,
    TResult Function()? undoDartPressed,
  }) {
    return dartPressed?.call(type, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DartType type, int value)? dartPressed,
    TResult Function()? undoDartPressed,
    required TResult orElse(),
  }) {
    if (dartPressed != null) {
      return dartPressed(type, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DartPressed value) dartPressed,
    required TResult Function(_UndoDartPressed value) undoDartPressed,
  }) {
    return dartPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DartPressed value)? dartPressed,
    TResult Function(_UndoDartPressed value)? undoDartPressed,
  }) {
    return dartPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DartPressed value)? dartPressed,
    TResult Function(_UndoDartPressed value)? undoDartPressed,
    required TResult orElse(),
  }) {
    if (dartPressed != null) {
      return dartPressed(this);
    }
    return orElse();
  }
}

abstract class _DartPressed implements OpticalInputAreaEvent {
  const factory _DartPressed({required DartType type, required int value}) =
      _$_DartPressed;

  DartType get type;
  int get value;
  @JsonKey(ignore: true)
  _$DartPressedCopyWith<_DartPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UndoDartPressedCopyWith<$Res> {
  factory _$UndoDartPressedCopyWith(
          _UndoDartPressed value, $Res Function(_UndoDartPressed) then) =
      __$UndoDartPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UndoDartPressedCopyWithImpl<$Res>
    extends _$OpticalInputAreaEventCopyWithImpl<$Res>
    implements _$UndoDartPressedCopyWith<$Res> {
  __$UndoDartPressedCopyWithImpl(
      _UndoDartPressed _value, $Res Function(_UndoDartPressed) _then)
      : super(_value, (v) => _then(v as _UndoDartPressed));

  @override
  _UndoDartPressed get _value => super._value as _UndoDartPressed;
}

/// @nodoc

class _$_UndoDartPressed implements _UndoDartPressed {
  const _$_UndoDartPressed();

  @override
  String toString() {
    return 'OpticalInputAreaEvent.undoDartPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UndoDartPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DartType type, int value) dartPressed,
    required TResult Function() undoDartPressed,
  }) {
    return undoDartPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DartType type, int value)? dartPressed,
    TResult Function()? undoDartPressed,
  }) {
    return undoDartPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DartType type, int value)? dartPressed,
    TResult Function()? undoDartPressed,
    required TResult orElse(),
  }) {
    if (undoDartPressed != null) {
      return undoDartPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DartPressed value) dartPressed,
    required TResult Function(_UndoDartPressed value) undoDartPressed,
  }) {
    return undoDartPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DartPressed value)? dartPressed,
    TResult Function(_UndoDartPressed value)? undoDartPressed,
  }) {
    return undoDartPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DartPressed value)? dartPressed,
    TResult Function(_UndoDartPressed value)? undoDartPressed,
    required TResult orElse(),
  }) {
    if (undoDartPressed != null) {
      return undoDartPressed(this);
    }
    return orElse();
  }
}

abstract class _UndoDartPressed implements OpticalInputAreaEvent {
  const factory _UndoDartPressed() = _$_UndoDartPressed;
}

/// @nodoc
class _$OpticalInputAreaStateTearOff {
  const _$OpticalInputAreaStateTearOff();

  OpticalInputAreaInitial initial() {
    return const OpticalInputAreaInitial();
  }
}

/// @nodoc
const $OpticalInputAreaState = _$OpticalInputAreaStateTearOff();

/// @nodoc
mixin _$OpticalInputAreaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpticalInputAreaInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpticalInputAreaInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpticalInputAreaInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpticalInputAreaStateCopyWith<$Res> {
  factory $OpticalInputAreaStateCopyWith(OpticalInputAreaState value,
          $Res Function(OpticalInputAreaState) then) =
      _$OpticalInputAreaStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OpticalInputAreaStateCopyWithImpl<$Res>
    implements $OpticalInputAreaStateCopyWith<$Res> {
  _$OpticalInputAreaStateCopyWithImpl(this._value, this._then);

  final OpticalInputAreaState _value;
  // ignore: unused_field
  final $Res Function(OpticalInputAreaState) _then;
}

/// @nodoc
abstract class $OpticalInputAreaInitialCopyWith<$Res> {
  factory $OpticalInputAreaInitialCopyWith(OpticalInputAreaInitial value,
          $Res Function(OpticalInputAreaInitial) then) =
      _$OpticalInputAreaInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$OpticalInputAreaInitialCopyWithImpl<$Res>
    extends _$OpticalInputAreaStateCopyWithImpl<$Res>
    implements $OpticalInputAreaInitialCopyWith<$Res> {
  _$OpticalInputAreaInitialCopyWithImpl(OpticalInputAreaInitial _value,
      $Res Function(OpticalInputAreaInitial) _then)
      : super(_value, (v) => _then(v as OpticalInputAreaInitial));

  @override
  OpticalInputAreaInitial get _value => super._value as OpticalInputAreaInitial;
}

/// @nodoc

class _$OpticalInputAreaInitial implements OpticalInputAreaInitial {
  const _$OpticalInputAreaInitial();

  @override
  String toString() {
    return 'OpticalInputAreaState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OpticalInputAreaInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
    required TResult Function(OpticalInputAreaInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpticalInputAreaInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpticalInputAreaInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class OpticalInputAreaInitial implements OpticalInputAreaState {
  const factory OpticalInputAreaInitial() = _$OpticalInputAreaInitial;
}
