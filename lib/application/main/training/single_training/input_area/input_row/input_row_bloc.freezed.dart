// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'input_row_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InputRowEventTearOff {
  const _$InputRowEventTearOff();

  _UndoPressed undoPressed() {
    return const _UndoPressed();
  }

  _CommitPressed commitPressed() {
    return const _CommitPressed();
  }

  _InputChanged inputChanged({required int newInput}) {
    return _InputChanged(
      newInput: newInput,
    );
  }
}

/// @nodoc
const $InputRowEvent = _$InputRowEventTearOff();

/// @nodoc
mixin _$InputRowEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undoPressed,
    required TResult Function() commitPressed,
    required TResult Function(int newInput) inputChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undoPressed,
    TResult Function()? commitPressed,
    TResult Function(int newInput)? inputChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undoPressed,
    TResult Function()? commitPressed,
    TResult Function(int newInput)? inputChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UndoPressed value) undoPressed,
    required TResult Function(_CommitPressed value) commitPressed,
    required TResult Function(_InputChanged value) inputChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UndoPressed value)? undoPressed,
    TResult Function(_CommitPressed value)? commitPressed,
    TResult Function(_InputChanged value)? inputChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UndoPressed value)? undoPressed,
    TResult Function(_CommitPressed value)? commitPressed,
    TResult Function(_InputChanged value)? inputChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputRowEventCopyWith<$Res> {
  factory $InputRowEventCopyWith(
          InputRowEvent value, $Res Function(InputRowEvent) then) =
      _$InputRowEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InputRowEventCopyWithImpl<$Res>
    implements $InputRowEventCopyWith<$Res> {
  _$InputRowEventCopyWithImpl(this._value, this._then);

  final InputRowEvent _value;
  // ignore: unused_field
  final $Res Function(InputRowEvent) _then;
}

/// @nodoc
abstract class _$UndoPressedCopyWith<$Res> {
  factory _$UndoPressedCopyWith(
          _UndoPressed value, $Res Function(_UndoPressed) then) =
      __$UndoPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UndoPressedCopyWithImpl<$Res> extends _$InputRowEventCopyWithImpl<$Res>
    implements _$UndoPressedCopyWith<$Res> {
  __$UndoPressedCopyWithImpl(
      _UndoPressed _value, $Res Function(_UndoPressed) _then)
      : super(_value, (v) => _then(v as _UndoPressed));

  @override
  _UndoPressed get _value => super._value as _UndoPressed;
}

/// @nodoc

class _$_UndoPressed implements _UndoPressed {
  const _$_UndoPressed();

  @override
  String toString() {
    return 'InputRowEvent.undoPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UndoPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undoPressed,
    required TResult Function() commitPressed,
    required TResult Function(int newInput) inputChanged,
  }) {
    return undoPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undoPressed,
    TResult Function()? commitPressed,
    TResult Function(int newInput)? inputChanged,
  }) {
    return undoPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undoPressed,
    TResult Function()? commitPressed,
    TResult Function(int newInput)? inputChanged,
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
    required TResult Function(_UndoPressed value) undoPressed,
    required TResult Function(_CommitPressed value) commitPressed,
    required TResult Function(_InputChanged value) inputChanged,
  }) {
    return undoPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UndoPressed value)? undoPressed,
    TResult Function(_CommitPressed value)? commitPressed,
    TResult Function(_InputChanged value)? inputChanged,
  }) {
    return undoPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UndoPressed value)? undoPressed,
    TResult Function(_CommitPressed value)? commitPressed,
    TResult Function(_InputChanged value)? inputChanged,
    required TResult orElse(),
  }) {
    if (undoPressed != null) {
      return undoPressed(this);
    }
    return orElse();
  }
}

abstract class _UndoPressed implements InputRowEvent {
  const factory _UndoPressed() = _$_UndoPressed;
}

/// @nodoc
abstract class _$CommitPressedCopyWith<$Res> {
  factory _$CommitPressedCopyWith(
          _CommitPressed value, $Res Function(_CommitPressed) then) =
      __$CommitPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CommitPressedCopyWithImpl<$Res>
    extends _$InputRowEventCopyWithImpl<$Res>
    implements _$CommitPressedCopyWith<$Res> {
  __$CommitPressedCopyWithImpl(
      _CommitPressed _value, $Res Function(_CommitPressed) _then)
      : super(_value, (v) => _then(v as _CommitPressed));

  @override
  _CommitPressed get _value => super._value as _CommitPressed;
}

/// @nodoc

class _$_CommitPressed implements _CommitPressed {
  const _$_CommitPressed();

  @override
  String toString() {
    return 'InputRowEvent.commitPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CommitPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undoPressed,
    required TResult Function() commitPressed,
    required TResult Function(int newInput) inputChanged,
  }) {
    return commitPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undoPressed,
    TResult Function()? commitPressed,
    TResult Function(int newInput)? inputChanged,
  }) {
    return commitPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undoPressed,
    TResult Function()? commitPressed,
    TResult Function(int newInput)? inputChanged,
    required TResult orElse(),
  }) {
    if (commitPressed != null) {
      return commitPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UndoPressed value) undoPressed,
    required TResult Function(_CommitPressed value) commitPressed,
    required TResult Function(_InputChanged value) inputChanged,
  }) {
    return commitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UndoPressed value)? undoPressed,
    TResult Function(_CommitPressed value)? commitPressed,
    TResult Function(_InputChanged value)? inputChanged,
  }) {
    return commitPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UndoPressed value)? undoPressed,
    TResult Function(_CommitPressed value)? commitPressed,
    TResult Function(_InputChanged value)? inputChanged,
    required TResult orElse(),
  }) {
    if (commitPressed != null) {
      return commitPressed(this);
    }
    return orElse();
  }
}

abstract class _CommitPressed implements InputRowEvent {
  const factory _CommitPressed() = _$_CommitPressed;
}

/// @nodoc
abstract class _$InputChangedCopyWith<$Res> {
  factory _$InputChangedCopyWith(
          _InputChanged value, $Res Function(_InputChanged) then) =
      __$InputChangedCopyWithImpl<$Res>;
  $Res call({int newInput});
}

/// @nodoc
class __$InputChangedCopyWithImpl<$Res>
    extends _$InputRowEventCopyWithImpl<$Res>
    implements _$InputChangedCopyWith<$Res> {
  __$InputChangedCopyWithImpl(
      _InputChanged _value, $Res Function(_InputChanged) _then)
      : super(_value, (v) => _then(v as _InputChanged));

  @override
  _InputChanged get _value => super._value as _InputChanged;

  @override
  $Res call({
    Object? newInput = freezed,
  }) {
    return _then(_InputChanged(
      newInput: newInput == freezed
          ? _value.newInput
          : newInput // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_InputChanged implements _InputChanged {
  const _$_InputChanged({required this.newInput});

  @override
  final int newInput;

  @override
  String toString() {
    return 'InputRowEvent.inputChanged(newInput: $newInput)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InputChanged &&
            const DeepCollectionEquality().equals(other.newInput, newInput));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newInput));

  @JsonKey(ignore: true)
  @override
  _$InputChangedCopyWith<_InputChanged> get copyWith =>
      __$InputChangedCopyWithImpl<_InputChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undoPressed,
    required TResult Function() commitPressed,
    required TResult Function(int newInput) inputChanged,
  }) {
    return inputChanged(newInput);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undoPressed,
    TResult Function()? commitPressed,
    TResult Function(int newInput)? inputChanged,
  }) {
    return inputChanged?.call(newInput);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undoPressed,
    TResult Function()? commitPressed,
    TResult Function(int newInput)? inputChanged,
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
    required TResult Function(_UndoPressed value) undoPressed,
    required TResult Function(_CommitPressed value) commitPressed,
    required TResult Function(_InputChanged value) inputChanged,
  }) {
    return inputChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UndoPressed value)? undoPressed,
    TResult Function(_CommitPressed value)? commitPressed,
    TResult Function(_InputChanged value)? inputChanged,
  }) {
    return inputChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UndoPressed value)? undoPressed,
    TResult Function(_CommitPressed value)? commitPressed,
    TResult Function(_InputChanged value)? inputChanged,
    required TResult orElse(),
  }) {
    if (inputChanged != null) {
      return inputChanged(this);
    }
    return orElse();
  }
}

abstract class _InputChanged implements InputRowEvent {
  const factory _InputChanged({required int newInput}) = _$_InputChanged;

  int get newInput;
  @JsonKey(ignore: true)
  _$InputChangedCopyWith<_InputChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
