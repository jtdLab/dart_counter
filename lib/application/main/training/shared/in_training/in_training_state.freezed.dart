// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'in_training_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InTrainingStateTearOff {
  const _$InTrainingStateTearOff();

  InTrainingInitial initial() {
    return const InTrainingInitial();
  }
}

/// @nodoc
const $InTrainingState = _$InTrainingStateTearOff();

/// @nodoc
mixin _$InTrainingState {
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
    required TResult Function(InTrainingInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InTrainingInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InTrainingInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InTrainingStateCopyWith<$Res> {
  factory $InTrainingStateCopyWith(
          InTrainingState value, $Res Function(InTrainingState) then) =
      _$InTrainingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InTrainingStateCopyWithImpl<$Res>
    implements $InTrainingStateCopyWith<$Res> {
  _$InTrainingStateCopyWithImpl(this._value, this._then);

  final InTrainingState _value;
  // ignore: unused_field
  final $Res Function(InTrainingState) _then;
}

/// @nodoc
abstract class $InTrainingInitialCopyWith<$Res> {
  factory $InTrainingInitialCopyWith(
          InTrainingInitial value, $Res Function(InTrainingInitial) then) =
      _$InTrainingInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InTrainingInitialCopyWithImpl<$Res>
    extends _$InTrainingStateCopyWithImpl<$Res>
    implements $InTrainingInitialCopyWith<$Res> {
  _$InTrainingInitialCopyWithImpl(
      InTrainingInitial _value, $Res Function(InTrainingInitial) _then)
      : super(_value, (v) => _then(v as InTrainingInitial));

  @override
  InTrainingInitial get _value => super._value as InTrainingInitial;
}

/// @nodoc

class _$InTrainingInitial implements InTrainingInitial {
  const _$InTrainingInitial();

  @override
  String toString() {
    return 'InTrainingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InTrainingInitial);
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
    required TResult Function(InTrainingInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InTrainingInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InTrainingInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InTrainingInitial implements InTrainingState {
  const factory InTrainingInitial() = _$InTrainingInitial;
}
