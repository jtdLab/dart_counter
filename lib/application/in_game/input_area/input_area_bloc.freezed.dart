// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'input_area_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InputAreaEventTearOff {
  const _$InputAreaEventTearOff();

  UndoThrowPressed undoThrowPressed() {
    return const UndoThrowPressed();
  }

  PerformThrowPressed performThrowPressed() {
    return const PerformThrowPressed();
  }

  CheckPressed checkPressed() {
    return const CheckPressed();
  }

  ErasePressed erasePressed() {
    return const ErasePressed();
  }

  DigitPressed digitPressed({required int digit}) {
    return DigitPressed(
      digit: digit,
    );
  }
}

/// @nodoc
const $InputAreaEvent = _$InputAreaEventTearOff();

/// @nodoc
mixin _$InputAreaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undoThrowPressed,
    required TResult Function() performThrowPressed,
    required TResult Function() checkPressed,
    required TResult Function() erasePressed,
    required TResult Function(int digit) digitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undoThrowPressed,
    TResult Function()? performThrowPressed,
    TResult Function()? checkPressed,
    TResult Function()? erasePressed,
    TResult Function(int digit)? digitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UndoThrowPressed value) undoThrowPressed,
    required TResult Function(PerformThrowPressed value) performThrowPressed,
    required TResult Function(CheckPressed value) checkPressed,
    required TResult Function(ErasePressed value) erasePressed,
    required TResult Function(DigitPressed value) digitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(CheckPressed value)? checkPressed,
    TResult Function(ErasePressed value)? erasePressed,
    TResult Function(DigitPressed value)? digitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputAreaEventCopyWith<$Res> {
  factory $InputAreaEventCopyWith(
          InputAreaEvent value, $Res Function(InputAreaEvent) then) =
      _$InputAreaEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InputAreaEventCopyWithImpl<$Res>
    implements $InputAreaEventCopyWith<$Res> {
  _$InputAreaEventCopyWithImpl(this._value, this._then);

  final InputAreaEvent _value;
  // ignore: unused_field
  final $Res Function(InputAreaEvent) _then;
}

/// @nodoc
abstract class $UndoThrowPressedCopyWith<$Res> {
  factory $UndoThrowPressedCopyWith(
          UndoThrowPressed value, $Res Function(UndoThrowPressed) then) =
      _$UndoThrowPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UndoThrowPressedCopyWithImpl<$Res>
    extends _$InputAreaEventCopyWithImpl<$Res>
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
    return 'InputAreaEvent.undoThrowPressed()';
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
    required TResult Function() checkPressed,
    required TResult Function() erasePressed,
    required TResult Function(int digit) digitPressed,
  }) {
    return undoThrowPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undoThrowPressed,
    TResult Function()? performThrowPressed,
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
    required TResult Function(UndoThrowPressed value) undoThrowPressed,
    required TResult Function(PerformThrowPressed value) performThrowPressed,
    required TResult Function(CheckPressed value) checkPressed,
    required TResult Function(ErasePressed value) erasePressed,
    required TResult Function(DigitPressed value) digitPressed,
  }) {
    return undoThrowPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(CheckPressed value)? checkPressed,
    TResult Function(ErasePressed value)? erasePressed,
    TResult Function(DigitPressed value)? digitPressed,
    required TResult orElse(),
  }) {
    if (undoThrowPressed != null) {
      return undoThrowPressed(this);
    }
    return orElse();
  }
}

abstract class UndoThrowPressed implements InputAreaEvent {
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
    extends _$InputAreaEventCopyWithImpl<$Res>
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
    return 'InputAreaEvent.performThrowPressed()';
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
    required TResult Function() checkPressed,
    required TResult Function() erasePressed,
    required TResult Function(int digit) digitPressed,
  }) {
    return performThrowPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undoThrowPressed,
    TResult Function()? performThrowPressed,
    TResult Function()? checkPressed,
    TResult Function()? erasePressed,
    TResult Function(int digit)? digitPressed,
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
    required TResult Function(CheckPressed value) checkPressed,
    required TResult Function(ErasePressed value) erasePressed,
    required TResult Function(DigitPressed value) digitPressed,
  }) {
    return performThrowPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(CheckPressed value)? checkPressed,
    TResult Function(ErasePressed value)? erasePressed,
    TResult Function(DigitPressed value)? digitPressed,
    required TResult orElse(),
  }) {
    if (performThrowPressed != null) {
      return performThrowPressed(this);
    }
    return orElse();
  }
}

abstract class PerformThrowPressed implements InputAreaEvent {
  const factory PerformThrowPressed() = _$PerformThrowPressed;
}

/// @nodoc
abstract class $CheckPressedCopyWith<$Res> {
  factory $CheckPressedCopyWith(
          CheckPressed value, $Res Function(CheckPressed) then) =
      _$CheckPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckPressedCopyWithImpl<$Res>
    extends _$InputAreaEventCopyWithImpl<$Res>
    implements $CheckPressedCopyWith<$Res> {
  _$CheckPressedCopyWithImpl(
      CheckPressed _value, $Res Function(CheckPressed) _then)
      : super(_value, (v) => _then(v as CheckPressed));

  @override
  CheckPressed get _value => super._value as CheckPressed;
}

/// @nodoc

class _$CheckPressed implements CheckPressed {
  const _$CheckPressed();

  @override
  String toString() {
    return 'InputAreaEvent.checkPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undoThrowPressed,
    required TResult Function() performThrowPressed,
    required TResult Function() checkPressed,
    required TResult Function() erasePressed,
    required TResult Function(int digit) digitPressed,
  }) {
    return checkPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undoThrowPressed,
    TResult Function()? performThrowPressed,
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
    required TResult Function(UndoThrowPressed value) undoThrowPressed,
    required TResult Function(PerformThrowPressed value) performThrowPressed,
    required TResult Function(CheckPressed value) checkPressed,
    required TResult Function(ErasePressed value) erasePressed,
    required TResult Function(DigitPressed value) digitPressed,
  }) {
    return checkPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(CheckPressed value)? checkPressed,
    TResult Function(ErasePressed value)? erasePressed,
    TResult Function(DigitPressed value)? digitPressed,
    required TResult orElse(),
  }) {
    if (checkPressed != null) {
      return checkPressed(this);
    }
    return orElse();
  }
}

abstract class CheckPressed implements InputAreaEvent {
  const factory CheckPressed() = _$CheckPressed;
}

/// @nodoc
abstract class $ErasePressedCopyWith<$Res> {
  factory $ErasePressedCopyWith(
          ErasePressed value, $Res Function(ErasePressed) then) =
      _$ErasePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErasePressedCopyWithImpl<$Res>
    extends _$InputAreaEventCopyWithImpl<$Res>
    implements $ErasePressedCopyWith<$Res> {
  _$ErasePressedCopyWithImpl(
      ErasePressed _value, $Res Function(ErasePressed) _then)
      : super(_value, (v) => _then(v as ErasePressed));

  @override
  ErasePressed get _value => super._value as ErasePressed;
}

/// @nodoc

class _$ErasePressed implements ErasePressed {
  const _$ErasePressed();

  @override
  String toString() {
    return 'InputAreaEvent.erasePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ErasePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undoThrowPressed,
    required TResult Function() performThrowPressed,
    required TResult Function() checkPressed,
    required TResult Function() erasePressed,
    required TResult Function(int digit) digitPressed,
  }) {
    return erasePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undoThrowPressed,
    TResult Function()? performThrowPressed,
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
    required TResult Function(UndoThrowPressed value) undoThrowPressed,
    required TResult Function(PerformThrowPressed value) performThrowPressed,
    required TResult Function(CheckPressed value) checkPressed,
    required TResult Function(ErasePressed value) erasePressed,
    required TResult Function(DigitPressed value) digitPressed,
  }) {
    return erasePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(CheckPressed value)? checkPressed,
    TResult Function(ErasePressed value)? erasePressed,
    TResult Function(DigitPressed value)? digitPressed,
    required TResult orElse(),
  }) {
    if (erasePressed != null) {
      return erasePressed(this);
    }
    return orElse();
  }
}

abstract class ErasePressed implements InputAreaEvent {
  const factory ErasePressed() = _$ErasePressed;
}

/// @nodoc
abstract class $DigitPressedCopyWith<$Res> {
  factory $DigitPressedCopyWith(
          DigitPressed value, $Res Function(DigitPressed) then) =
      _$DigitPressedCopyWithImpl<$Res>;
  $Res call({int digit});
}

/// @nodoc
class _$DigitPressedCopyWithImpl<$Res>
    extends _$InputAreaEventCopyWithImpl<$Res>
    implements $DigitPressedCopyWith<$Res> {
  _$DigitPressedCopyWithImpl(
      DigitPressed _value, $Res Function(DigitPressed) _then)
      : super(_value, (v) => _then(v as DigitPressed));

  @override
  DigitPressed get _value => super._value as DigitPressed;

  @override
  $Res call({
    Object? digit = freezed,
  }) {
    return _then(DigitPressed(
      digit: digit == freezed
          ? _value.digit
          : digit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DigitPressed implements DigitPressed {
  const _$DigitPressed({required this.digit});

  @override
  final int digit;

  @override
  String toString() {
    return 'InputAreaEvent.digitPressed(digit: $digit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DigitPressed &&
            (identical(other.digit, digit) ||
                const DeepCollectionEquality().equals(other.digit, digit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(digit);

  @JsonKey(ignore: true)
  @override
  $DigitPressedCopyWith<DigitPressed> get copyWith =>
      _$DigitPressedCopyWithImpl<DigitPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undoThrowPressed,
    required TResult Function() performThrowPressed,
    required TResult Function() checkPressed,
    required TResult Function() erasePressed,
    required TResult Function(int digit) digitPressed,
  }) {
    return digitPressed(digit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undoThrowPressed,
    TResult Function()? performThrowPressed,
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
    required TResult Function(UndoThrowPressed value) undoThrowPressed,
    required TResult Function(PerformThrowPressed value) performThrowPressed,
    required TResult Function(CheckPressed value) checkPressed,
    required TResult Function(ErasePressed value) erasePressed,
    required TResult Function(DigitPressed value) digitPressed,
  }) {
    return digitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UndoThrowPressed value)? undoThrowPressed,
    TResult Function(PerformThrowPressed value)? performThrowPressed,
    TResult Function(CheckPressed value)? checkPressed,
    TResult Function(ErasePressed value)? erasePressed,
    TResult Function(DigitPressed value)? digitPressed,
    required TResult orElse(),
  }) {
    if (digitPressed != null) {
      return digitPressed(this);
    }
    return orElse();
  }
}

abstract class DigitPressed implements InputAreaEvent {
  const factory DigitPressed({required int digit}) = _$DigitPressed;

  int get digit => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DigitPressedCopyWith<DigitPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InputAreaStateTearOff {
  const _$InputAreaStateTearOff();

  State call({required int input, required bool showCheckoutDetails}) {
    return State(
      input: input,
      showCheckoutDetails: showCheckoutDetails,
    );
  }
}

/// @nodoc
const $InputAreaState = _$InputAreaStateTearOff();

/// @nodoc
mixin _$InputAreaState {
  int get input => throw _privateConstructorUsedError;
  bool get showCheckoutDetails => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputAreaStateCopyWith<InputAreaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputAreaStateCopyWith<$Res> {
  factory $InputAreaStateCopyWith(
          InputAreaState value, $Res Function(InputAreaState) then) =
      _$InputAreaStateCopyWithImpl<$Res>;
  $Res call({int input, bool showCheckoutDetails});
}

/// @nodoc
class _$InputAreaStateCopyWithImpl<$Res>
    implements $InputAreaStateCopyWith<$Res> {
  _$InputAreaStateCopyWithImpl(this._value, this._then);

  final InputAreaState _value;
  // ignore: unused_field
  final $Res Function(InputAreaState) _then;

  @override
  $Res call({
    Object? input = freezed,
    Object? showCheckoutDetails = freezed,
  }) {
    return _then(_value.copyWith(
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as int,
      showCheckoutDetails: showCheckoutDetails == freezed
          ? _value.showCheckoutDetails
          : showCheckoutDetails // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $StateCopyWith<$Res> implements $InputAreaStateCopyWith<$Res> {
  factory $StateCopyWith(State value, $Res Function(State) then) =
      _$StateCopyWithImpl<$Res>;
  @override
  $Res call({int input, bool showCheckoutDetails});
}

/// @nodoc
class _$StateCopyWithImpl<$Res> extends _$InputAreaStateCopyWithImpl<$Res>
    implements $StateCopyWith<$Res> {
  _$StateCopyWithImpl(State _value, $Res Function(State) _then)
      : super(_value, (v) => _then(v as State));

  @override
  State get _value => super._value as State;

  @override
  $Res call({
    Object? input = freezed,
    Object? showCheckoutDetails = freezed,
  }) {
    return _then(State(
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as int,
      showCheckoutDetails: showCheckoutDetails == freezed
          ? _value.showCheckoutDetails
          : showCheckoutDetails // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$State implements State {
  const _$State({required this.input, required this.showCheckoutDetails});

  @override
  final int input;
  @override
  final bool showCheckoutDetails;

  @override
  String toString() {
    return 'InputAreaState(input: $input, showCheckoutDetails: $showCheckoutDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is State &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)) &&
            (identical(other.showCheckoutDetails, showCheckoutDetails) ||
                const DeepCollectionEquality()
                    .equals(other.showCheckoutDetails, showCheckoutDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(input) ^
      const DeepCollectionEquality().hash(showCheckoutDetails);

  @JsonKey(ignore: true)
  @override
  $StateCopyWith<State> get copyWith =>
      _$StateCopyWithImpl<State>(this, _$identity);
}

abstract class State implements InputAreaState {
  const factory State({required int input, required bool showCheckoutDetails}) =
      _$State;

  @override
  int get input => throw _privateConstructorUsedError;
  @override
  bool get showCheckoutDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $StateCopyWith<State> get copyWith => throw _privateConstructorUsedError;
}
