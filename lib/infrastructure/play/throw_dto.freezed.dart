// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'throw_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThrowDto _$ThrowDtoFromJson(Map<String, dynamic> json) {
  return _ThrowDto.fromJson(json);
}

/// @nodoc
class _$ThrowDtoTearOff {
  const _$ThrowDtoTearOff();

  _ThrowDto call(
      {@JsonKey(ignore: true) String? id,
      required int points,
      required int dartsThrown,
      required int dartsOnDouble}) {
    return _ThrowDto(
      id: id,
      points: points,
      dartsThrown: dartsThrown,
      dartsOnDouble: dartsOnDouble,
    );
  }

  ThrowDto fromJson(Map<String, Object> json) {
    return ThrowDto.fromJson(json);
  }
}

/// @nodoc
const $ThrowDto = _$ThrowDtoTearOff();

/// @nodoc
mixin _$ThrowDto {
  @JsonKey(ignore: true)
  String? get id =>
      throw _privateConstructorUsedError; // TODO ignore and nullable fix
  int get points => throw _privateConstructorUsedError;
  int get dartsThrown => throw _privateConstructorUsedError;
  int get dartsOnDouble => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThrowDtoCopyWith<ThrowDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThrowDtoCopyWith<$Res> {
  factory $ThrowDtoCopyWith(ThrowDto value, $Res Function(ThrowDto) then) =
      _$ThrowDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      int points,
      int dartsThrown,
      int dartsOnDouble});
}

/// @nodoc
class _$ThrowDtoCopyWithImpl<$Res> implements $ThrowDtoCopyWith<$Res> {
  _$ThrowDtoCopyWithImpl(this._value, this._then);

  final ThrowDto _value;
  // ignore: unused_field
  final $Res Function(ThrowDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? points = freezed,
    Object? dartsThrown = freezed,
    Object? dartsOnDouble = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$ThrowDtoCopyWith<$Res> implements $ThrowDtoCopyWith<$Res> {
  factory _$ThrowDtoCopyWith(_ThrowDto value, $Res Function(_ThrowDto) then) =
      __$ThrowDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      int points,
      int dartsThrown,
      int dartsOnDouble});
}

/// @nodoc
class __$ThrowDtoCopyWithImpl<$Res> extends _$ThrowDtoCopyWithImpl<$Res>
    implements _$ThrowDtoCopyWith<$Res> {
  __$ThrowDtoCopyWithImpl(_ThrowDto _value, $Res Function(_ThrowDto) _then)
      : super(_value, (v) => _then(v as _ThrowDto));

  @override
  _ThrowDto get _value => super._value as _ThrowDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? points = freezed,
    Object? dartsThrown = freezed,
    Object? dartsOnDouble = freezed,
  }) {
    return _then(_ThrowDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
@JsonSerializable()
class _$_ThrowDto extends _ThrowDto {
  const _$_ThrowDto(
      {@JsonKey(ignore: true) this.id,
      required this.points,
      required this.dartsThrown,
      required this.dartsOnDouble})
      : super._();

  factory _$_ThrowDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ThrowDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override // TODO ignore and nullable fix
  final int points;
  @override
  final int dartsThrown;
  @override
  final int dartsOnDouble;

  @override
  String toString() {
    return 'ThrowDto(id: $id, points: $points, dartsThrown: $dartsThrown, dartsOnDouble: $dartsOnDouble)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThrowDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(points) ^
      const DeepCollectionEquality().hash(dartsThrown) ^
      const DeepCollectionEquality().hash(dartsOnDouble);

  @JsonKey(ignore: true)
  @override
  _$ThrowDtoCopyWith<_ThrowDto> get copyWith =>
      __$ThrowDtoCopyWithImpl<_ThrowDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ThrowDtoToJson(this);
  }
}

abstract class _ThrowDto extends ThrowDto {
  const factory _ThrowDto(
      {@JsonKey(ignore: true) String? id,
      required int points,
      required int dartsThrown,
      required int dartsOnDouble}) = _$_ThrowDto;
  const _ThrowDto._() : super._();

  factory _ThrowDto.fromJson(Map<String, dynamic> json) = _$_ThrowDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override // TODO ignore and nullable fix
  int get points => throw _privateConstructorUsedError;
  @override
  int get dartsThrown => throw _privateConstructorUsedError;
  @override
  int get dartsOnDouble => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ThrowDtoCopyWith<_ThrowDto> get copyWith =>
      throw _privateConstructorUsedError;
}
