// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SetTearOff {
  const _$SetTearOff();

  _Set call({required KtList<Leg> legs}) {
    return _Set(
      legs: legs,
    );
  }
}

/// @nodoc
const $Set = _$SetTearOff();

/// @nodoc
mixin _$Set {
  KtList<Leg> get legs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetCopyWith<Set> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetCopyWith<$Res> {
  factory $SetCopyWith(Set value, $Res Function(Set) then) =
      _$SetCopyWithImpl<$Res>;
  $Res call({KtList<Leg> legs});
}

/// @nodoc
class _$SetCopyWithImpl<$Res> implements $SetCopyWith<$Res> {
  _$SetCopyWithImpl(this._value, this._then);

  final Set _value;
  // ignore: unused_field
  final $Res Function(Set) _then;

  @override
  $Res call({
    Object? legs = freezed,
  }) {
    return _then(_value.copyWith(
      legs: legs == freezed
          ? _value.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as KtList<Leg>,
    ));
  }
}

/// @nodoc
abstract class _$SetCopyWith<$Res> implements $SetCopyWith<$Res> {
  factory _$SetCopyWith(_Set value, $Res Function(_Set) then) =
      __$SetCopyWithImpl<$Res>;
  @override
  $Res call({KtList<Leg> legs});
}

/// @nodoc
class __$SetCopyWithImpl<$Res> extends _$SetCopyWithImpl<$Res>
    implements _$SetCopyWith<$Res> {
  __$SetCopyWithImpl(_Set _value, $Res Function(_Set) _then)
      : super(_value, (v) => _then(v as _Set));

  @override
  _Set get _value => super._value as _Set;

  @override
  $Res call({
    Object? legs = freezed,
  }) {
    return _then(_Set(
      legs: legs == freezed
          ? _value.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as KtList<Leg>,
    ));
  }
}

/// @nodoc

class _$_Set implements _Set {
  const _$_Set({required this.legs});

  @override
  final KtList<Leg> legs;

  @override
  String toString() {
    return 'Set(legs: $legs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Set &&
            (identical(other.legs, legs) || other.legs == legs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, legs);

  @JsonKey(ignore: true)
  @override
  _$SetCopyWith<_Set> get copyWith =>
      __$SetCopyWithImpl<_Set>(this, _$identity);
}

abstract class _Set implements Set {
  const factory _Set({required KtList<Leg> legs}) = _$_Set;

  @override
  KtList<Leg> get legs;
  @override
  @JsonKey(ignore: true)
  _$SetCopyWith<_Set> get copyWith => throw _privateConstructorUsedError;
}
