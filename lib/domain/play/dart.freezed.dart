// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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

  _Dart call({required UniqueId id, required int points}) {
    return _Dart(
      id: id,
      points: points,
    );
  }
}

/// @nodoc
const $Dart = _$DartTearOff();

/// @nodoc
mixin _$Dart {
  UniqueId get id => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DartCopyWith<Dart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartCopyWith<$Res> {
  factory $DartCopyWith(Dart value, $Res Function(Dart) then) =
      _$DartCopyWithImpl<$Res>;
  $Res call({UniqueId id, int points});
}

/// @nodoc
class _$DartCopyWithImpl<$Res> implements $DartCopyWith<$Res> {
  _$DartCopyWithImpl(this._value, this._then);

  final Dart _value;
  // ignore: unused_field
  final $Res Function(Dart) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DartCopyWith<$Res> implements $DartCopyWith<$Res> {
  factory _$DartCopyWith(_Dart value, $Res Function(_Dart) then) =
      __$DartCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, int points});
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
    Object? id = freezed,
    Object? points = freezed,
  }) {
    return _then(_Dart(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Dart implements _Dart {
  const _$_Dart({required this.id, required this.points});

  @override
  final UniqueId id;
  @override
  final int points;

  @override
  String toString() {
    return 'Dart(id: $id, points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Dart &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(points);

  @JsonKey(ignore: true)
  @override
  _$DartCopyWith<_Dart> get copyWith =>
      __$DartCopyWithImpl<_Dart>(this, _$identity);
}

abstract class _Dart implements Dart {
  const factory _Dart({required UniqueId id, required int points}) = _$_Dart;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  int get points => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DartCopyWith<_Dart> get copyWith => throw _privateConstructorUsedError;
}
