// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'key_board_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$KeyBoardStateTearOff {
  const _$KeyBoardStateTearOff();

  KeyBoardStateInitial initial() {
    return const KeyBoardStateInitial();
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
    required TResult Function(KeyBoardStateInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(KeyBoardStateInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KeyBoardStateInitial value)? initial,
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
abstract class $KeyBoardStateInitialCopyWith<$Res> {
  factory $KeyBoardStateInitialCopyWith(KeyBoardStateInitial value,
          $Res Function(KeyBoardStateInitial) then) =
      _$KeyBoardStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$KeyBoardStateInitialCopyWithImpl<$Res>
    extends _$KeyBoardStateCopyWithImpl<$Res>
    implements $KeyBoardStateInitialCopyWith<$Res> {
  _$KeyBoardStateInitialCopyWithImpl(
      KeyBoardStateInitial _value, $Res Function(KeyBoardStateInitial) _then)
      : super(_value, (v) => _then(v as KeyBoardStateInitial));

  @override
  KeyBoardStateInitial get _value => super._value as KeyBoardStateInitial;
}

/// @nodoc

class _$KeyBoardStateInitial implements KeyBoardStateInitial {
  const _$KeyBoardStateInitial();

  @override
  String toString() {
    return 'KeyBoardState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is KeyBoardStateInitial);
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
    required TResult Function(KeyBoardStateInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(KeyBoardStateInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KeyBoardStateInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class KeyBoardStateInitial implements KeyBoardState {
  const factory KeyBoardStateInitial() = _$KeyBoardStateInitial;
}
