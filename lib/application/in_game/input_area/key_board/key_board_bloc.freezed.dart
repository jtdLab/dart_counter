// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'key_board_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$KeyBoardEventTearOff {
  const _$KeyBoardEventTearOff();

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
const $KeyBoardEvent = _$KeyBoardEventTearOff();

/// @nodoc
mixin _$KeyBoardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkPressed,
    required TResult Function() erasePressed,
    required TResult Function(int digit) digitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkPressed,
    TResult Function()? erasePressed,
    TResult Function(int digit)? digitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPressed value) checkPressed,
    required TResult Function(ErasePressed value) erasePressed,
    required TResult Function(DigitPressed value) digitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPressed value)? checkPressed,
    TResult Function(ErasePressed value)? erasePressed,
    TResult Function(DigitPressed value)? digitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyBoardEventCopyWith<$Res> {
  factory $KeyBoardEventCopyWith(
          KeyBoardEvent value, $Res Function(KeyBoardEvent) then) =
      _$KeyBoardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$KeyBoardEventCopyWithImpl<$Res>
    implements $KeyBoardEventCopyWith<$Res> {
  _$KeyBoardEventCopyWithImpl(this._value, this._then);

  final KeyBoardEvent _value;
  // ignore: unused_field
  final $Res Function(KeyBoardEvent) _then;
}

/// @nodoc
abstract class $CheckPressedCopyWith<$Res> {
  factory $CheckPressedCopyWith(
          CheckPressed value, $Res Function(CheckPressed) then) =
      _$CheckPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckPressedCopyWithImpl<$Res> extends _$KeyBoardEventCopyWithImpl<$Res>
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
    return 'KeyBoardEvent.checkPressed()';
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
    required TResult Function() checkPressed,
    required TResult Function() erasePressed,
    required TResult Function(int digit) digitPressed,
  }) {
    return checkPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(CheckPressed value) checkPressed,
    required TResult Function(ErasePressed value) erasePressed,
    required TResult Function(DigitPressed value) digitPressed,
  }) {
    return checkPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class CheckPressed implements KeyBoardEvent {
  const factory CheckPressed() = _$CheckPressed;
}

/// @nodoc
abstract class $ErasePressedCopyWith<$Res> {
  factory $ErasePressedCopyWith(
          ErasePressed value, $Res Function(ErasePressed) then) =
      _$ErasePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErasePressedCopyWithImpl<$Res> extends _$KeyBoardEventCopyWithImpl<$Res>
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
    return 'KeyBoardEvent.erasePressed()';
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
    required TResult Function() checkPressed,
    required TResult Function() erasePressed,
    required TResult Function(int digit) digitPressed,
  }) {
    return erasePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(CheckPressed value) checkPressed,
    required TResult Function(ErasePressed value) erasePressed,
    required TResult Function(DigitPressed value) digitPressed,
  }) {
    return erasePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class ErasePressed implements KeyBoardEvent {
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
class _$DigitPressedCopyWithImpl<$Res> extends _$KeyBoardEventCopyWithImpl<$Res>
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
    return 'KeyBoardEvent.digitPressed(digit: $digit)';
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
    required TResult Function() checkPressed,
    required TResult Function() erasePressed,
    required TResult Function(int digit) digitPressed,
  }) {
    return digitPressed(digit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(CheckPressed value) checkPressed,
    required TResult Function(ErasePressed value) erasePressed,
    required TResult Function(DigitPressed value) digitPressed,
  }) {
    return digitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class DigitPressed implements KeyBoardEvent {
  const factory DigitPressed({required int digit}) = _$DigitPressed;

  int get digit => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DigitPressedCopyWith<DigitPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$KeyBoardStateTearOff {
  const _$KeyBoardStateTearOff();

  Initial initial() {
    return const Initial();
  }
}

/// @nodoc
const $KeyBoardState = _$KeyBoardStateTearOff();

/// @nodoc
mixin _$KeyBoardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
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
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyBoardStateCopyWith<$Res> {
  factory $KeyBoardStateCopyWith(
          KeyBoardState value, $Res Function(KeyBoardState) then) =
      _$KeyBoardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$KeyBoardStateCopyWithImpl<$Res>
    implements $KeyBoardStateCopyWith<$Res> {
  _$KeyBoardStateCopyWithImpl(this._value, this._then);

  final KeyBoardState _value;
  // ignore: unused_field
  final $Res Function(KeyBoardState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$KeyBoardStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'KeyBoardState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
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
    required TResult Function(Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements KeyBoardState {
  const factory Initial() = _$Initial;
}
