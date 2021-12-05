// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detailed_key_board_button_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DetailedKeyBoardButtonStateTearOff {
  const _$DetailedKeyBoardButtonStateTearOff();

  DetailedKeyBoardButtonInitial initial(
      {required int value, required bool disabled}) {
    return DetailedKeyBoardButtonInitial(
      value: value,
      disabled: disabled,
    );
  }

  DetailedKeyBoardButtonFocused focused(
      {required DartType type, required int value}) {
    return DetailedKeyBoardButtonFocused(
      type: type,
      value: value,
    );
  }
}

/// @nodoc
const $DetailedKeyBoardButtonState = _$DetailedKeyBoardButtonStateTearOff();

/// @nodoc
mixin _$DetailedKeyBoardButtonState {
  int get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value, bool disabled) initial,
    required TResult Function(DartType type, int value) focused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int value, bool disabled)? initial,
    TResult Function(DartType type, int value)? focused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value, bool disabled)? initial,
    TResult Function(DartType type, int value)? focused,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailedKeyBoardButtonInitial value) initial,
    required TResult Function(DetailedKeyBoardButtonFocused value) focused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DetailedKeyBoardButtonInitial value)? initial,
    TResult Function(DetailedKeyBoardButtonFocused value)? focused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailedKeyBoardButtonInitial value)? initial,
    TResult Function(DetailedKeyBoardButtonFocused value)? focused,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedKeyBoardButtonStateCopyWith<DetailedKeyBoardButtonState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedKeyBoardButtonStateCopyWith<$Res> {
  factory $DetailedKeyBoardButtonStateCopyWith(
          DetailedKeyBoardButtonState value,
          $Res Function(DetailedKeyBoardButtonState) then) =
      _$DetailedKeyBoardButtonStateCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$DetailedKeyBoardButtonStateCopyWithImpl<$Res>
    implements $DetailedKeyBoardButtonStateCopyWith<$Res> {
  _$DetailedKeyBoardButtonStateCopyWithImpl(this._value, this._then);

  final DetailedKeyBoardButtonState _value;
  // ignore: unused_field
  final $Res Function(DetailedKeyBoardButtonState) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $DetailedKeyBoardButtonInitialCopyWith<$Res>
    implements $DetailedKeyBoardButtonStateCopyWith<$Res> {
  factory $DetailedKeyBoardButtonInitialCopyWith(
          DetailedKeyBoardButtonInitial value,
          $Res Function(DetailedKeyBoardButtonInitial) then) =
      _$DetailedKeyBoardButtonInitialCopyWithImpl<$Res>;
  @override
  $Res call({int value, bool disabled});
}

/// @nodoc
class _$DetailedKeyBoardButtonInitialCopyWithImpl<$Res>
    extends _$DetailedKeyBoardButtonStateCopyWithImpl<$Res>
    implements $DetailedKeyBoardButtonInitialCopyWith<$Res> {
  _$DetailedKeyBoardButtonInitialCopyWithImpl(
      DetailedKeyBoardButtonInitial _value,
      $Res Function(DetailedKeyBoardButtonInitial) _then)
      : super(_value, (v) => _then(v as DetailedKeyBoardButtonInitial));

  @override
  DetailedKeyBoardButtonInitial get _value =>
      super._value as DetailedKeyBoardButtonInitial;

  @override
  $Res call({
    Object? value = freezed,
    Object? disabled = freezed,
  }) {
    return _then(DetailedKeyBoardButtonInitial(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      disabled: disabled == freezed
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DetailedKeyBoardButtonInitial implements DetailedKeyBoardButtonInitial {
  const _$DetailedKeyBoardButtonInitial(
      {required this.value, required this.disabled});

  @override
  final int value;
  @override
  final bool disabled;

  @override
  String toString() {
    return 'DetailedKeyBoardButtonState.initial(value: $value, disabled: $disabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DetailedKeyBoardButtonInitial &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, disabled);

  @JsonKey(ignore: true)
  @override
  $DetailedKeyBoardButtonInitialCopyWith<DetailedKeyBoardButtonInitial>
      get copyWith => _$DetailedKeyBoardButtonInitialCopyWithImpl<
          DetailedKeyBoardButtonInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value, bool disabled) initial,
    required TResult Function(DartType type, int value) focused,
  }) {
    return initial(value, disabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int value, bool disabled)? initial,
    TResult Function(DartType type, int value)? focused,
  }) {
    return initial?.call(value, disabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value, bool disabled)? initial,
    TResult Function(DartType type, int value)? focused,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(value, disabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailedKeyBoardButtonInitial value) initial,
    required TResult Function(DetailedKeyBoardButtonFocused value) focused,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DetailedKeyBoardButtonInitial value)? initial,
    TResult Function(DetailedKeyBoardButtonFocused value)? focused,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailedKeyBoardButtonInitial value)? initial,
    TResult Function(DetailedKeyBoardButtonFocused value)? focused,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DetailedKeyBoardButtonInitial
    implements DetailedKeyBoardButtonState {
  const factory DetailedKeyBoardButtonInitial(
      {required int value,
      required bool disabled}) = _$DetailedKeyBoardButtonInitial;

  @override
  int get value;
  bool get disabled;
  @override
  @JsonKey(ignore: true)
  $DetailedKeyBoardButtonInitialCopyWith<DetailedKeyBoardButtonInitial>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedKeyBoardButtonFocusedCopyWith<$Res>
    implements $DetailedKeyBoardButtonStateCopyWith<$Res> {
  factory $DetailedKeyBoardButtonFocusedCopyWith(
          DetailedKeyBoardButtonFocused value,
          $Res Function(DetailedKeyBoardButtonFocused) then) =
      _$DetailedKeyBoardButtonFocusedCopyWithImpl<$Res>;
  @override
  $Res call({DartType type, int value});
}

/// @nodoc
class _$DetailedKeyBoardButtonFocusedCopyWithImpl<$Res>
    extends _$DetailedKeyBoardButtonStateCopyWithImpl<$Res>
    implements $DetailedKeyBoardButtonFocusedCopyWith<$Res> {
  _$DetailedKeyBoardButtonFocusedCopyWithImpl(
      DetailedKeyBoardButtonFocused _value,
      $Res Function(DetailedKeyBoardButtonFocused) _then)
      : super(_value, (v) => _then(v as DetailedKeyBoardButtonFocused));

  @override
  DetailedKeyBoardButtonFocused get _value =>
      super._value as DetailedKeyBoardButtonFocused;

  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(DetailedKeyBoardButtonFocused(
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

class _$DetailedKeyBoardButtonFocused implements DetailedKeyBoardButtonFocused {
  const _$DetailedKeyBoardButtonFocused(
      {required this.type, required this.value});

  @override
  final DartType type;
  @override
  final int value;

  @override
  String toString() {
    return 'DetailedKeyBoardButtonState.focused(type: $type, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DetailedKeyBoardButtonFocused &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  @JsonKey(ignore: true)
  @override
  $DetailedKeyBoardButtonFocusedCopyWith<DetailedKeyBoardButtonFocused>
      get copyWith => _$DetailedKeyBoardButtonFocusedCopyWithImpl<
          DetailedKeyBoardButtonFocused>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value, bool disabled) initial,
    required TResult Function(DartType type, int value) focused,
  }) {
    return focused(type, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int value, bool disabled)? initial,
    TResult Function(DartType type, int value)? focused,
  }) {
    return focused?.call(type, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value, bool disabled)? initial,
    TResult Function(DartType type, int value)? focused,
    required TResult orElse(),
  }) {
    if (focused != null) {
      return focused(type, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailedKeyBoardButtonInitial value) initial,
    required TResult Function(DetailedKeyBoardButtonFocused value) focused,
  }) {
    return focused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DetailedKeyBoardButtonInitial value)? initial,
    TResult Function(DetailedKeyBoardButtonFocused value)? focused,
  }) {
    return focused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailedKeyBoardButtonInitial value)? initial,
    TResult Function(DetailedKeyBoardButtonFocused value)? focused,
    required TResult orElse(),
  }) {
    if (focused != null) {
      return focused(this);
    }
    return orElse();
  }
}

abstract class DetailedKeyBoardButtonFocused
    implements DetailedKeyBoardButtonState {
  const factory DetailedKeyBoardButtonFocused(
      {required DartType type,
      required int value}) = _$DetailedKeyBoardButtonFocused;

  DartType get type;
  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  $DetailedKeyBoardButtonFocusedCopyWith<DetailedKeyBoardButtonFocused>
      get copyWith => throw _privateConstructorUsedError;
}
