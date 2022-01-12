// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'input_row_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InputRowEventTearOff {
  const _$InputRowEventTearOff();

  UndoPressed undoPressed() {
    return const UndoPressed();
  }

  CommitPressed commitPressed() {
    return const CommitPressed();
  }

  InputChanged inputChanged({required int newInput}) {
    return InputChanged(
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
    required TResult Function(UndoPressed value) undoPressed,
    required TResult Function(CommitPressed value) commitPressed,
    required TResult Function(InputChanged value) inputChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UndoPressed value)? undoPressed,
    TResult Function(CommitPressed value)? commitPressed,
    TResult Function(InputChanged value)? inputChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UndoPressed value)? undoPressed,
    TResult Function(CommitPressed value)? commitPressed,
    TResult Function(InputChanged value)? inputChanged,
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
abstract class $UndoPressedCopyWith<$Res> {
  factory $UndoPressedCopyWith(
          UndoPressed value, $Res Function(UndoPressed) then) =
      _$UndoPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UndoPressedCopyWithImpl<$Res> extends _$InputRowEventCopyWithImpl<$Res>
    implements $UndoPressedCopyWith<$Res> {
  _$UndoPressedCopyWithImpl(
      UndoPressed _value, $Res Function(UndoPressed) _then)
      : super(_value, (v) => _then(v as UndoPressed));

  @override
  UndoPressed get _value => super._value as UndoPressed;
}

/// @nodoc

class _$UndoPressed implements UndoPressed {
  const _$UndoPressed();

  @override
  String toString() {
    return 'InputRowEvent.undoPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UndoPressed);
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
    required TResult Function(UndoPressed value) undoPressed,
    required TResult Function(CommitPressed value) commitPressed,
    required TResult Function(InputChanged value) inputChanged,
  }) {
    return undoPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UndoPressed value)? undoPressed,
    TResult Function(CommitPressed value)? commitPressed,
    TResult Function(InputChanged value)? inputChanged,
  }) {
    return undoPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UndoPressed value)? undoPressed,
    TResult Function(CommitPressed value)? commitPressed,
    TResult Function(InputChanged value)? inputChanged,
    required TResult orElse(),
  }) {
    if (undoPressed != null) {
      return undoPressed(this);
    }
    return orElse();
  }
}

abstract class UndoPressed implements InputRowEvent {
  const factory UndoPressed() = _$UndoPressed;
}

/// @nodoc
abstract class $CommitPressedCopyWith<$Res> {
  factory $CommitPressedCopyWith(
          CommitPressed value, $Res Function(CommitPressed) then) =
      _$CommitPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommitPressedCopyWithImpl<$Res>
    extends _$InputRowEventCopyWithImpl<$Res>
    implements $CommitPressedCopyWith<$Res> {
  _$CommitPressedCopyWithImpl(
      CommitPressed _value, $Res Function(CommitPressed) _then)
      : super(_value, (v) => _then(v as CommitPressed));

  @override
  CommitPressed get _value => super._value as CommitPressed;
}

/// @nodoc

class _$CommitPressed implements CommitPressed {
  const _$CommitPressed();

  @override
  String toString() {
    return 'InputRowEvent.commitPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CommitPressed);
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
    required TResult Function(UndoPressed value) undoPressed,
    required TResult Function(CommitPressed value) commitPressed,
    required TResult Function(InputChanged value) inputChanged,
  }) {
    return commitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UndoPressed value)? undoPressed,
    TResult Function(CommitPressed value)? commitPressed,
    TResult Function(InputChanged value)? inputChanged,
  }) {
    return commitPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UndoPressed value)? undoPressed,
    TResult Function(CommitPressed value)? commitPressed,
    TResult Function(InputChanged value)? inputChanged,
    required TResult orElse(),
  }) {
    if (commitPressed != null) {
      return commitPressed(this);
    }
    return orElse();
  }
}

abstract class CommitPressed implements InputRowEvent {
  const factory CommitPressed() = _$CommitPressed;
}

/// @nodoc
abstract class $InputChangedCopyWith<$Res> {
  factory $InputChangedCopyWith(
          InputChanged value, $Res Function(InputChanged) then) =
      _$InputChangedCopyWithImpl<$Res>;
  $Res call({int newInput});
}

/// @nodoc
class _$InputChangedCopyWithImpl<$Res> extends _$InputRowEventCopyWithImpl<$Res>
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
    return 'InputRowEvent.inputChanged(newInput: $newInput)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InputChanged &&
            const DeepCollectionEquality().equals(other.newInput, newInput));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newInput));

  @JsonKey(ignore: true)
  @override
  $InputChangedCopyWith<InputChanged> get copyWith =>
      _$InputChangedCopyWithImpl<InputChanged>(this, _$identity);

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
    required TResult Function(UndoPressed value) undoPressed,
    required TResult Function(CommitPressed value) commitPressed,
    required TResult Function(InputChanged value) inputChanged,
  }) {
    return inputChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UndoPressed value)? undoPressed,
    TResult Function(CommitPressed value)? commitPressed,
    TResult Function(InputChanged value)? inputChanged,
  }) {
    return inputChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UndoPressed value)? undoPressed,
    TResult Function(CommitPressed value)? commitPressed,
    TResult Function(InputChanged value)? inputChanged,
    required TResult orElse(),
  }) {
    if (inputChanged != null) {
      return inputChanged(this);
    }
    return orElse();
  }
}

abstract class InputChanged implements InputRowEvent {
  const factory InputChanged({required int newInput}) = _$InputChanged;

  int get newInput;
  @JsonKey(ignore: true)
  $InputChangedCopyWith<InputChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
