// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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

  UndoThrowPressed undoThrowPressed() {
    return const UndoThrowPressed();
  }

  PerformThrowPressed performThrowPressed() {
    return const PerformThrowPressed();
  }

  InputUpdated inputUpdated({required int newInput, KtList<Dart>? darts}) {
    return InputUpdated(
      newInput: newInput,
      darts: darts,
    );
  }
}

/// @nodoc
const $InputRowEvent = _$InputRowEventTearOff();

/// @nodoc
mixin _$InputRowEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undoThrowPressed,
    required TResult Function() performThrowPressed,
    required TResult Function(int newInput, KtList<Dart>? darts) inputUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undoThrowPressed,
    TResult Function()? performThrowPressed,
    TResult Function(int newInput, KtList<Dart>? darts)? inputUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UndoThrowPressed value) undoThrowPressed,
    required TResult Function(PerformThrowPressed value) performThrowPressed,
    required TResult Function(InputUpdated value) inputUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(InputUpdated value)? inputUpdated,
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
abstract class $UndoThrowPressedCopyWith<$Res> {
  factory $UndoThrowPressedCopyWith(
          UndoThrowPressed value, $Res Function(UndoThrowPressed) then) =
      _$UndoThrowPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UndoThrowPressedCopyWithImpl<$Res>
    extends _$InputRowEventCopyWithImpl<$Res>
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
    return 'InputRowEvent.undoThrowPressed()';
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
    required TResult Function() undoThrowPressed,
    required TResult Function() performThrowPressed,
    required TResult Function(int newInput, KtList<Dart>? darts) inputUpdated,
  }) {
    return undoThrowPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undoThrowPressed,
    TResult Function()? performThrowPressed,
    TResult Function(int newInput, KtList<Dart>? darts)? inputUpdated,
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
    required TResult Function(UndoThrowPressed value) undoThrowPressed,
    required TResult Function(PerformThrowPressed value) performThrowPressed,
    required TResult Function(InputUpdated value) inputUpdated,
  }) {
    return undoThrowPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(InputUpdated value)? inputUpdated,
    required TResult orElse(),
  }) {
    if (undoThrowPressed != null) {
      return undoThrowPressed(this);
    }
    return orElse();
  }
}

abstract class UndoThrowPressed implements InputRowEvent {
  const factory UndoThrowPressed() = _$UndoThrowPressed;
}

/// @nodoc
abstract class $PerformThrowPressedCopyWith<$Res> {
  factory $PerformThrowPressedCopyWith(
          PerformThrowPressed value, $Res Function(PerformThrowPressed) then) =
      _$PerformThrowPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PerformThrowPressedCopyWithImpl<$Res>
    extends _$InputRowEventCopyWithImpl<$Res>
    implements $PerformThrowPressedCopyWith<$Res> {
  _$PerformThrowPressedCopyWithImpl(
      PerformThrowPressed _value, $Res Function(PerformThrowPressed) _then)
      : super(_value, (v) => _then(v as PerformThrowPressed));

  @override
  PerformThrowPressed get _value => super._value as PerformThrowPressed;
}

/// @nodoc

class _$PerformThrowPressed implements PerformThrowPressed {
  const _$PerformThrowPressed();

  @override
  String toString() {
    return 'InputRowEvent.performThrowPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PerformThrowPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undoThrowPressed,
    required TResult Function() performThrowPressed,
    required TResult Function(int newInput, KtList<Dart>? darts) inputUpdated,
  }) {
    return performThrowPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undoThrowPressed,
    TResult Function()? performThrowPressed,
    TResult Function(int newInput, KtList<Dart>? darts)? inputUpdated,
    required TResult orElse(),
  }) {
    if (performThrowPressed != null) {
      return performThrowPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UndoThrowPressed value) undoThrowPressed,
    required TResult Function(PerformThrowPressed value) performThrowPressed,
    required TResult Function(InputUpdated value) inputUpdated,
  }) {
    return performThrowPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(InputUpdated value)? inputUpdated,
    required TResult orElse(),
  }) {
    if (performThrowPressed != null) {
      return performThrowPressed(this);
    }
    return orElse();
  }
}

abstract class PerformThrowPressed implements InputRowEvent {
  const factory PerformThrowPressed() = _$PerformThrowPressed;
}

/// @nodoc
abstract class $InputUpdatedCopyWith<$Res> {
  factory $InputUpdatedCopyWith(
          InputUpdated value, $Res Function(InputUpdated) then) =
      _$InputUpdatedCopyWithImpl<$Res>;
  $Res call({int newInput, KtList<Dart>? darts});
}

/// @nodoc
class _$InputUpdatedCopyWithImpl<$Res> extends _$InputRowEventCopyWithImpl<$Res>
    implements $InputUpdatedCopyWith<$Res> {
  _$InputUpdatedCopyWithImpl(
      InputUpdated _value, $Res Function(InputUpdated) _then)
      : super(_value, (v) => _then(v as InputUpdated));

  @override
  InputUpdated get _value => super._value as InputUpdated;

  @override
  $Res call({
    Object? newInput = freezed,
    Object? darts = freezed,
  }) {
    return _then(InputUpdated(
      newInput: newInput == freezed
          ? _value.newInput
          : newInput // ignore: cast_nullable_to_non_nullable
              as int,
      darts: darts == freezed
          ? _value.darts
          : darts // ignore: cast_nullable_to_non_nullable
              as KtList<Dart>?,
    ));
  }
}

/// @nodoc

class _$InputUpdated implements InputUpdated {
  const _$InputUpdated({required this.newInput, this.darts});

  @override
  final int newInput;
  @override
  final KtList<Dart>? darts;

  @override
  String toString() {
    return 'InputRowEvent.inputUpdated(newInput: $newInput, darts: $darts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InputUpdated &&
            (identical(other.newInput, newInput) ||
                const DeepCollectionEquality()
                    .equals(other.newInput, newInput)) &&
            (identical(other.darts, darts) ||
                const DeepCollectionEquality().equals(other.darts, darts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newInput) ^
      const DeepCollectionEquality().hash(darts);

  @JsonKey(ignore: true)
  @override
  $InputUpdatedCopyWith<InputUpdated> get copyWith =>
      _$InputUpdatedCopyWithImpl<InputUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undoThrowPressed,
    required TResult Function() performThrowPressed,
    required TResult Function(int newInput, KtList<Dart>? darts) inputUpdated,
  }) {
    return inputUpdated(newInput, darts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undoThrowPressed,
    TResult Function()? performThrowPressed,
    TResult Function(int newInput, KtList<Dart>? darts)? inputUpdated,
    required TResult orElse(),
  }) {
    if (inputUpdated != null) {
      return inputUpdated(newInput, darts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UndoThrowPressed value) undoThrowPressed,
    required TResult Function(PerformThrowPressed value) performThrowPressed,
    required TResult Function(InputUpdated value) inputUpdated,
  }) {
    return inputUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(InputUpdated value)? inputUpdated,
    required TResult orElse(),
  }) {
    if (inputUpdated != null) {
      return inputUpdated(this);
    }
    return orElse();
  }
}

abstract class InputUpdated implements InputRowEvent {
  const factory InputUpdated({required int newInput, KtList<Dart>? darts}) =
      _$InputUpdated;

  int get newInput => throw _privateConstructorUsedError;
  KtList<Dart>? get darts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputUpdatedCopyWith<InputUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InputRowStateTearOff {
  const _$InputRowStateTearOff();

  _InputRowState call({required int input, KtList<Dart>? darts}) {
    return _InputRowState(
      input: input,
      darts: darts,
    );
  }
}

/// @nodoc
const $InputRowState = _$InputRowStateTearOff();

/// @nodoc
mixin _$InputRowState {
  int get input => throw _privateConstructorUsedError;
  KtList<Dart>? get darts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputRowStateCopyWith<InputRowState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputRowStateCopyWith<$Res> {
  factory $InputRowStateCopyWith(
          InputRowState value, $Res Function(InputRowState) then) =
      _$InputRowStateCopyWithImpl<$Res>;
  $Res call({int input, KtList<Dart>? darts});
}

/// @nodoc
class _$InputRowStateCopyWithImpl<$Res>
    implements $InputRowStateCopyWith<$Res> {
  _$InputRowStateCopyWithImpl(this._value, this._then);

  final InputRowState _value;
  // ignore: unused_field
  final $Res Function(InputRowState) _then;

  @override
  $Res call({
    Object? input = freezed,
    Object? darts = freezed,
  }) {
    return _then(_value.copyWith(
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as int,
      darts: darts == freezed
          ? _value.darts
          : darts // ignore: cast_nullable_to_non_nullable
              as KtList<Dart>?,
    ));
  }
}

/// @nodoc
abstract class _$InputRowStateCopyWith<$Res>
    implements $InputRowStateCopyWith<$Res> {
  factory _$InputRowStateCopyWith(
          _InputRowState value, $Res Function(_InputRowState) then) =
      __$InputRowStateCopyWithImpl<$Res>;
  @override
  $Res call({int input, KtList<Dart>? darts});
}

/// @nodoc
class __$InputRowStateCopyWithImpl<$Res>
    extends _$InputRowStateCopyWithImpl<$Res>
    implements _$InputRowStateCopyWith<$Res> {
  __$InputRowStateCopyWithImpl(
      _InputRowState _value, $Res Function(_InputRowState) _then)
      : super(_value, (v) => _then(v as _InputRowState));

  @override
  _InputRowState get _value => super._value as _InputRowState;

  @override
  $Res call({
    Object? input = freezed,
    Object? darts = freezed,
  }) {
    return _then(_InputRowState(
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as int,
      darts: darts == freezed
          ? _value.darts
          : darts // ignore: cast_nullable_to_non_nullable
              as KtList<Dart>?,
    ));
  }
}

/// @nodoc

class _$_InputRowState implements _InputRowState {
  const _$_InputRowState({required this.input, this.darts});

  @override
  final int input;
  @override
  final KtList<Dart>? darts;

  @override
  String toString() {
    return 'InputRowState(input: $input, darts: $darts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InputRowState &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)) &&
            (identical(other.darts, darts) ||
                const DeepCollectionEquality().equals(other.darts, darts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(input) ^
      const DeepCollectionEquality().hash(darts);

  @JsonKey(ignore: true)
  @override
  _$InputRowStateCopyWith<_InputRowState> get copyWith =>
      __$InputRowStateCopyWithImpl<_InputRowState>(this, _$identity);
}

abstract class _InputRowState implements InputRowState {
  const factory _InputRowState({required int input, KtList<Dart>? darts}) =
      _$_InputRowState;

  @override
  int get input => throw _privateConstructorUsedError;
  @override
  KtList<Dart>? get darts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InputRowStateCopyWith<_InputRowState> get copyWith =>
      throw _privateConstructorUsedError;
}
