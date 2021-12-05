// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'standard_key_board_button_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StandardKeyBoardButtonStateTearOff {
  const _$StandardKeyBoardButtonStateTearOff();

  StandardKeyBoardButtonInitial initial({required bool disabled}) {
    return StandardKeyBoardButtonInitial(
      disabled: disabled,
    );
  }
}

/// @nodoc
const $StandardKeyBoardButtonState = _$StandardKeyBoardButtonStateTearOff();

/// @nodoc
mixin _$StandardKeyBoardButtonState {
  bool get disabled => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool disabled) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool disabled)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool disabled)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StandardKeyBoardButtonInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StandardKeyBoardButtonInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StandardKeyBoardButtonInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StandardKeyBoardButtonStateCopyWith<StandardKeyBoardButtonState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandardKeyBoardButtonStateCopyWith<$Res> {
  factory $StandardKeyBoardButtonStateCopyWith(
          StandardKeyBoardButtonState value,
          $Res Function(StandardKeyBoardButtonState) then) =
      _$StandardKeyBoardButtonStateCopyWithImpl<$Res>;
  $Res call({bool disabled});
}

/// @nodoc
class _$StandardKeyBoardButtonStateCopyWithImpl<$Res>
    implements $StandardKeyBoardButtonStateCopyWith<$Res> {
  _$StandardKeyBoardButtonStateCopyWithImpl(this._value, this._then);

  final StandardKeyBoardButtonState _value;
  // ignore: unused_field
  final $Res Function(StandardKeyBoardButtonState) _then;

  @override
  $Res call({
    Object? disabled = freezed,
  }) {
    return _then(_value.copyWith(
      disabled: disabled == freezed
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $StandardKeyBoardButtonInitialCopyWith<$Res>
    implements $StandardKeyBoardButtonStateCopyWith<$Res> {
  factory $StandardKeyBoardButtonInitialCopyWith(
          StandardKeyBoardButtonInitial value,
          $Res Function(StandardKeyBoardButtonInitial) then) =
      _$StandardKeyBoardButtonInitialCopyWithImpl<$Res>;
  @override
  $Res call({bool disabled});
}

/// @nodoc
class _$StandardKeyBoardButtonInitialCopyWithImpl<$Res>
    extends _$StandardKeyBoardButtonStateCopyWithImpl<$Res>
    implements $StandardKeyBoardButtonInitialCopyWith<$Res> {
  _$StandardKeyBoardButtonInitialCopyWithImpl(
      StandardKeyBoardButtonInitial _value,
      $Res Function(StandardKeyBoardButtonInitial) _then)
      : super(_value, (v) => _then(v as StandardKeyBoardButtonInitial));

  @override
  StandardKeyBoardButtonInitial get _value =>
      super._value as StandardKeyBoardButtonInitial;

  @override
  $Res call({
    Object? disabled = freezed,
  }) {
    return _then(StandardKeyBoardButtonInitial(
      disabled: disabled == freezed
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StandardKeyBoardButtonInitial implements StandardKeyBoardButtonInitial {
  const _$StandardKeyBoardButtonInitial({required this.disabled});

  @override
  final bool disabled;

  @override
  String toString() {
    return 'StandardKeyBoardButtonState.initial(disabled: $disabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StandardKeyBoardButtonInitial &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, disabled);

  @JsonKey(ignore: true)
  @override
  $StandardKeyBoardButtonInitialCopyWith<StandardKeyBoardButtonInitial>
      get copyWith => _$StandardKeyBoardButtonInitialCopyWithImpl<
          StandardKeyBoardButtonInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool disabled) initial,
  }) {
    return initial(disabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool disabled)? initial,
  }) {
    return initial?.call(disabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool disabled)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(disabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StandardKeyBoardButtonInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StandardKeyBoardButtonInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StandardKeyBoardButtonInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StandardKeyBoardButtonInitial
    implements StandardKeyBoardButtonState {
  const factory StandardKeyBoardButtonInitial({required bool disabled}) =
      _$StandardKeyBoardButtonInitial;

  @override
  bool get disabled;
  @override
  @JsonKey(ignore: true)
  $StandardKeyBoardButtonInitialCopyWith<StandardKeyBoardButtonInitial>
      get copyWith => throw _privateConstructorUsedError;
}
