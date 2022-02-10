// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DartTearOff {
  const _$DartTearOff();

  _Dart call({required DartType type, required int value}) {
    return _Dart(
      type: type,
      value: value,
    );
  }
}

/// @nodoc
const $Dart = _$DartTearOff();

/// @nodoc
mixin _$Dart {
  DartType get type => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DartCopyWith<Dart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartCopyWith<$Res> {
  factory $DartCopyWith(Dart value, $Res Function(Dart) then) =
      _$DartCopyWithImpl<$Res>;
  $Res call({DartType type, int value});
}

/// @nodoc
class _$DartCopyWithImpl<$Res> implements $DartCopyWith<$Res> {
  _$DartCopyWithImpl(this._value, this._then);

  final Dart _value;
  // ignore: unused_field
  final $Res Function(Dart) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$DartCopyWith<$Res> implements $DartCopyWith<$Res> {
  factory _$DartCopyWith(_Dart value, $Res Function(_Dart) then) =
      __$DartCopyWithImpl<$Res>;
  @override
  $Res call({DartType type, int value});
}

/// @nodoc
class __$DartCopyWithImpl<$Res> extends _$DartCopyWithImpl<$Res>
    implements _$DartCopyWith<$Res> {
  __$DartCopyWithImpl(_Dart _value, $Res Function(_Dart) _then)
      : super(_value, (v) => _then(v as _Dart));

  @override
  _Dart get _value => super._value as _Dart;

  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_Dart(
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

class _$_Dart extends _Dart {
  const _$_Dart({required this.type, required this.value}) : super._();

  @override
  final DartType type;
  @override
  final int value;

  @override
  String toString() {
    return 'Dart(type: $type, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Dart &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$DartCopyWith<_Dart> get copyWith =>
      __$DartCopyWithImpl<_Dart>(this, _$identity);
}

abstract class _Dart extends Dart {
  const factory _Dart({required DartType type, required int value}) = _$_Dart;
  const _Dart._() : super._();

  @override
  DartType get type;
  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$DartCopyWith<_Dart> get copyWith => throw _privateConstructorUsedError;
}
