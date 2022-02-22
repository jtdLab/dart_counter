// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'key_board_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$KeyBoardEventTearOff {
  const _$KeyBoardEventTearOff();

  Started started() {
    return const Started();
  }

  DigitPressed digitPressed({required int digit}) {
    return DigitPressed(
      digit: digit,
    );
  }

  EreasePressed ereasePressed() {
    return const EreasePressed();
  }

  CheckPressed checkPressed() {
    return const CheckPressed();
  }
}

/// @nodoc
const $KeyBoardEvent = _$KeyBoardEventTearOff();

/// @nodoc
mixin _$KeyBoardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int digit) digitPressed,
    required TResult Function() ereasePressed,
    required TResult Function() checkPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
    TResult Function()? checkPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
    TResult Function()? checkPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(DigitPressed value) digitPressed,
    required TResult Function(EreasePressed value) ereasePressed,
    required TResult Function(CheckPressed value) checkPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(DigitPressed value)? digitPressed,
    TResult Function(EreasePressed value)? ereasePressed,
    TResult Function(CheckPressed value)? checkPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(DigitPressed value)? digitPressed,
    TResult Function(EreasePressed value)? ereasePressed,
    TResult Function(CheckPressed value)? checkPressed,
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
abstract class $StartedCopyWith<$Res> {
  factory $StartedCopyWith(Started value, $Res Function(Started) then) =
      _$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartedCopyWithImpl<$Res> extends _$KeyBoardEventCopyWithImpl<$Res>
    implements $StartedCopyWith<$Res> {
  _$StartedCopyWithImpl(Started _value, $Res Function(Started) _then)
      : super(_value, (v) => _then(v as Started));

  @override
  Started get _value => super._value as Started;
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'KeyBoardEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int digit) digitPressed,
    required TResult Function() ereasePressed,
    required TResult Function() checkPressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
    TResult Function()? checkPressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
    TResult Function()? checkPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(DigitPressed value) digitPressed,
    required TResult Function(EreasePressed value) ereasePressed,
    required TResult Function(CheckPressed value) checkPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(DigitPressed value)? digitPressed,
    TResult Function(EreasePressed value)? ereasePressed,
    TResult Function(CheckPressed value)? checkPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(DigitPressed value)? digitPressed,
    TResult Function(EreasePressed value)? ereasePressed,
    TResult Function(CheckPressed value)? checkPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements KeyBoardEvent {
  const factory Started() = _$Started;
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
        (other.runtimeType == runtimeType &&
            other is DigitPressed &&
            const DeepCollectionEquality().equals(other.digit, digit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(digit));

  @JsonKey(ignore: true)
  @override
  $DigitPressedCopyWith<DigitPressed> get copyWith =>
      _$DigitPressedCopyWithImpl<DigitPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int digit) digitPressed,
    required TResult Function() ereasePressed,
    required TResult Function() checkPressed,
  }) {
    return digitPressed(digit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
    TResult Function()? checkPressed,
  }) {
    return digitPressed?.call(digit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
    TResult Function()? checkPressed,
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
    required TResult Function(Started value) started,
    required TResult Function(DigitPressed value) digitPressed,
    required TResult Function(EreasePressed value) ereasePressed,
    required TResult Function(CheckPressed value) checkPressed,
  }) {
    return digitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(DigitPressed value)? digitPressed,
    TResult Function(EreasePressed value)? ereasePressed,
    TResult Function(CheckPressed value)? checkPressed,
  }) {
    return digitPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(DigitPressed value)? digitPressed,
    TResult Function(EreasePressed value)? ereasePressed,
    TResult Function(CheckPressed value)? checkPressed,
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

  int get digit;
  @JsonKey(ignore: true)
  $DigitPressedCopyWith<DigitPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EreasePressedCopyWith<$Res> {
  factory $EreasePressedCopyWith(
          EreasePressed value, $Res Function(EreasePressed) then) =
      _$EreasePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$EreasePressedCopyWithImpl<$Res>
    extends _$KeyBoardEventCopyWithImpl<$Res>
    implements $EreasePressedCopyWith<$Res> {
  _$EreasePressedCopyWithImpl(
      EreasePressed _value, $Res Function(EreasePressed) _then)
      : super(_value, (v) => _then(v as EreasePressed));

  @override
  EreasePressed get _value => super._value as EreasePressed;
}

/// @nodoc

class _$EreasePressed implements EreasePressed {
  const _$EreasePressed();

  @override
  String toString() {
    return 'KeyBoardEvent.ereasePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EreasePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int digit) digitPressed,
    required TResult Function() ereasePressed,
    required TResult Function() checkPressed,
  }) {
    return ereasePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
    TResult Function()? checkPressed,
  }) {
    return ereasePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
    TResult Function()? checkPressed,
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
    required TResult Function(Started value) started,
    required TResult Function(DigitPressed value) digitPressed,
    required TResult Function(EreasePressed value) ereasePressed,
    required TResult Function(CheckPressed value) checkPressed,
  }) {
    return ereasePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(DigitPressed value)? digitPressed,
    TResult Function(EreasePressed value)? ereasePressed,
    TResult Function(CheckPressed value)? checkPressed,
  }) {
    return ereasePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(DigitPressed value)? digitPressed,
    TResult Function(EreasePressed value)? ereasePressed,
    TResult Function(CheckPressed value)? checkPressed,
    required TResult orElse(),
  }) {
    if (ereasePressed != null) {
      return ereasePressed(this);
    }
    return orElse();
  }
}

abstract class EreasePressed implements KeyBoardEvent {
  const factory EreasePressed() = _$EreasePressed;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CheckPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int digit) digitPressed,
    required TResult Function() ereasePressed,
    required TResult Function() checkPressed,
  }) {
    return checkPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
    TResult Function()? checkPressed,
  }) {
    return checkPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int digit)? digitPressed,
    TResult Function()? ereasePressed,
    TResult Function()? checkPressed,
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
    required TResult Function(Started value) started,
    required TResult Function(DigitPressed value) digitPressed,
    required TResult Function(EreasePressed value) ereasePressed,
    required TResult Function(CheckPressed value) checkPressed,
  }) {
    return checkPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(DigitPressed value)? digitPressed,
    TResult Function(EreasePressed value)? ereasePressed,
    TResult Function(CheckPressed value)? checkPressed,
  }) {
    return checkPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(DigitPressed value)? digitPressed,
    TResult Function(EreasePressed value)? ereasePressed,
    TResult Function(CheckPressed value)? checkPressed,
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
