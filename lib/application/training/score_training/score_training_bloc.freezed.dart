// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'score_training_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScoreTrainingEventTearOff {
  const _$ScoreTrainingEventTearOff();

  _ScoreTrainingNumberOfTakesChanged numberOfTakesChanged(
      {required int newNumberOfTakes}) {
    return _ScoreTrainingNumberOfTakesChanged(
      newNumberOfTakes: newNumberOfTakes,
    );
  }

  _ScoreTrainingPerformPressed performPressed() {
    return const _ScoreTrainingPerformPressed();
  }

  _ScoreTrainingUndoPressed undoPressed() {
    return const _ScoreTrainingUndoPressed();
  }

  _ScoreTrainingDigitPressed digitPressed({required int digit}) {
    return _ScoreTrainingDigitPressed(
      digit: digit,
    );
  }

  _ScoreTrainingEreasePressed ereasePressed() {
    return const _ScoreTrainingEreasePressed();
  }
}

/// @nodoc
const $ScoreTrainingEvent = _$ScoreTrainingEventTearOff();

/// @nodoc
mixin _$ScoreTrainingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newNumberOfTakes) numberOfTakesChanged,
    required TResult Function() performPressed,
    required TResult Function() undoPressed,
    required TResult Function(int digit) digitPressed,
    required TResult Function() ereasePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScoreTrainingNumberOfTakesChanged value)
        numberOfTakesChanged,
    required TResult Function(_ScoreTrainingPerformPressed value)
        performPressed,
    required TResult Function(_ScoreTrainingUndoPressed value) undoPressed,
    required TResult Function(_ScoreTrainingDigitPressed value) digitPressed,
    required TResult Function(_ScoreTrainingEreasePressed value) ereasePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ScoreTrainingNumberOfTakesChanged value)?
        numberOfTakesChanged,
    TResult Function(_ScoreTrainingPerformPressed value)? performPressed,
    TResult Function(_ScoreTrainingUndoPressed value)? undoPressed,
    TResult Function(_ScoreTrainingDigitPressed value)? digitPressed,
    TResult Function(_ScoreTrainingEreasePressed value)? ereasePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScoreTrainingNumberOfTakesChanged value)?
        numberOfTakesChanged,
    TResult Function(_ScoreTrainingPerformPressed value)? performPressed,
    TResult Function(_ScoreTrainingUndoPressed value)? undoPressed,
    TResult Function(_ScoreTrainingDigitPressed value)? digitPressed,
    TResult Function(_ScoreTrainingEreasePressed value)? ereasePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreTrainingEventCopyWith<$Res> {
  factory $ScoreTrainingEventCopyWith(
          ScoreTrainingEvent value, $Res Function(ScoreTrainingEvent) then) =
      _$ScoreTrainingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScoreTrainingEventCopyWithImpl<$Res>
    implements $ScoreTrainingEventCopyWith<$Res> {
  _$ScoreTrainingEventCopyWithImpl(this._value, this._then);

  final ScoreTrainingEvent _value;
  // ignore: unused_field
  final $Res Function(ScoreTrainingEvent) _then;
}

/// @nodoc
abstract class _$ScoreTrainingNumberOfTakesChangedCopyWith<$Res> {
  factory _$ScoreTrainingNumberOfTakesChangedCopyWith(
          _ScoreTrainingNumberOfTakesChanged value,
          $Res Function(_ScoreTrainingNumberOfTakesChanged) then) =
      __$ScoreTrainingNumberOfTakesChangedCopyWithImpl<$Res>;
  $Res call({int newNumberOfTakes});
}

/// @nodoc
class __$ScoreTrainingNumberOfTakesChangedCopyWithImpl<$Res>
    extends _$ScoreTrainingEventCopyWithImpl<$Res>
    implements _$ScoreTrainingNumberOfTakesChangedCopyWith<$Res> {
  __$ScoreTrainingNumberOfTakesChangedCopyWithImpl(
      _ScoreTrainingNumberOfTakesChanged _value,
      $Res Function(_ScoreTrainingNumberOfTakesChanged) _then)
      : super(_value, (v) => _then(v as _ScoreTrainingNumberOfTakesChanged));

  @override
  _ScoreTrainingNumberOfTakesChanged get _value =>
      super._value as _ScoreTrainingNumberOfTakesChanged;

  @override
  $Res call({
    Object? newNumberOfTakes = freezed,
  }) {
    return _then(_ScoreTrainingNumberOfTakesChanged(
      newNumberOfTakes: newNumberOfTakes == freezed
          ? _value.newNumberOfTakes
          : newNumberOfTakes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ScoreTrainingNumberOfTakesChanged
    implements _ScoreTrainingNumberOfTakesChanged {
  const _$_ScoreTrainingNumberOfTakesChanged({required this.newNumberOfTakes});

  @override
  final int newNumberOfTakes;

  @override
  String toString() {
    return 'ScoreTrainingEvent.numberOfTakesChanged(newNumberOfTakes: $newNumberOfTakes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScoreTrainingNumberOfTakesChanged &&
            (identical(other.newNumberOfTakes, newNumberOfTakes) ||
                const DeepCollectionEquality()
                    .equals(other.newNumberOfTakes, newNumberOfTakes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newNumberOfTakes);

  @JsonKey(ignore: true)
  @override
  _$ScoreTrainingNumberOfTakesChangedCopyWith<
          _ScoreTrainingNumberOfTakesChanged>
      get copyWith => __$ScoreTrainingNumberOfTakesChangedCopyWithImpl<
          _ScoreTrainingNumberOfTakesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newNumberOfTakes) numberOfTakesChanged,
    required TResult Function() performPressed,
    required TResult Function() undoPressed,
    required TResult Function(int digit) digitPressed,
    required TResult Function() ereasePressed,
  }) {
    return numberOfTakesChanged(newNumberOfTakes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
  }) {
    return numberOfTakesChanged?.call(newNumberOfTakes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
    required TResult orElse(),
  }) {
    if (numberOfTakesChanged != null) {
      return numberOfTakesChanged(newNumberOfTakes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScoreTrainingNumberOfTakesChanged value)
        numberOfTakesChanged,
    required TResult Function(_ScoreTrainingPerformPressed value)
        performPressed,
    required TResult Function(_ScoreTrainingUndoPressed value) undoPressed,
    required TResult Function(_ScoreTrainingDigitPressed value) digitPressed,
    required TResult Function(_ScoreTrainingEreasePressed value) ereasePressed,
  }) {
    return numberOfTakesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ScoreTrainingNumberOfTakesChanged value)?
        numberOfTakesChanged,
    TResult Function(_ScoreTrainingPerformPressed value)? performPressed,
    TResult Function(_ScoreTrainingUndoPressed value)? undoPressed,
    TResult Function(_ScoreTrainingDigitPressed value)? digitPressed,
    TResult Function(_ScoreTrainingEreasePressed value)? ereasePressed,
  }) {
    return numberOfTakesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScoreTrainingNumberOfTakesChanged value)?
        numberOfTakesChanged,
    TResult Function(_ScoreTrainingPerformPressed value)? performPressed,
    TResult Function(_ScoreTrainingUndoPressed value)? undoPressed,
    TResult Function(_ScoreTrainingDigitPressed value)? digitPressed,
    TResult Function(_ScoreTrainingEreasePressed value)? ereasePressed,
    required TResult orElse(),
  }) {
    if (numberOfTakesChanged != null) {
      return numberOfTakesChanged(this);
    }
    return orElse();
  }
}

abstract class _ScoreTrainingNumberOfTakesChanged
    implements ScoreTrainingEvent {
  const factory _ScoreTrainingNumberOfTakesChanged(
      {required int newNumberOfTakes}) = _$_ScoreTrainingNumberOfTakesChanged;

  int get newNumberOfTakes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ScoreTrainingNumberOfTakesChangedCopyWith<
          _ScoreTrainingNumberOfTakesChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ScoreTrainingPerformPressedCopyWith<$Res> {
  factory _$ScoreTrainingPerformPressedCopyWith(
          _ScoreTrainingPerformPressed value,
          $Res Function(_ScoreTrainingPerformPressed) then) =
      __$ScoreTrainingPerformPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ScoreTrainingPerformPressedCopyWithImpl<$Res>
    extends _$ScoreTrainingEventCopyWithImpl<$Res>
    implements _$ScoreTrainingPerformPressedCopyWith<$Res> {
  __$ScoreTrainingPerformPressedCopyWithImpl(
      _ScoreTrainingPerformPressed _value,
      $Res Function(_ScoreTrainingPerformPressed) _then)
      : super(_value, (v) => _then(v as _ScoreTrainingPerformPressed));

  @override
  _ScoreTrainingPerformPressed get _value =>
      super._value as _ScoreTrainingPerformPressed;
}

/// @nodoc

class _$_ScoreTrainingPerformPressed implements _ScoreTrainingPerformPressed {
  const _$_ScoreTrainingPerformPressed();

  @override
  String toString() {
    return 'ScoreTrainingEvent.performPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ScoreTrainingPerformPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newNumberOfTakes) numberOfTakesChanged,
    required TResult Function() performPressed,
    required TResult Function() undoPressed,
    required TResult Function(int digit) digitPressed,
    required TResult Function() ereasePressed,
  }) {
    return performPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
  }) {
    return performPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
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
    required TResult Function(_ScoreTrainingNumberOfTakesChanged value)
        numberOfTakesChanged,
    required TResult Function(_ScoreTrainingPerformPressed value)
        performPressed,
    required TResult Function(_ScoreTrainingUndoPressed value) undoPressed,
    required TResult Function(_ScoreTrainingDigitPressed value) digitPressed,
    required TResult Function(_ScoreTrainingEreasePressed value) ereasePressed,
  }) {
    return performPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ScoreTrainingNumberOfTakesChanged value)?
        numberOfTakesChanged,
    TResult Function(_ScoreTrainingPerformPressed value)? performPressed,
    TResult Function(_ScoreTrainingUndoPressed value)? undoPressed,
    TResult Function(_ScoreTrainingDigitPressed value)? digitPressed,
    TResult Function(_ScoreTrainingEreasePressed value)? ereasePressed,
  }) {
    return performPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScoreTrainingNumberOfTakesChanged value)?
        numberOfTakesChanged,
    TResult Function(_ScoreTrainingPerformPressed value)? performPressed,
    TResult Function(_ScoreTrainingUndoPressed value)? undoPressed,
    TResult Function(_ScoreTrainingDigitPressed value)? digitPressed,
    TResult Function(_ScoreTrainingEreasePressed value)? ereasePressed,
    required TResult orElse(),
  }) {
    if (performPressed != null) {
      return performPressed(this);
    }
    return orElse();
  }
}

abstract class _ScoreTrainingPerformPressed implements ScoreTrainingEvent {
  const factory _ScoreTrainingPerformPressed() = _$_ScoreTrainingPerformPressed;
}

/// @nodoc
abstract class _$ScoreTrainingUndoPressedCopyWith<$Res> {
  factory _$ScoreTrainingUndoPressedCopyWith(_ScoreTrainingUndoPressed value,
          $Res Function(_ScoreTrainingUndoPressed) then) =
      __$ScoreTrainingUndoPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ScoreTrainingUndoPressedCopyWithImpl<$Res>
    extends _$ScoreTrainingEventCopyWithImpl<$Res>
    implements _$ScoreTrainingUndoPressedCopyWith<$Res> {
  __$ScoreTrainingUndoPressedCopyWithImpl(_ScoreTrainingUndoPressed _value,
      $Res Function(_ScoreTrainingUndoPressed) _then)
      : super(_value, (v) => _then(v as _ScoreTrainingUndoPressed));

  @override
  _ScoreTrainingUndoPressed get _value =>
      super._value as _ScoreTrainingUndoPressed;
}

/// @nodoc

class _$_ScoreTrainingUndoPressed implements _ScoreTrainingUndoPressed {
  const _$_ScoreTrainingUndoPressed();

  @override
  String toString() {
    return 'ScoreTrainingEvent.undoPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ScoreTrainingUndoPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newNumberOfTakes) numberOfTakesChanged,
    required TResult Function() performPressed,
    required TResult Function() undoPressed,
    required TResult Function(int digit) digitPressed,
    required TResult Function() ereasePressed,
  }) {
    return undoPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
  }) {
    return undoPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
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
    required TResult Function(_ScoreTrainingNumberOfTakesChanged value)
        numberOfTakesChanged,
    required TResult Function(_ScoreTrainingPerformPressed value)
        performPressed,
    required TResult Function(_ScoreTrainingUndoPressed value) undoPressed,
    required TResult Function(_ScoreTrainingDigitPressed value) digitPressed,
    required TResult Function(_ScoreTrainingEreasePressed value) ereasePressed,
  }) {
    return undoPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ScoreTrainingNumberOfTakesChanged value)?
        numberOfTakesChanged,
    TResult Function(_ScoreTrainingPerformPressed value)? performPressed,
    TResult Function(_ScoreTrainingUndoPressed value)? undoPressed,
    TResult Function(_ScoreTrainingDigitPressed value)? digitPressed,
    TResult Function(_ScoreTrainingEreasePressed value)? ereasePressed,
  }) {
    return undoPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScoreTrainingNumberOfTakesChanged value)?
        numberOfTakesChanged,
    TResult Function(_ScoreTrainingPerformPressed value)? performPressed,
    TResult Function(_ScoreTrainingUndoPressed value)? undoPressed,
    TResult Function(_ScoreTrainingDigitPressed value)? digitPressed,
    TResult Function(_ScoreTrainingEreasePressed value)? ereasePressed,
    required TResult orElse(),
  }) {
    if (undoPressed != null) {
      return undoPressed(this);
    }
    return orElse();
  }
}

abstract class _ScoreTrainingUndoPressed implements ScoreTrainingEvent {
  const factory _ScoreTrainingUndoPressed() = _$_ScoreTrainingUndoPressed;
}

/// @nodoc
abstract class _$ScoreTrainingDigitPressedCopyWith<$Res> {
  factory _$ScoreTrainingDigitPressedCopyWith(_ScoreTrainingDigitPressed value,
          $Res Function(_ScoreTrainingDigitPressed) then) =
      __$ScoreTrainingDigitPressedCopyWithImpl<$Res>;
  $Res call({int digit});
}

/// @nodoc
class __$ScoreTrainingDigitPressedCopyWithImpl<$Res>
    extends _$ScoreTrainingEventCopyWithImpl<$Res>
    implements _$ScoreTrainingDigitPressedCopyWith<$Res> {
  __$ScoreTrainingDigitPressedCopyWithImpl(_ScoreTrainingDigitPressed _value,
      $Res Function(_ScoreTrainingDigitPressed) _then)
      : super(_value, (v) => _then(v as _ScoreTrainingDigitPressed));

  @override
  _ScoreTrainingDigitPressed get _value =>
      super._value as _ScoreTrainingDigitPressed;

  @override
  $Res call({
    Object? digit = freezed,
  }) {
    return _then(_ScoreTrainingDigitPressed(
      digit: digit == freezed
          ? _value.digit
          : digit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ScoreTrainingDigitPressed implements _ScoreTrainingDigitPressed {
  const _$_ScoreTrainingDigitPressed({required this.digit});

  @override
  final int digit;

  @override
  String toString() {
    return 'ScoreTrainingEvent.digitPressed(digit: $digit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScoreTrainingDigitPressed &&
            (identical(other.digit, digit) ||
                const DeepCollectionEquality().equals(other.digit, digit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(digit);

  @JsonKey(ignore: true)
  @override
  _$ScoreTrainingDigitPressedCopyWith<_ScoreTrainingDigitPressed>
      get copyWith =>
          __$ScoreTrainingDigitPressedCopyWithImpl<_ScoreTrainingDigitPressed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newNumberOfTakes) numberOfTakesChanged,
    required TResult Function() performPressed,
    required TResult Function() undoPressed,
    required TResult Function(int digit) digitPressed,
    required TResult Function() ereasePressed,
  }) {
    return digitPressed(digit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
  }) {
    return digitPressed?.call(digit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
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
    required TResult Function(_ScoreTrainingNumberOfTakesChanged value)
        numberOfTakesChanged,
    required TResult Function(_ScoreTrainingPerformPressed value)
        performPressed,
    required TResult Function(_ScoreTrainingUndoPressed value) undoPressed,
    required TResult Function(_ScoreTrainingDigitPressed value) digitPressed,
    required TResult Function(_ScoreTrainingEreasePressed value) ereasePressed,
  }) {
    return digitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ScoreTrainingNumberOfTakesChanged value)?
        numberOfTakesChanged,
    TResult Function(_ScoreTrainingPerformPressed value)? performPressed,
    TResult Function(_ScoreTrainingUndoPressed value)? undoPressed,
    TResult Function(_ScoreTrainingDigitPressed value)? digitPressed,
    TResult Function(_ScoreTrainingEreasePressed value)? ereasePressed,
  }) {
    return digitPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScoreTrainingNumberOfTakesChanged value)?
        numberOfTakesChanged,
    TResult Function(_ScoreTrainingPerformPressed value)? performPressed,
    TResult Function(_ScoreTrainingUndoPressed value)? undoPressed,
    TResult Function(_ScoreTrainingDigitPressed value)? digitPressed,
    TResult Function(_ScoreTrainingEreasePressed value)? ereasePressed,
    required TResult orElse(),
  }) {
    if (digitPressed != null) {
      return digitPressed(this);
    }
    return orElse();
  }
}

abstract class _ScoreTrainingDigitPressed implements ScoreTrainingEvent {
  const factory _ScoreTrainingDigitPressed({required int digit}) =
      _$_ScoreTrainingDigitPressed;

  int get digit => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ScoreTrainingDigitPressedCopyWith<_ScoreTrainingDigitPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ScoreTrainingEreasePressedCopyWith<$Res> {
  factory _$ScoreTrainingEreasePressedCopyWith(
          _ScoreTrainingEreasePressed value,
          $Res Function(_ScoreTrainingEreasePressed) then) =
      __$ScoreTrainingEreasePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ScoreTrainingEreasePressedCopyWithImpl<$Res>
    extends _$ScoreTrainingEventCopyWithImpl<$Res>
    implements _$ScoreTrainingEreasePressedCopyWith<$Res> {
  __$ScoreTrainingEreasePressedCopyWithImpl(_ScoreTrainingEreasePressed _value,
      $Res Function(_ScoreTrainingEreasePressed) _then)
      : super(_value, (v) => _then(v as _ScoreTrainingEreasePressed));

  @override
  _ScoreTrainingEreasePressed get _value =>
      super._value as _ScoreTrainingEreasePressed;
}

/// @nodoc

class _$_ScoreTrainingEreasePressed implements _ScoreTrainingEreasePressed {
  const _$_ScoreTrainingEreasePressed();

  @override
  String toString() {
    return 'ScoreTrainingEvent.ereasePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ScoreTrainingEreasePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newNumberOfTakes) numberOfTakesChanged,
    required TResult Function() performPressed,
    required TResult Function() undoPressed,
    required TResult Function(int digit) digitPressed,
    required TResult Function() ereasePressed,
  }) {
    return ereasePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
  }) {
    return ereasePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newNumberOfTakes)? numberOfTakesChanged,
    TResult Function()? performPressed,
    TResult Function()? undoPressed,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
    required TResult orElse(),
  }) {
    if (ereasePressed != null) {
      return ereasePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScoreTrainingNumberOfTakesChanged value)
        numberOfTakesChanged,
    required TResult Function(_ScoreTrainingPerformPressed value)
        performPressed,
    required TResult Function(_ScoreTrainingUndoPressed value) undoPressed,
    required TResult Function(_ScoreTrainingDigitPressed value) digitPressed,
    required TResult Function(_ScoreTrainingEreasePressed value) ereasePressed,
  }) {
    return ereasePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ScoreTrainingNumberOfTakesChanged value)?
        numberOfTakesChanged,
    TResult Function(_ScoreTrainingPerformPressed value)? performPressed,
    TResult Function(_ScoreTrainingUndoPressed value)? undoPressed,
    TResult Function(_ScoreTrainingDigitPressed value)? digitPressed,
    TResult Function(_ScoreTrainingEreasePressed value)? ereasePressed,
  }) {
    return ereasePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScoreTrainingNumberOfTakesChanged value)?
        numberOfTakesChanged,
    TResult Function(_ScoreTrainingPerformPressed value)? performPressed,
    TResult Function(_ScoreTrainingUndoPressed value)? undoPressed,
    TResult Function(_ScoreTrainingDigitPressed value)? digitPressed,
    TResult Function(_ScoreTrainingEreasePressed value)? ereasePressed,
    required TResult orElse(),
  }) {
    if (ereasePressed != null) {
      return ereasePressed(this);
    }
    return orElse();
  }
}

abstract class _ScoreTrainingEreasePressed implements ScoreTrainingEvent {
  const factory _ScoreTrainingEreasePressed() = _$_ScoreTrainingEreasePressed;
}

/// @nodoc
class _$ScoreTrainingStateTearOff {
  const _$ScoreTrainingStateTearOff();

  _ScoreTrainingInitial initial(
      {required int points, required int numberOfTakes}) {
    return _ScoreTrainingInitial(
      points: points,
      numberOfTakes: numberOfTakes,
    );
  }
}

/// @nodoc
const $ScoreTrainingState = _$ScoreTrainingStateTearOff();

/// @nodoc
mixin _$ScoreTrainingState {
  int get points => throw _privateConstructorUsedError;
  int get numberOfTakes => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int points, int numberOfTakes) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int points, int numberOfTakes)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int points, int numberOfTakes)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScoreTrainingInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ScoreTrainingInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScoreTrainingInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScoreTrainingStateCopyWith<ScoreTrainingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreTrainingStateCopyWith<$Res> {
  factory $ScoreTrainingStateCopyWith(
          ScoreTrainingState value, $Res Function(ScoreTrainingState) then) =
      _$ScoreTrainingStateCopyWithImpl<$Res>;
  $Res call({int points, int numberOfTakes});
}

/// @nodoc
class _$ScoreTrainingStateCopyWithImpl<$Res>
    implements $ScoreTrainingStateCopyWith<$Res> {
  _$ScoreTrainingStateCopyWithImpl(this._value, this._then);

  final ScoreTrainingState _value;
  // ignore: unused_field
  final $Res Function(ScoreTrainingState) _then;

  @override
  $Res call({
    Object? points = freezed,
    Object? numberOfTakes = freezed,
  }) {
    return _then(_value.copyWith(
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfTakes: numberOfTakes == freezed
          ? _value.numberOfTakes
          : numberOfTakes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ScoreTrainingInitialCopyWith<$Res>
    implements $ScoreTrainingStateCopyWith<$Res> {
  factory _$ScoreTrainingInitialCopyWith(_ScoreTrainingInitial value,
          $Res Function(_ScoreTrainingInitial) then) =
      __$ScoreTrainingInitialCopyWithImpl<$Res>;
  @override
  $Res call({int points, int numberOfTakes});
}

/// @nodoc
class __$ScoreTrainingInitialCopyWithImpl<$Res>
    extends _$ScoreTrainingStateCopyWithImpl<$Res>
    implements _$ScoreTrainingInitialCopyWith<$Res> {
  __$ScoreTrainingInitialCopyWithImpl(
      _ScoreTrainingInitial _value, $Res Function(_ScoreTrainingInitial) _then)
      : super(_value, (v) => _then(v as _ScoreTrainingInitial));

  @override
  _ScoreTrainingInitial get _value => super._value as _ScoreTrainingInitial;

  @override
  $Res call({
    Object? points = freezed,
    Object? numberOfTakes = freezed,
  }) {
    return _then(_ScoreTrainingInitial(
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfTakes: numberOfTakes == freezed
          ? _value.numberOfTakes
          : numberOfTakes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ScoreTrainingInitial implements _ScoreTrainingInitial {
  const _$_ScoreTrainingInitial(
      {required this.points, required this.numberOfTakes});

  @override
  final int points;
  @override
  final int numberOfTakes;

  @override
  String toString() {
    return 'ScoreTrainingState.initial(points: $points, numberOfTakes: $numberOfTakes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScoreTrainingInitial &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)) &&
            (identical(other.numberOfTakes, numberOfTakes) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfTakes, numberOfTakes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(points) ^
      const DeepCollectionEquality().hash(numberOfTakes);

  @JsonKey(ignore: true)
  @override
  _$ScoreTrainingInitialCopyWith<_ScoreTrainingInitial> get copyWith =>
      __$ScoreTrainingInitialCopyWithImpl<_ScoreTrainingInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int points, int numberOfTakes) initial,
  }) {
    return initial(points, numberOfTakes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int points, int numberOfTakes)? initial,
  }) {
    return initial?.call(points, numberOfTakes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int points, int numberOfTakes)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(points, numberOfTakes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScoreTrainingInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ScoreTrainingInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScoreTrainingInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ScoreTrainingInitial implements ScoreTrainingState {
  const factory _ScoreTrainingInitial(
      {required int points,
      required int numberOfTakes}) = _$_ScoreTrainingInitial;

  @override
  int get points => throw _privateConstructorUsedError;
  @override
  int get numberOfTakes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScoreTrainingInitialCopyWith<_ScoreTrainingInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
