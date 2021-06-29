// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'throw.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ThrowTearOff {
  const _$ThrowTearOff();

  _Throw call(
      {required int points,
      required int dartsThrown,
      required int dartsOnDouble}) {
    return _Throw(
      points: points,
      dartsThrown: dartsThrown,
      dartsOnDouble: dartsOnDouble,
    );
  }
}

/// @nodoc
const $Throw = _$ThrowTearOff();

/// @nodoc
mixin _$Throw {
  int get points => throw _privateConstructorUsedError;
  int get dartsThrown => throw _privateConstructorUsedError;
  int get dartsOnDouble => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThrowCopyWith<Throw> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThrowCopyWith<$Res> {
  factory $ThrowCopyWith(Throw value, $Res Function(Throw) then) =
      _$ThrowCopyWithImpl<$Res>;
  $Res call({int points, int dartsThrown, int dartsOnDouble});
}

/// @nodoc
class _$ThrowCopyWithImpl<$Res> implements $ThrowCopyWith<$Res> {
  _$ThrowCopyWithImpl(this._value, this._then);

  final Throw _value;
  // ignore: unused_field
  final $Res Function(Throw) _then;

  @override
  $Res call({
    Object? points = freezed,
    Object? dartsThrown = freezed,
    Object? dartsOnDouble = freezed,
  }) {
    return _then(_value.copyWith(
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      dartsThrown: dartsThrown == freezed
          ? _value.dartsThrown
          : dartsThrown // ignore: cast_nullable_to_non_nullable
              as int,
      dartsOnDouble: dartsOnDouble == freezed
          ? _value.dartsOnDouble
          : dartsOnDouble // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ThrowCopyWith<$Res> implements $ThrowCopyWith<$Res> {
  factory _$ThrowCopyWith(_Throw value, $Res Function(_Throw) then) =
      __$ThrowCopyWithImpl<$Res>;
  @override
  $Res call({int points, int dartsThrown, int dartsOnDouble});
}

/// @nodoc
class __$ThrowCopyWithImpl<$Res> extends _$ThrowCopyWithImpl<$Res>
    implements _$ThrowCopyWith<$Res> {
  __$ThrowCopyWithImpl(_Throw _value, $Res Function(_Throw) _then)
      : super(_value, (v) => _then(v as _Throw));

  @override
  _Throw get _value => super._value as _Throw;

  @override
  $Res call({
    Object? points = freezed,
    Object? dartsThrown = freezed,
    Object? dartsOnDouble = freezed,
  }) {
    return _then(_Throw(
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      dartsThrown: dartsThrown == freezed
          ? _value.dartsThrown
          : dartsThrown // ignore: cast_nullable_to_non_nullable
              as int,
      dartsOnDouble: dartsOnDouble == freezed
          ? _value.dartsOnDouble
          : dartsOnDouble // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Throw implements _Throw {
  const _$_Throw(
      {required this.points,
      required this.dartsThrown,
      required this.dartsOnDouble});

  @override
  final int points;
  @override
  final int dartsThrown;
  @override
  final int dartsOnDouble;

  @override
  String toString() {
    return 'Throw(points: $points, dartsThrown: $dartsThrown, dartsOnDouble: $dartsOnDouble)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Throw &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)) &&
            (identical(other.dartsThrown, dartsThrown) ||
                const DeepCollectionEquality()
                    .equals(other.dartsThrown, dartsThrown)) &&
            (identical(other.dartsOnDouble, dartsOnDouble) ||
                const DeepCollectionEquality()
                    .equals(other.dartsOnDouble, dartsOnDouble)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(points) ^
      const DeepCollectionEquality().hash(dartsThrown) ^
      const DeepCollectionEquality().hash(dartsOnDouble);

  @JsonKey(ignore: true)
  @override
  _$ThrowCopyWith<_Throw> get copyWith =>
      __$ThrowCopyWithImpl<_Throw>(this, _$identity);
}

abstract class _Throw implements Throw {
  const factory _Throw(
      {required int points,
      required int dartsThrown,
      required int dartsOnDouble}) = _$_Throw;

  @override
  int get points => throw _privateConstructorUsedError;
  @override
  int get dartsThrown => throw _privateConstructorUsedError;
  @override
  int get dartsOnDouble => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ThrowCopyWith<_Throw> get copyWith => throw _privateConstructorUsedError;
}
